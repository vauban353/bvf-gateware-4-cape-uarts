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
|      9     |    n/a   | Not connected |
|     10     |    n/a   | SYSRESETn    |
|     11     |     B5   | MMUART_4 Rx  |
|     12     |     C5   | GPIO 9       |
|     13     |    D19   | MMUART_4 Tx  |
|     14     |     C6   | PWM channel 1 |
|     15     |     A5   | GPIO 7        |
|     16     |     A6   | PWM channel 2 |
|     17     |     C9   |              |
|     18     |    C10   |              |
|     19     |    A11   | MSS I2C0 SCL |
|     20     |    A10   | MSS I2C0 SDA |
|     21     |     B8   |              |
|     22     |     A8   |              |
|     23     |    C12   |              |
|     24     |    B12   |              |
|     25     |     B7   |              |
|     26     |     A7   |              |
|     27     |    D11   |              |
|     28     |    C11   |              |
|     29     |    F17   |              |
|     30     |    F16   |              |
|     31     |    E18   |              |
|     32     |    n/a   | VDD_ADC      |
|     33     |    n/a   | ADC channel 4 |
|     34     |    n/a   | GNDA_ADC     |
|     35     |    n/a   | ADC channel 6 |
|     36     |    n/a   | ADC channel 5 |
|     37     |    n/a   | ADC channel 2 |
|     38     |    n/a   | ADC channel 3 |
|     39     |    n/a   | ADC channel 0 |
|     40     |    n/a   | ADC channel 1 |
|     41     |    E15   | GPIO 0        |
|     42     |    E14   | PWM channel 0 |
|     43     |    n/a   | GND           |
|     44     |    n/a   | GND           |
|     45     |    n/a   | GND           |
|     46     |    n/a   | GND           |

### P8

| Header Pin | FPGA Pin | Usage      |
|------------|----------|------------|
|      1     |    n/a   | DGND       |
|      2     |    n/a   | DGND       |
|      3     |    V22   |            |
|      4     |    W22   |            |
|      5     |    V19   |            |
|      6     |    V20   |            |
|      7     |    V15   |            |
|      8     |    V14   |            |
|      9     |    V21   |            |
|     10     |    W21   |            |
|     11     |    Y21   |            |
|     12     |    Y20   |            |
|     13     |    B10   | PWM channel4 |
|     14     |     B9   |            |
|     15     |    T12   |  GPIO 6    |
|     16     |    U12   |  GPIO 5     |
|     17     |    W13   |  GPIO 2     |
|     18     |    T16   |  GPIO 11    |
|     19     |    W18   | PWM channel 3 |
|     20     |    R16   |           |
|     21     |   AA21   |           |
|     22     |   AA22   |           |
|     23     |   AB18   |           |
|     24     |   AA18   |           |
|     25     |    V17   |           |
|     26     |    A12   |  GPIO      |
|     27     |    A13   | GPIO (LCD group) |
|     28     |    B14   | GPIO (LCD group) |
|     29     |    B13   | GPIO (LCD group) |
|     30     |    D14   | GPIO (LCD group) |
|     31     |    D13   | GPIO (LCD group) |
|     32     |    B15   | GPIO (LCD group) |
|     33     |    A15   | GPIO (LCD group) |
|     34     |    C15   | GPIO (LCD group) |
|     35     |    C14   | GPIO (LCD group) |
|     36     |     B4   | GPIO (LCD group) |
|     37     |     C4   | GPIO (LCD group) |
|     38     |    C17   | GPIO (LCD group) |
|     39     |    B17   | GPIO (LCD group) |
|     40     |    B18   | GPIO (LCD group) |
|     41     |    A18   | GPIO (LCD group) |
|     42     |     D6   | GPIO (LCD group) |
|     43     |     D7   | GPIO (LCD group) |
|     44     |     D8   | GPIO (LCD group) |
|     45     |     D9   | GPIO (LCD group) |
|     46     |    D18   | GPIO (LCD group) |

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
