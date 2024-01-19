# The BeagleV Fire Bitstream Builder is released under the following software license:

#  Copyright 2021 Microchip Corporation.
#  SPDX-License-Identifier: MIT


#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to
#  deal in the Software without restriction, including without limitation the
#  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
#  sell copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:

#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.

#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
#  IN THE SOFTWARE.


# The BeagleV Fire Bitstream Builder is an evolution of the Microchip
# Bitstream Builder available from:
# https://github.com/polarfire-soc/icicle-kit-minimal-bring-up-design-bitstream-builder
# 



import argparse
import io
import os
import platform
import shutil
import zipfile

import git
import requests
import yaml
import sys
import subprocess

from generate_gateware_overlays import generate_gateware_overlays


def check_native_platform():
    if os.path.isfile('/.dockerenv'):
        return ""
    else:
        return " --native"


# Parse command line arguments and set tool locations
def parse_arguments():
    global libero
    global mss_configurator
    global softconsole_headless
    global programming
    global update

    global yaml_input_file

    # Initialize parser
    parser = argparse.ArgumentParser()

    parser.add_argument('Path',
                       metavar='path',
                       type=str,
                       help='Path to the YAML file describing the list of sources used to build the bitstream.')

    # Read arguments from command line
    args = parser.parse_args()
    yaml_input_file_arg = args.Path

    if not os.path.isfile(yaml_input_file_arg):
        print("\r\n!!! The path specified for the YAML input file does not exist !!!\r\n")
        parser.print_help()
        sys.exit()

    yaml_input_file = os.path.abspath(yaml_input_file_arg)

    # Tool call variables - these are the names of the tools to run which will be called from os.system.
    # Full paths could be used here instead of assuming tools are in PATH
    libero = "libero"
    mss_configurator = "pfsoc_mss"
    softconsole_headless = "softconsole-headless"

    update = False
    programming = False


# Checks to see if all of the required tools are installed and present in path, if a needed tool isn't available the script will exit
def check_tool_status_linux():
    if shutil.which("libero") is None:
        print("Error: libero not found in path")
        exit()

    if shutil.which("pfsoc_mss") is None:
        print("Error: polarfire soc mss configurator not found in path")
        exit()

    if os.environ.get('SC_INSTALL_DIR') is None:
        print(
            "Error: SC_INSTALL_DIR environment variable not set, please set this variable and point it to the "
            "appropriate SoftConsole installation directory to run this script")
        exit()

    if os.environ.get('FPGENPROG') is None:
        print(
            "Error: FPGENPROG environment variable not set, please set this variable and point it to the appropriate "
            "FPGENPROG executable to run this script")
        exit()

    path = os.environ["PATH"]

    if "riscv-unknown-elf-gcc" not in path:
        print(
            "The path to the RISC-V toolchain needs to be set in PATH to run this script")
        exit()


# Creates required folders and removes artifacts before beginning
def init_workspace():
    print("================================================================================")
    print("                              Initialize workspace")
    print("================================================================================\r\n", flush=True)

    # Create the sources folder to clone into if it doesn't exist (any existing source folders are handled in the
    # clone_sources function)
#    if not os.path.exists("./sources"):
#        os.mkdir("./sources")

    # Delete the work folder and its content if it exists.
    if os.path.exists("./work"):
        shutil.rmtree('./work')

    # Create each output subdirectory
    os.mkdir("./work")
    os.mkdir("./work/MSS")
    os.mkdir("./work/HSS")

    # Delete the bitstream folder if it exists to remove previously created bitstreams.
    if os.path.exists("./bitstream"):
        shutil.rmtree('./bitstream')

    # Create the bitstream folder structure. This is where the created bitstreams will be generated. There might be
    # multiple subdirectories there to provided different programming options.
    os.mkdir("./bitstream")
    os.mkdir("./bitstream/FlashProExpress")
    os.mkdir("./bitstream/LinuxProgramming")
    print("  The FlashPro Express bitstream programming job files will be stored in")
    print("  directory: ./bitstream/FlashProExpress\r\n", flush=True)


# clones the sources specified in the sources.yaml file
def clone_sources(source_list):
    print("================================================================================")
    print("                                 Clone sources")
    print("================================================================================\r\n", flush=True)

    source_directories = {}
    with open(source_list) as f:  # open the yaml file passed as an arg
        data = yaml.load(f, Loader=yaml.FullLoader)

        keys = data.keys()
        # each entry in the file is a source
        for source in keys:

            # Check if this is a git source
            if "git" in data.get(source).get("type"):

                # Check if we've already cloned the repo
                if os.path.exists(os.path.join("./sources", source)):
                    repo = git.Repo.init(os.path.join("./sources", source))  # set up repo
                    repo.git.checkout(data.get(source).get("branch"))  # checkout the branch from the yaml file
                    repo.remotes.origin.pull()  # pull changes

                # We don't already have the repo, clone it
                else:
                    repo = git.Repo.clone_from(data.get(source).get("link"), os.path.join("./sources", source),
                                               branch=data.get(source).get("branch"))

                # check if a specific commit from this branch is required
                if "commit" in data.get(source):
                    repo.git.checkout(data.get(source).get("commit"))  # check out a specific commit

            # Check if this is source is a url to a zip
            elif "zip" in data.get(source).get("type"):

                # if we already have a source of the same name delete it - can't check versions
                if os.path.exists(os.path.join("./sources", source)):
                    shutil.rmtree(os.path.join("./sources", source))
                r = requests.get(data.get(source).get("link"))  # download zip
                z = zipfile.ZipFile(io.BytesIO(r.content))  # extract zip
                z.extractall(os.path.join("./sources", source))  # save contents
            source_directories[source] = os.path.join("./sources",
                                                      source)  # Generate a dictionary of all of the sources that were cloned

        f.close()

    # return the dictionary of sources
    return source_directories


# Calls the MSS Configurator and generate an MSS configuration in a directory based on a cfg file
def make_mss_config(mss_configurator, config_file, output_dir):
    print("================================================================================")
    print("                          Generating MSS configuration")
    print("================================================================================\r\n", flush=True)
    os.system(mss_configurator + ' -GENERATE -CONFIGURATION_FILE:' + config_file + ' -OUTPUT_DIR:' + output_dir)


# Builds the HSS using a pre-defined config file using SoftConsole in headless mode
def make_hss(hss_source, yaml_input_file):
    print("================================================================================")
    print("                       Build Hart Software Services (HSS)")
    print("================================================================================\r\n", flush=True)

    # Retrieve build target info from YAML file
    with open(yaml_input_file) as f:  # open the yaml file passed as an arg
        data = yaml.load(f, Loader=yaml.FullLoader)
        try:
            target_board = data.get("HSS").get("board")
        except:
            target_board = "bvf"
        f.close()
    print("Target board: " + target_board)

    # Update XML in HSS project
    XML_file = "boards/" + target_board + "/soc_fpga_design/xml/PF_SOC_MSS_mss_cfg.xml"
    XML_file_abs_path = os.path.join(hss_source, XML_file)
    try:
        os.remove(XML_file_abs_path)
    except:
        print("HSS target board does not have a default MSS XML configuration - not a problem.", flush=True)

    shutil.copyfile("./work/MSS/PF_SOC_MSS_mss_cfg.xml", XML_file_abs_path)

    # Select HSS configuration to build
    def_config_file = os.path.join(hss_source, "boards/" + target_board + "/def_config")
    shutil.copyfile(def_config_file, os.path.join(hss_source, "./.config"))

    # Call HSS makefile
    initial_directory = os.getcwd()
    os.chdir(hss_source)
    make_command = "make BOARD=" + target_board
    os.system(make_command)
    os.chdir(initial_directory)

    # Check build was successful and copy the build artifact to the output directory
    generated_hex_file = "./sources/HSS/Default/bootmode1/hss-envm-wrapper-bm1-p0.hex"
    if os.path.isfile(generated_hex_file):
        shutil.copyfile(generated_hex_file, "./work/HSS/hss-envm-wrapper-bm1-p0.hex")
    else:
        print("!!! Error: Hart Soft Service build failed !!!", flush=True)
        exit()


def get_libero_script_args(source_list):
    libero_script_args = "NO_BUILD_ARGUMENT"
    with open(source_list) as f:  # open the yaml file passed as an arg
        data = yaml.load(f, Loader=yaml.FullLoader)
#        try:
        libero_script_args = data.get("gateware").get("build-args")
#        except:
#            libero_script_args = "NO_BUILD_ARGUMENT"
        f.close()

    if libero_script_args is None:
        libero_script_args = "NONE"
    return libero_script_args


def get_design_version(source_list):
    if "custom-fpga-design" in source_list:
        #
        # Ensure every CI gateware build uses a unique version number for gateware programming to
        # be successful (IAP only re-programs the FPGA if the Libero design version is different
        # from the one already programmed in the FPGA).
        # This is required for forked repos.
        #
        git_hash = subprocess.check_output(['git', 'rev-parse', '--short', 'HEAD'])
        git_hash_hex = git_hash.decode('ascii').strip("'")
        git_hash_dec = int(git_hash_hex, 16) % 65535
        design_version = str(git_hash_dec)
    else:
        with open(source_list) as f:  # open the yaml file passed as an arg
            data = yaml.load(f, Loader=yaml.FullLoader)
            unique_design_version = data.get("gateware").get("unique-design-version")
            f.close()
        if unique_design_version is None:
            unique_design_version = "65.53.5"

        udv_sl = unique_design_version.split(".")
        design_version = (int(udv_sl[0]) * 1000) + (int(udv_sl[1]) * 10) + int(udv_sl[2])

    print("design_version: ", design_version)
    return str(design_version)


# The function below assumes the current working directory is the gateware's git repository.
def get_git_hash():
    try:
        git_hash = subprocess.check_output(['git', 'log', "--pretty=format:'%H'", '-n', '1'])
    except subprocess.CalledProcessError as e:
        git_hash = 0
    return git_hash.decode('ascii').strip("'")


# Build the gateware's top level name from the build option directory name and the git hassh of the gateware's
# repository.
def get_top_level_name():
    git_hash = get_git_hash()
    top_level_name = str(os.path.splitext(os.path.basename(yaml_input_file))[0])
    top_level_name = top_level_name.replace('-', '_')
    top_level_name = top_level_name + '_' + git_hash
    if len(top_level_name) > 30:
        top_level_name = top_level_name[:30]
    top_level_name = top_level_name.upper()
    return top_level_name


# Calls Libero and runs a script
def call_libero(libero, script, script_args, project_location, hss_image_location, prog_export_path, top_level_name, design_version):
    libero_cmd = libero + " SCRIPT:" + script + " \"SCRIPT_ARGS: " + script_args + " PROJECT_LOCATION:" + project_location + " TOP_LEVEL_NAME:" + top_level_name + " HSS_IMAGE_PATH:" + hss_image_location + " PROG_EXPORT_PATH:" + prog_export_path + " DESIGN_VERSION:" + design_version + "\""
    print("Libero command: " + libero_cmd, flush=True)
    os.system(libero_cmd)


def generate_libero_project(libero, yaml_input_file):
    print("================================================================================")
    print("                            Generate Libero project")
    print("================================================================================\r\n", flush=True)
    # Execute the Libero TCL script used to create the Libero design
    initial_directory = os.getcwd()
    os.chdir("./sources/FPGA-design")
    project_location = os.path.join("..", "..", "work", "libero")
    script = os.path.join("..", "..", "sources", "FPGA-design", "BUILD_BVF_GATEWARE.tcl")

    script_args = get_libero_script_args(yaml_input_file)
    design_version = get_design_version(yaml_input_file)

    hss_image_location = os.path.join("..", "..", "work", "HSS", "hss-envm-wrapper-bm1-p0.hex")
    prog_export_path = os.path.join("..", "..")

    top_level_name = get_top_level_name()
    print("top level name: ", top_level_name)

    call_libero(libero, script, script_args, project_location, hss_image_location, prog_export_path, top_level_name, design_version)
    os.chdir(initial_directory)


def main():
    global libero
    global mss_configurator
    global softconsole_headless
    global programming

    parse_arguments()

    # This function will check if all of the required tools are present and quit if they aren't
    check_tool_status_linux()

    sources = {}

    # Bitstream building starts here - see individual functions for a description of their purpose
    init_workspace()

    sources = clone_sources(yaml_input_file)

    build_options_list = get_libero_script_args(yaml_input_file)
    generate_gateware_overlays(os.path.join(os.getcwd(), "bitstream", "LinuxProgramming"), build_options_list)

    mss_config_file_path = os.path.join(".", "sources", "MSS_Configuration", "MSS_Configuration.cfg")
    work_mss_dir = os.path.join("work", "MSS")
    make_mss_config(mss_configurator, mss_config_file_path, os.path.join(os.getcwd(), work_mss_dir))

    make_hss(sources["HSS"], yaml_input_file)

    generate_libero_project(libero, yaml_input_file)

    print("Finished", flush=True)


if __name__ == '__main__':
    main()
