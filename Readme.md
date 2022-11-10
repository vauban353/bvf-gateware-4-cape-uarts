# B-V-F

## Description

This repository can be used to generate a reference design for the B-V-F. This reference design will have the same or extended functionality compared to the pre-programmed FPGA design on the B-V-F.

A Libero SoC Tcl script is provided to generate the reference design using Libero SoC along with device specific I/O constraints.

This repository supports Libero SoC v2021.3, which is available for download [here](https://www.microsemi.com/product-directory/design-resources/1750-libero-soc#downloads).

## Using the reference design generation Tcl script

```
libero SCRIPT:B_V_F_REFERENCE_DESIGN.tcl "SCRIPT_ARGS: ONLY_CREATE_DESIGN M2_OPTION:NONE"
```

Create absolute minimal design:
```
libero SCRIPT:B_V_F_REFERENCE_DESIGN.tcl "SCRIPT_ARGS: ONLY_CREATE_DESIGN M2_OPTION:NONE CAPE_OPTION:NONE"
```




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

| Header Pin | FPGA Pin | Usage                        |
|------------|----------|------------------------------|
|      1     |    n/a   | DGND                         |
|      2     |    n/a   | DGND                         |
|      3     |    n/a   | VDD_3V3                      |
|      4     |    n/a   | VDD_3V3                      |
|      5     |    n/a   | VDD_5V                       |
|      6     |    n/a   | VDD_5V                       |
|      7     |    n/a   | SYS_5V                       |
|      8     |    n/a   | SYS_5V                       |
|      9     |    n/a   | Not connected                |
|     10     |    n/a   | SYSRESETn                    |
|     11     |     B5   | MMUART_4 Rx                  |
|     12     |     C5   | MSS GPIO_2[11] (@0x20122000) |
|     13     |    D19   | MMUART_4 Tx                  |
|     14     |     C6   | PWM channel 1  (@0x41000000) |
|     15     |     A5   | MSS GPIO_2[12] (@0x20122000) |
|     16     |     A6   | PWM channel 2  (@0x41000000) |
|     17     |     C9   | MSS GPIO_2[13] (@0x20122000) |
|     18     |    C10   | MSS GPIO_2[14] (@0x20122000) |
|     19     |    A11   | MSS I2C0 SCL                 |
|     20     |    A10   | MSS I2C0 SDA                 |
|     21     |     B8   | MSS GPIO_2[15] (@0x20122000) |
|     22     |     A8   | MSS GPIO_2[16] (@0x20122000) |
|     23     |    C12   | MSS GPIO_2[17] (@0x20122000) |
|     24     |    B12   | MSS GPIO_2[18] (@0x20122000) |
|     25     |     B7   | MSS GPIO_2[19] (@0x20122000) |
|     26     |     A7   | MSS GPIO_2[20] (@0x20122000) |
|     27     |    D11   | MSS GPIO_2[21] (@0x20122000) |
|     28     |    C11   | MSS GPIO_2[22] (@0x20122000) |
|     29     |    F17   | MSS GPIO_2[23] (@0x20122000) |
|     30     |    F16   | MSS GPIO_2[24] (@0x20122000) |
|     31     |    E18   | MSS GPIO_2[25] (@0x20122000) |
|     32     |    n/a   | VDD_ADC                      |
|     33     |    n/a   | ADC channel 4                |
|     34     |    n/a   | GNDA_ADC                     |
|     35     |    n/a   | ADC channel 6                |
|     36     |    n/a   | ADC channel 5                |
|     37     |    n/a   | ADC channel 2                |
|     38     |    n/a   | ADC channel 3                |
|     39     |    n/a   | ADC channel 0                |
|     40     |    n/a   | ADC channel 1                |
|     41     |    E15   | MSS GPIO_2[26] (@0x20122000) |
|     42     |    E14   | PWM channel 0  (@0x41000000) |
|     43     |    n/a   | GND                          |
|     44     |    n/a   | GND                          |
|     45     |    n/a   | GND                          |
|     46     |    n/a   | GND                          |

### P8

| Header Pin | FPGA Pin | Usage                                   |
|------------|----------|-----------------------------------------|
|      1     |    n/a   | DGND                                    |
|      2     |    n/a   | DGND                                    |
|      3     |    V22   | Base design FPGA GPIO[0]  (@0x40000000) |
|      4     |    W22   | Base design FPGA GPIO[1]  (@0x40000000) |
|      5     |    V19   | Base design FPGA GPIO[2]  (@0x40000000) |
|      6     |    V20   | Base design FPGA GPIO[3]  (@0x40000000) |
|      7     |    V15   | Base design FPGA GPIO[4]  (@0x40000000) |
|      8     |    V14   | Base design FPGA GPIO[5]  (@0x40000000) |
|      9     |    V21   | Base design FPGA GPIO[6]  (@0x40000000) |
|     10     |    W21   | Base design FPGA GPIO[7]  (@0x40000000) |
|     11     |    Y21   | Base design FPGA GPIO[8]  (@0x40000000) |
|     12     |    Y20   | Base design FPGA GPIO[9]  (@0x40000000) |
|     13     |    B10   | Base design FPGA GPIO[10] (@0x40000000) |
|     14     |     B9   | Base design FPGA GPIO[11] (@0x40000000) |
|     15     |    T12   | MSS GPIO_2[0]  (@0x20122000)            |
|     16     |    U12   | MSS GPIO_2[1]  (@0x20122000)            |
|     17     |    W13   | MSS GPIO_2[2]  (@0x20122000)            |
|     18     |    T16   | MSS GPIO_2[3]  (@0x20122000)            |
|     19     |    W18   | PWM channel 3  (@0x41000000)            |
|     20     |    R16   | MSS GPIO_2[4]  (@0x20122000)            |
|     21     |   AA21   | MSS GPIO_2[5]  (@0x20122000)            |
|     22     |   AA22   | MSS GPIO_2[6]  (@0x20122000)            |
|     23     |   AB18   | MSS GPIO_2[7]  (@0x20122000)            |
|     24     |   AA18   | MSS GPIO_2[8]  (@0x20122000)            |
|     25     |    V17   | MSS GPIO_2[9]  (@0x20122000)            |
|     26     |    A12   | MSS GPIO_2[10] (@0x20122000)            |
|     27     |    A13   | FPGA GPIO[18] (@0x41100000)             |
|     28     |    B14   | FPGA GPIO[19] (@0x41100000)             |
|     29     |    B13   | FPGA GPIO[16] (@0x41100000)             |
|     30     |    D14   | FPGA GPIO[17] (@0x41100000)             |
|     31     |    D13   | FPGA GPIO[0]  (@0x41100000)             |
|     32     |    B15   | FPGA GPIO[1]  (@0x41100000)             |
|     33     |    A15   | FPGA GPIO[2]  (@0x41100000)             |
|     34     |    C15   | FPGA GPIO[3]  (@0x41100000)             |
|     35     |    C14   | FPGA GPIO[4]  (@0x41100000)             |
|     36     |     B4   | FPGA GPIO[5]  (@0x41100000)             |
|     37     |     C4   | FPGA GPIO[6]  (@0x41100000)             |
|     38     |    C17   | FPGA GPIO[7]  (@0x41100000)             |
|     39     |    B17   | FPGA GPIO[8]  (@0x41100000)             |
|     40     |    B18   | FPGA GPIO[9]  (@0x41100000)             |
|     41     |    A18   | FPGA GPIO[10] (@0x41100000)             |
|     42     |     D6   | FPGA GPIO[11] (@0x41100000)             |
|     43     |     D7   | FPGA GPIO[12] (@0x41100000)             |
|     44     |     D8   | FPGA GPIO[13] (@0x41100000)             |
|     45     |     D9   | FPGA GPIO[14] (@0x41100000)             |
|     46     |    D18   | FPGA GPIO[15] (@0x41100000)             |

### J9: M.2 Interface

| Header Pin | FPGA Pin | Usage                                             |
|------------|----------|---------------------------------------------------|
|      1     |   n/a    |      GND                                          |
|      2     |   n/a    |      3.3V                                         |
|      3     |   n/a    |      not connected                                |
|      4     |   n/a    |      3.3V                                         |
|    5 to 6  |   n/a    |      not connected                                |
|      7     |   n/a    |      GND                                          |
|   8 to 17  |   n/a    |      not connected                                |
|     18     |   n/a    |      GND                                          |
|     19     |   n/a    |      not connected                                |
|     20     |   R14    |  M2_UART_WAKEn                                    |
|     21     |   n/a    |      not connected                                |
|     22     |   T13    |  M2_UART_RXD - MSS MMUART_1 through FPGA fabric   |
|  24 to 31  |   n/a    |      not connected                                |
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
|     47     |   n/a    |  M2_REFCLK_P - 100MHz                             |
|     48     |   n/a    |      not connected                                |
|     49     |   n/a    |  M2_REFCLK_N - 100MHz                             |
|     50     |   n/a    |  M2_32KHZ - connected to 32.687kHz oscillator     |
|     51     |   n/a    |      GND                                          |
|     52     |   E18    |  M2_PERST0n                                       |
|     53     |   W19    |  M2_CLKREQ0n                                      |
|     54     |   R15    |  W _DISABLE2n - pull-up to 3.3V                   |
|     55     |   R14    |  M2_PEWAKEn                                       |
|     56     |   U19    |  W _DISABLE1n - pull-up to 3.3V                   |
|     57     |   n/a    |      GND                                          |
|     58     |    B1    |  MSS I2C1 SDA                                     |
|     59     |   n/a    |      not connected                                |
|     60     |    C1    |  MSS I2C1 SCL                                     |
|     61     |   n/a    |      not connected                                |
|     62     |   U15    |  M2_I2C_ALTn                                      |
|     63     |   n/a    |      GND                                          |
|   64 to 68 |   n/a    |      not connected                                |
|     69     |   n/a    |      GND                                          |
|   70 to 71 |   n/a    |      not connected                                |
|     72     |   n/a    |      3.3V                                         |
|     73     |   n/a    |      not connected                                |
|     74     |   n/a    |      3.3V                                         |
|     75     |   n/a    |      GND                                          |
|     76     |   n/a    |      GND                                          |
|     77     |   n/a    |      GND                                          |
