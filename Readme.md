# B-V-F

## Description

This repository can be used to generate a reference design for the B-V-F. This reference design will have the same or extended functionality compared to the pre-programmed FPGA design on the B-V-F.

A Libero SoC Tcl script is provided to generate the reference design using Libero SoC along with device specific I/O constraints.

This repository supports Libero SoC v2021.3, which is available for download [here](https://www.microsemi.com/product-directory/design-resources/1750-libero-soc#downloads).

## Using the reference design generation Tcl script

#### Standard design generation

To generate the standard reference design which is capable of running the majority of bare metal example applications and run Linux&reg; the following flow can be used:

1. Clone or download the repository
2. Open Libero v2021.3
3. Open the execute script dialog (CTRL + U)
4. Execute the "B_V_F_REFERENCE_DESIGN.tcl" script
5. Configure the design if required
6. Run the Libero SoC design flow to program a device

## Headers

### P9

| Header Pin | FPGA Pin | Usage        |
|------------|----------|--------------|
|      1     |    n/a   | DGND         |
|      2     |    n/a   | DGND         |
|      3     |    n/a   | VDD_3V3      |
|      4     |    n/a   | VDD_3V3      |
|      5     |    n/a   | VDD_5V       |
|      6     |    n/a   | VDD_5V       |
|      7     |    n/a   | SYS_5V       |
|      8     |    n/a   | SYS_5V       |
|      9     |    n/a   | PWR_BUT      | -> TODO
|     10     |    n/a   | SYSRESETn    | -> TODO
|     11     |          |              |
|     12     |     C5   | GPIO         |
|     13     |          |              |
|     14     |          |              |
|     15     |     A5   | GPIO         |
|     16     |          |              |
|     17     |          |              |
|     18     |          |              |
|     19     |    E13   | MSS I2C0 SCL |
|     20     |    F13   | MSS I2C0 SDA |
|     21     |          |              |
|     22     |          |              |
|     23     |    H13   | GPIO         |
|     24     |          |              |
|     25     |    F15   | GPIO         |
|     26     |          |              |
|     27     |    G15   | GPIO         |
|     28     |          |              |
|     29     |          |              |
|     30     |    F16   | GPIO         |
|     31     |          |              |
|     32     |    n/a   | VDD_ADC      |
|     33     |          |              |
|     34     |    n/a   | GNDA_ADC     |
|     35     |          |              |
|     36     |          |              |
|     37     |          |              |
|     38     |          |              |
|     39     |          |              |
|     40     |   E15    | GPIO         |
|     41     |          |              |
|     42     |          |              |
|     43     |          |              |
|     44     |          |              |
|     45     |          |              |
|     46     |          |              |

### P8

| Header Pin | FPGA Pin | Usage      |
|------------|----------|------------|
|      1     |    n/a   | DGND       |
|      2     |    n/a   | DGND       |
|      3     |          |            |
|      4     |          |            |
|      5     |          |   |
|      6     |          |   |
|      7     |     D9   |  GPIO      |
|      8     |     B8   |  GPIO      |
|      9     |     A8   |  GPIO      |
|     10     |     C9   |  GPIO      |
|     11     |    C10   |  GPIO      |
|     12     |     B9   |  GPIO      |
|     13     |          |   |
|     14     |    F10   |  GPIO      |
|     15     |    E10   |  GPIO      |
|     16     |    A11   |  GPIO      |
|     17     |    A10   |  GPIO      |
|     18     |    D11   |  GPIO      |
|     19     |          |   |
|     20     |          |   |
|     21     |          |   |
|     22     |          |   |
|     23     |          |   |
|     24     |          |   |
|     25     |          |   |
|     26     |    A12   |  GPIO      |
|     27     |          |   |
|     28     |          |   |
|     29     |          |   |
|     30     |          |   |
|     31     |          |   |
|     32     |          |   |
|     33     |          |   |
|     34     |          |   |
|     35     |          |   |
|     36     |          |   |
|     37     |          |   |
|     38     |          |   |
|     39     |          |   |
|     40     |          |   |
|     41     |          |   |
|     42     |          |   |
|     43     |          |   |
|     44     |          |   |
|     45     |          |   |
|     46     |          |   |

### J9: M.2 Interface

| Header Pin | FPGA Pin | Usage                                             |
|------------|----------|---------------------------------------------------|
|      1     |   n/a    |      GND                                          |
|      2     |   n/a    |      3.3V                                         |
|      3     |   n/a    |  USB PHY                                          |
|      4     |   n/a    |      3.3V                                         |
|      5     |   n/a    |  USB PHY                                          |
|      6     |   n/a    |      not connected                                |
|      7     |   n/a    |      GND                                          |
|      8     |   U19    |  M2_PCM_CLK                                       |
|      9     |   n/a    |      not connected                                |
|     10     |   T16    |  M2_PCM_SYNC                                      |
|     11     |   n/a    |      not connected                                |
|     12     |   T17    |  M2_PCM_IN                                        |
|     13     |   n/a    |      not connected                                |
|     14     |   U17    |  M2_PCM_OUT                                       |
|     15     |   n/a    |      not connected                                |
|     16     |   n/a    |      not connected                                |
|     17     |   n/a    |      not connected                                |
|     18     |   n/a    |      GND                                          |
|     19     |   n/a    |      not connected                                |
|     20     |   T15    |  M2_UART_WAKEn                                    |
|     21     |   n/a    |      not connected                                |
|     22     |   T13    |  M2_UART_RXD - MSS MMUART_1 through FPGA fabric   |
|     23     |   n/a    |      not connected                                |
|  24 to 31  |   n/a    |      ---                                          |
|     32     |   R12    |  M2_UART_TXD - MSS MMUART_1 through FPGA fabric   |
|     33     |   n/a    |      GND                                          |
|     34     |   U14    |  M2_UART_CTS - MSS MMUART_1 through FPGA fabric   |
|     35     |   F22    |  M2_PET0_P                                        |
|     36     |   U13    |  M2_UART_RTS - MSS MMUART_1 through FPGA fabric   |
|     37     |   F21    |  M2_PET0_N                                        |
|     38     |   n/a    |      not connected                                |
|     39     |   n/a    |      GND                                          |
|     40     |   n/a    |      not connected                                |
|     41     |   G20    |  M2_PER0_P                                        |
|     42     |   n/a    |      not connected                                |
|     43     |   G19    |  M2_PER0_N                                        |
|     44     |   n/a    |      not connected                                |
|     45     |   n/a    |      GND                                          |
|     46     |   n/a    |      not connected                                |
|     47     |   G17    |  M2_REFCLK_P                                      |
|     48     |   n/a    |      not connected                                |
|     49     |   H17    |  M2_REFCLK_N                                      |
|     50     |   n/a    |  M2_32KHZ - connected to 32.687kHz oscillator     |
|     51     |   n/a    |      GND                                          |
|     52     |   E18    |  M2_PERST0n                                       |
|     53     |   D18    |  M2_CLKREQ0n                                      |
|     54     |   R15    |  W _DISABLE2n - pull-up to 3.3V                   |
|     55     |   R14    |  M2_PEW AKEn                                      |
|     56     |   R16    |  W _DISABLE1n - pull-up to 3.3V                   |
|     57     |   n/a    |      GND                                          |
|     58     |    B1    |  MSS I2C1 SDA                                     |
|     59     |   H22    |  M2_PET1_P                                        |
|     60     |    C1    |  MSS I2C1 SCL                                     |
|     61     |   H21    |  M2_PET1_N                                        |
|     62     |   U15    |  M2_I2C_ALTn                                      |
|     63     |   n/a    |      GND                                          |
|     64     |   n/a    |      not connected                                |
|     65     |   K22    |  M2_PER1_P                                        |
|     66     |   n/a    |      not connected                                |
|     67     |   K21    |  M2_PER1_N                                        |
|     68     |   n/a    |      not connected                                |
|     69     |   n/a    |      GND                                          |
|     70     |   n/a    |      not connected                                |
|     71     |   n/a    |      not connected                                |
|     72     |   n/a    |      3.3V                                         |
|     73     |   n/a    |      not connected                                |
|     74     |   n/a    |      3.3V                                         |
|     75     |   n/a    |      GND                                          |
|     76     |   n/a    |      GND                                          |
|     77     |   n/a    |      GND                                          |
