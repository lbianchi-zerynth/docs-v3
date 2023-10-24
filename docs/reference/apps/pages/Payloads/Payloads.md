# Payloads

This section describes the standard payloads that should be sent from the device, in order for the applications to work correctly.

We will analyse the different types of machines available, and for each type, we will define a standard payload.

The following payload types are already available:
- **Data**, which is the recurring payload sent by the device to monitor the machine;
- **Status**, which is the payload informing the platform of a status change in the machine;
- **Input and output lines status**, which is used for the cabinets to inform the platform of a status change in the lines;
- **Threshold Alarm**, whch informs the platform of one or more alarms triggered by a threshold;
- **Digital Alarm**, which informs the platform of one or more alarms triggered by a digital signal.

To know more about machine types, refer to the Knowledge Base.

## Production Machine

For a Production Machine, the following Zerynth Apps require the standard payloads:
- **Home Page**;
- **Machine Monitoring**, in the Machines section;
- **Production Insights**;
- **Maintenance**;
- **Reports**;
- **Rules**.

### Data

| TAG | Payload key |     Payload Value     |        Value type        | Notes                                                                                                                                                                                                                          |
|:---:|:-----------:|:---------------------:|:------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `d` |    `ts`     |    Unix Timestamp     | Unix Timestamp (integer) | Timestamp for the sampling period. <br/><br/>Seconds since epoch.                                                                                                                                                              |
| `d` |    `app`    |        "prod"         |          string          | App type. <br/><br/>The value is the “prod” constant.                                                                                                                                                                          |
| `d` |  `p_stats`  | [p_avg, p_min, p_max] |  [float, float, float]   | Power values in the acquisition period. <br/>p_avg: arithmetic average. <br/>p_min: minimum. <br/>p_max: maximum. <br/><br/>Measured in Watts (W).                                                                             |
| `d` |     `e`     |   [p_avg * period]    |         [float]          | Average energy consumption in the acquisition period. <br/><br/>Measured in Watt-hours (Wh).                                                                                                                                   |
| `d` |     `S`     |         [0-1]         |        [integer]         | Current status (Idle/Working). <br/>0: Idle <br/>1: Working                                                                                                                                                                    |
| `d` |     `T`     |       [T0, T1]        |      [float, float]      | Time spent in each status "S" during the period. The list length is the number of values "S" can take. <br/><br/>The integer part indicates the seconds, and the fractional part indicates the microseconds.                   |
| `d` |     `A`     |    [0-1, 0-1, ...]    | [integer, integer, ...]  | Threshold Alarms status. Each element is an alarm by threshold defined by the configurator. More than one Alarm at a time can be active. <br/>0: Alarm off <br/>1: Alarm on                                                    |
| `d` |    `TA`     |    [TA0, TA1, ...]    |   [float, float, ...]    | Time spent in each Threshold Alarm status “A” during the period. The list length is the number of alarms defined in "A". <br/><br/>The integer part indicates the seconds, and the fractional part indicates the microseconds. |
| `d` |    `Ad`     |         [0-1]         |        [integer]         | Digital Alarm status. The element is a digital alarm defined by the configurator. <br/>0: Alarm off <br/>1: Alarm on                                                                                                           |
| `d` |    `TAd`    |        [TAd0]         |         [float]          | Time spent in the Digital Alarm status "Ad" during the period. <br/><br/>The integer part indicates the seconds, and the fractional part indicates the microseconds.                                                           |
| `d` |     `I`     |     [I_ok, I_ko]      |    [integer, integer]    | Number of "OK" and "KO" items counted in the acquisition period. <br/>OK: conforming item <br/>KO: non conforming item                                                                                                         |
| `d` | `p_status`  |   [p_avg0, p_avg1]    |      [float, float]      | Average power used for each status "S" during the acquisition period. <br/><br/>Measured in Watts (W).                                                                                                                         |
| `d` | `e_status`  |       [e0, e1]        |      [float, float]      | Energy consumed for each status "S" during the acquisition period. <br/><br/>Measured in Watt-hours (Wh).                                                                                                                      |

### Status

| TAG | Payload key | Payload Value  | Value type | Notes                                                        |
|:---:|:-----------:|:--------------:|:----------:|:-------------------------------------------------------------|
| `s` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.       |
| `s` |     `S`     |     [0-1]      | [integer]  | Current status (Idle/Working). <br/>0: Idle <br/>1: Working  |

### Threshold Alarm

| TAG | Payload key |  Payload Value  |       Value type        | Notes                                                                                                                                                                                                                                         |
|:---:|:-----------:|:---------------:|:-----------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `a` |    `ts`     | Unix Timestamp  |         integer         | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                                                                                                        |
| `a` |     `A`     | [0-1, 0-1, ...] | [integer, integer, ...] | Threshold Alarms status. Each element is an alarm by threshold defined by the configurator. More than one Alarm at a time can be active. <br/>0: Alarm off <br/>1: Alarm on <br/><br/>The length of the list is the same as the data payload. |

### Digital Alarm

| TAG  | Payload key | Payload Value  | Value type | Notes                                                                                                                |
|:----:|:-----------:|:--------------:|:----------:|:---------------------------------------------------------------------------------------------------------------------|
| `ad` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.                                                               |
| `ad` |     `A`     |     [0-1]      | [integer]  | Digital Alarm status. The element is a digital alarm defined by the configurator. <br/>0: Alarm off <br/>1: Alarm on |

## Auxiliary Machine

For an Auxiliary Machine, the following Zerynth Apps require the standard payloads:
- **Home Page**;
- **Machine Monitoring**, in the Machines section;
- **Machine Control**;
- **Maintenance**;
- **Reports**;
- **Rules**.

### Data

| TAG  | Payload key |     Payload Value     |        Value type        | Notes                                                                                                                                                                                                                          |
|:----:|:-----------:|:---------------------:|:------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `d1` |    	`ts`    |    Unix Timestamp     | Unix Timestamp (integer) | Timestamp for the sampling period. <br/><br/>Seconds since epoch.                                                                                                                                                              |
| `d1` |    `app`    |        "mmon"         |          string          | App type. <br/><br/>The value is the “mmon” constant.                                                                                                                                                                          |
| `d1` |  `p_stats`  | [p_avg, p_min, p_max] |  [float, float, float]   | Power values in the acquisition period. <br/>p_avg: arithmetic average. <br/>p_min: minimum. <br/>p_max: maximum. <br/><br/>Measured in Watts (W).                                                                             |
| `d1` |     `e`     |   [p_avg * period]    |         [float]          | Average energy consumption in the acquisition period. <br/><br/>Measured in Watt-hours (Wh).                                                                                                                                   |
| `d1` |     `S`     |         [0-1]         |        [integer]         | Current status (Idle/Working). <br/>0: Idle <br/>1: Working                                                                                                                                                                    |
| `d1` |     `T`     |       [T0, T1]        |      [float, float]      | Time spent in each status "S" during the period. The list length is the number of values "S" can take. <br/><br/>The integer part indicates the seconds, and the fractional part indicates the microseconds.                   |
| `d1` |     `A`     |    [0-1, 0-1, ...]    | [integer, integer, ...]  | Threshold Alarms status. Each element is an alarm by threshold defined by the configurator. More than one Alarm at a time can be active. <br/>0: Alarm off <br/>1: Alarm on                                                    |  
| `d1` |    `TA`     |    [TA0, TA1, ...]    |   [float, float, ...]    | Time spent in each Threshold Alarm status “A” during the period. The list length is the number of alarms defined in "A". <br/><br/>The integer part indicates the seconds, and the fractional part indicates the microseconds. |
| `d1` |    `Ad`     |         [0-1]         |        [integer]         | Digital Alarm status. The element is a digital alarm defined by the configurator. <br/>0: Alarm off <br/>1: Alarm on                                                                                                           |
| `d1` |    `TAd`    |        [TAd0]         |         [float]          | Time spent in the Digital Alarm status "Ad" during the period. <br/><br/>The integer part indicates the seconds, and the fractional part indicates the microseconds.                                                           |
| `d1` | `p_status`  |   [p_avg0, p_avg1]    |      [float, float]      | Average power used for each status "S" during the acquisition period. <br/><br/>Measured in Watts (W).                                                                                                                         |
| `d1` | `e_status`  |       [e0, e1]        |      [float, float]      | Energy consumed for each status "S" during the acquisition period. <br/><br/>Measured in Watt-hours (Wh).                                                                                                                      |

### Status

| TAG | Payload key | Payload Value  | Value type | Notes                                                        |
|:---:|:-----------:|:--------------:|:----------:|:-------------------------------------------------------------|
| `s` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.       |
| `s` |     `S`     |     [0-1]      | [integer]  | Current status (Idle/Working). <br/>0: Idle <br/>1: Working  |

### Threshold Alarm

| TAG | Payload key |  Payload Value  |       Value type        | Notes                                                                                                                                                                                                                                         |
|:---:|:-----------:|:---------------:|:-----------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `a` |    `ts`     | Unix Timestamp  |         integer         | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                                                                                                        |
| `a` |     `A`     | [0-1, 0-1, ...] | [integer, integer, ...] | Threshold Alarms status. Each element is an alarm by threshold defined by the configurator. More than one Alarm at a time can be active. <br/>0: Alarm off <br/>1: Alarm on <br/><br/>The length of the list is the same as the data payload. |

### Digital Alarm

| TAG  | Payload key | Payload Value  | Value type | Notes                                                                                                                |
|:----:|:-----------:|:--------------:|:----------:|:---------------------------------------------------------------------------------------------------------------------|
| `ad` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.                                                               |
| `ad` |     `A`     |     [0-1]      | [integer]  | Digital Alarm status. The element is a digital alarm defined by the configurator. <br/>0: Alarm off <br/>1: Alarm on |

## Electrical Panel

For an Electrical Panel, the following Zerynth Apps require the standard payloads:
- **Home Page**;
- **Machine Monitoring**, in the Electrical panels section;
- **Maintenance**;
- **Reports**;
- **Rules**.

### Data

| TAG  | Payload key |                                                   Payload Value                                                   |                                       Value type                                        | Notes                                                                                                                                                                                                                                                                                                              |
|:----:|:-----------:|:-----------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `d1` |    	`ts`    |                                                  Unix Timestamp                                                   |                                Unix Timestamp (integer)                                 | Timestamp for the sampling period. <br/><br/>Seconds since epoch.                                                                                                                                                                                                                                                  |
| `d1` |    `app`    |                                                      "pcab"                                                       |                                         string                                          | App type. <br/><br/>The value is the “pcab” constant.                                                                                                                                                                                                                                                              |
| `d1` |    `PIS`    | [[p0_in_avg, p0_in_min, p0_in_max],<br/>[p1_in_avg, p1_in_min, p1_in_max],<br/>[p2_in_avg, p2_in_min, p2_in_max]] |      [[float, float, float],<br/>[float, float, float],<br/>[float, float, float]]      | Power values in the acquisition period for input three phase lines. <br/><br/>pN_in_avg: arithmetic average <br/>pN_in_min: minimum <br/>pN_in_max: maximum <br/>N=0-2 <br/><br/>Measured in Watts (W).                                                                                                            |
| `d1` |    `POS`    |             [[p0_out_avg, p0_out_min, p0_out_max],<br/>[p1_out_avg, p1_out_min, p1_out_max],<br/>...]             |               [[float, float, float],<br/>[float, float, float],<br/>...]               | Power values in the acquisition period for output three phase lines. The list value for a not monitored line is 'None'. <br/><br/>pN_out_avg: arithmetic average <br/>pN_out_min: minimum <br/>pN_out_max: maximum <br/>N=0-4 or N=0-8 <br/><br/>Measured in Watts (W).                                            |
| `d1` |    `EOS`    |                            [[p0_out_avg * period],<br/>[p1_out_avg * period],<br/>...]                            |                             [[float],<br/>[float],<br/>...]                             | Energy values in the acquisition period for output three phase lines. The list value for a not monitored line is 'None'. <br/><br/>N=0-4 or N=0-8 <br/><br/>Measured in Watt-hours (Wh).                                                                                                                           |
| `d1` |     `S`     |                                                       [0-1]                                                       |                                        [integer]                                        | Current status (Disconnected/Working). <br/>0: Disconnected (not every input line is working) <br/>1: Working (every input line is working)                                                                                                                                                                        |
| `d1` |    `SI`     |                                                  [SI0, SI1, SI2]                                                  |                               [integer, integer, integer]                               | Describes the status of the three input lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Working (Px >= 5%)                                                                                                                          |
| `d1` |    `Sx`     |                                                   [S0, S1, ...]                                                   |                                 [integer, integer, ...]                                 | Describes the status of the output lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Low (5% < Px < 30%) <br/>2: Medium (30% < Px < 70%) <br/>3: High (70% < Px < 100%) <br/>4: Critical (Px >= 100%)                                 |
| `d1` |    `ExS`    |                   [[E0_D, E0_L, E0_M, E0_H, E0_C],<br/>[E1_D, E1_L, E1_M, E1_H, E1_C],<br/>...]                   | [[float, float, float, float, float],<br/>[float, float, float, float, float],<br/>...] | Energy consumed for each status "Sx" during the acquisition period. The sum of states of each line is equal to the EOS value for the same line. <br/>The length of the arrays is the amount of lines (EOS) multiplied by the possible states (Sx). <br/><br/>N=0-4 or N=0-8 <br/><br/>Measured in Watt-hours (Wh). |

### Status

| TAG | Payload key | Payload Value  | Value type | Notes                                                                                                                                                      |
|:---:|:-----------:|:--------------:|:----------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| `s` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                     |
| `s` |     `S`     |     [0-1]      | [integer]  | Current status of the cabinet (Disconnected/Working). <br/>0: Disconnected (not every input line is working) <br/>1: Working (every input line is working) |

### Input line status

| TAG | Payload key |  Payload Value   |         Value type          | Notes                                                                                                                                                                                     |
|:---:|:-----------:|:----------------:|:---------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `s` |    `ts`     |  Unix Timestamp  |           integer           | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                                                    |
| `s` |    `SI`     | [SI0, SI1, SI2]  | [integer, integer, integer] | Describes the status of the three input lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Working (Px >= 5%) |

### Output line status

| TAG | Payload key |  Payload Value  |        Value type        | Notes                                                                                                                                                                                                                                                                              |
|:---:|:-----------:|:---------------:|:------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `s` |    `ts`     | Unix Timestamp  |         integer          | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                                                                                                                                             |
| `s` |    `Sx`     | [So0, So1, ...] | [integer, integer, ...]  | Describes the status of the output lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Low (5% < Px < 30%) <br/>2: Medium (30% < Px < 70%) <br/>3: High (70% < Px < 100%) <br/>4: Critical (Px >= 100%) |

### Threshold Alarm

| TAG | Payload key | Payload Value  | Value type | Notes                                                              |
|:---:|:-----------:|:--------------:|:----------:|:-------------------------------------------------------------------|
| `a` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.             |
| `a` |     `A`     |     [0-1]      | [integer]  | The alarm is triggered if the cabinet is absorbing more than 100%. |

## Electrical Panel with Advanced Power Consumption Analyzer

For an Electrical Panel with Advanced Power Consumption Analyzer, the following Zerynth Apps require the standard payloads:
- **Home Page**;
- **Machine Monitoring**, in the Electrical panels section;
- **Maintenance**;
- **Reports**;
- **Rules**.

### Data

| TAG  | Payload key |                                                       Payload Value                                                        |                                       Value type                                        | Notes                                                                                                                                                                                                                                                                                                              |
|:----:|:-----------:|:--------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `d1` |    	`ts`    |                                                       Unix Timestamp                                                       |                                Unix Timestamp (integer)                                 | Timestamp for the sampling period. <br/><br/>Seconds since epoch.                                                                                                                                                                                                                                                  |
| `d1` |    `app`    |                                                           "pcab"                                                           |                                         string                                          | App type. <br/><br/>The value is the “pcab” constant.                                                                                                                                                                                                                                                              |
| `d1` |    `PIS`    |     [[p0_in_avg, p0_in_min, p0_in_max],<br/>[p1_in_avg, p1_in_min, p1_in_max],<br/>[p2_in_avg, p2_in_min, p2_in_max]]      |      [[float, float, float],<br/>[float, float, float],<br/>[float, float, float]]      | Power values in the acquisition period for input three phase lines. <br/><br/>pN_in_avg: arithmetic average <br/>pN_in_min: minimum <br/>pN_in_max: maximum <br/>N=0-2 <br/><br/>Measured in Watts (W).                                                                                                            |
| `d1` |    `POS`    |                 [[p0_out_avg, p0_out_min, p0_out_max],<br/>[p1_out_avg, p1_out_min, p1_out_max],<br/>...]                  |               [[float, float, float],<br/>[float, float, float],<br/>...]               | Power values in the acquisition period for output three phase lines. The list value for a not monitored line is 'None'. <br/><br/>pN_out_avg: arithmetic average <br/>pN_out_min: minimum <br/>pN_out_max: maximum <br/>N=0-4 or N=0-8 <br/><br/>Measured in Watts (W).                                            |
| `d1` |    `EOS`    |                                [[p0_out_avg * period],<br/>[p1_out_avg * period],<br/>...]                                 |                             [[float],<br/>[float],<br/>...]                             | Energy values in the acquisition period for output three phase lines. The list value for a not monitored line is 'None'. <br/><br/>N=0-4 or N=0-8 <br/><br/>Measured in Watt-hours (Wh).                                                                                                                           |
| `d1` |     `S`     |                                                           [0-1]                                                            |                                        [integer]                                        | Current status (Disconnected/Working). <br/>0: Disconnected (not every input line is working) <br/>1: Working (every input line is working)                                                                                                                                                                        |
| `d1` |    `SI`     |                                                      [SI0, SI1, SI2]                                                       |                               [integer, integer, integer]                               | Describes the status of the three input lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Working (Px >= 5%)                                                                                                                          |
| `d1` |    `Sx`     |                                                       [S0, S1, ...]                                                        |                                 [integer, integer, ...]                                 | Describes the status of the output lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Low (5% < Px < 30%) <br/>2: Medium (30% < Px < 70%) <br/>3: High (70% < Px < 100%) <br/>4: Critical (Px >= 100%)                                 |
| `d1` |    `ExS`    |                       [[E0_D, E0_L, E0_M, E0_H, E0_C],<br/>[E1_D, E1_L, E1_M, E1_H, E1_C],<br/>...]                        | [[float, float, float, float, float],<br/>[float, float, float, float, float],<br/>...] | Energy consumed for each status "Sx" during the acquisition period. The sum of states of each line is equal to the EOS value for the same line. <br/>The length of the arrays is the amount of lines (EOS) multiplied by the possible states (Sx). <br/><br/>N=0-4 or N=0-8 <br/><br/>Measured in Watt-hours (Wh). |
| `d2` |    `VIS`    |     [[V0_in_avg, V0_in_min, V0_in_max],<br/>[V1_in_avg, V1_in_min, V1_in_max],<br/>[V2_in_avg, V2_in_min, V2_in_max]]      |      [[float, float, float],<br/>[float, float, float],<br/>[float, float, float]]      | Voltage values in the acquisition period for input three phase lines. <br/><br/>VN_in_avg: arithmetic average <br/>VN_in_min: minimum <br/>VN_in_max: maximum <br/>N=0-2 <br/><br/>Measured in Volts (V).                                                                                                          |
| `d2` |    `CIS`    |     [[C0_in_avg, C0_in_min, C0_in_max],<br/>[C1_in_avg, C1_in_min, C1_in_max],<br/>[C2_in_avg, C2_in_min, C2_in_max]]      |      [[float, float, float],<br/>[float, float, float],<br/>[float, float, float]]      | Current values in the acquisition period for input three phase lines. <br/><br/>CN_in_avg: arithmetic average <br/>CN_in_min: minimum <br/>CN_in_max: maximum <br/>N=0-2 <br/><br/>Measured in Amperes (A).                                                                                                        |
| `d2` |    `THD`    |     [[T0_in_avg, T0_in_min, T0_in_max],<br/>[T1_in_avg, T1_in_min, T1_in_max],<br/>[T2_in_avg, T2_in_min, T2_in_max]]      |      [[float, float, float],<br/>[float, float, float],<br/>[float, float, float]]      | THD (Total Harmonic Distortion) values in the acquisition period for input three phase lines, referred to the fundamental wave. <br/><br/>TN_in_avg: arithmetic average <br/>TN_in_min: minimum <br/>TN_in_max: maximum <br/>N=0-2 <br/><br/>Measured in percentage (%).                                           |
| `d2` |     `P`     |                                                   [P_avg, P_min, P_max]                                                    |                                  [float, float, float]                                  | Total active power in the period for the input three phase lines. <br/><br/>P_avg: arithmetic average <br/>P_min: minimum <br/>P_max: maximum <br/><br/>Measured in Watts (W).                                                                                                                                     |
| `d2` |    `RP`     |                                                   [Q_avg, Q_min, Q_max]                                                    |                                  [float, float, float]                                  | Total reactive power in the period for the input three phase lines. <br/><br/>Q_avg: arithmetic average <br/>Q_min: minimum <br/>Q_max: maximum <br/><br/>Measured in Volt-Amperes Reactive (VAr).                                                                                                                 |
| `d2` |    `AP`     |                                                   [S_avg, S_min, S_max]                                                    |                                  [float, float, float]                                  | Total apparent power in the period for the input three phase lines. <br/><br/>S_avg: arithmetic average <br/>S_min: minimum <br/>S_max: maximum <br/><br/>Measured in Volt-Amperes (VA).                                                                                                                           |
| `d2` |    `PF`     |                                                  [PF_avg, PF_min, PF_max]                                                  |                                  [float, float, float]                                  | Power factor in the period for the input three phase lines. <br/><br/>PF_avg: arithmetic average <br/>PF_min: minimum <br/>PF_max: maximum <br/><br/>Measured in percentage (%).                                                                                                                                   |
| `d2` |    `UC`     | [[UC0_in_avg, UC0_in_min, UC0_in_max],<br/>[UC1_in_avg, UC1_in_min, UC1_in_max],<br/>[UC2_in_avg, UC2_in_min, UC2_in_max]] |      [[float, float, float],<br/>[float, float, float],<br/>[float, float, float]]      | Total current unbalance in the period for the input three phase lines. <br/><br/>UCN_in_avg: arithmetic average <br/>UCN_in_min: minimum <br/>UCN_in_max: maximum <br/>N=0-2 <br/><br/>Measured in percentage (%).                                                                                                 |

### Status

| TAG | Payload key | Payload Value  | Value type | Notes                                                                                                                                                      |
|:---:|:-----------:|:--------------:|:----------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| `s` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                     |
| `s` |     `S`     |     [0-1]      | [integer]  | Current status of the cabinet (Disconnected/Working). <br/>0: Disconnected (not every input line is working) <br/>1: Working (every input line is working) |

### Input line status

| TAG | Payload key |  Payload Value   |         Value type          | Notes                                                                                                                                                                                     |
|:---:|:-----------:|:----------------:|:---------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `s` |    `ts`     |  Unix Timestamp  |           integer           | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                                                    |
| `s` |    `SI`     | [SI0, SI1, SI2]  | [integer, integer, integer] | Describes the status of the three input lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Working (Px >= 5%) |

### Output line status

| TAG | Payload key |  Payload Value   |       Value type        | Notes                                                                                                                                                                                                                                                                              |
|:---:|:-----------:|:----------------:|:-----------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `s` |    `ts`     |  Unix Timestamp  |         integer         | Timestamp of the event. <br/><br/>Seconds since epoch.                                                                                                                                                                                                                             |
| `s` |    `Sx`     | [So0, So1, ...]  | [integer, integer, ...] | Describes the status of the output lines. The status depends on the percentage of maximum power absorbed by the line. <br/><br/>0: Disconnected (Px < 5%) <br/>1: Low (5% < Px < 30%) <br/>2: Medium (30% < Px < 70%) <br/>3: High (70% < Px < 100%) <br/>4: Critical (Px >= 100%) |

### Threshold Alarm

| TAG | Payload key | Payload Value  | Value type | Notes                                                              |
|:---:|:-----------:|:--------------:|:----------:|:-------------------------------------------------------------------|
| `a` |    `ts`     | Unix Timestamp |  integer   | Timestamp of the event. <br/><br/>Seconds since epoch.             |
| `a` |     `A`     |     [0-1]      | [integer]  | The alarm is triggered if the cabinet is absorbing more than 100%. |


