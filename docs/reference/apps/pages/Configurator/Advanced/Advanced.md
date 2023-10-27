# Advanced configuration

The advanced configuration is to be used by experienced users only. You will have complete control over the nodes created by your device and their behavior.

## Graph Editor

After selecting the machine's name, clicking "Next" will bring up the graph editor. The graph editor enables you to craft a personalized configuration by modifying each setting of every individual node.

The initial view of the graph contains two nodes:

* The **Device** node, which represents the device;
* The **App** node, which represents the Application to which the device is connected.

![graph_editor_image]

On the left side of the page, you'll find a visual representation of the configuration. The root represents the main machine to which the device is connected.

Progressing from left to right, you'll encounter the initial layer of sensors, followed by the computational node. The terminal nodes of the graph are the outputs or event nodes.

When a node is clicked, its settings will appear on the right side of the page.

In the upper right corner, there are six buttons:

* **Template**;

* **Add node**;

* **Load**;

* **Export**;

* **Save**;

* **Deploy**.

### Add node

After clicking the `Add node` button, a pop-up will appear, prompting you to choose the specific node you wish to add to the graph.

![add_node_image]

Once you've selected the desired node and clicked the `Add node` button in the pop-up, the chosen node will become visible in the overview.

### Load

By clicking the `Load` button, you'll be able to choose a JSON file from your computer. This action enables you to import a configuration file, which must follow the following format:

```json
{
 "type": "graph",
 "nodes": [...],
 "output": [...],
 "events": [...],
 "app": [...]
}
```

### Export

Clicking the `Export` button will initiate a download of the configuration in a JSON file format.

### Save

The `Save` button is used to store your configuration. This button has two distinct behaviors based on the context:

* If you are modifying an existing configuration, the `Save` button will update the current device configuration and initiate a job submission;
* If you are creating a new configuration, clicking the `Save` button will generate the asset, visible on the Machine's page, and this will allow you to edit and finalize the configuration at a later time.

### Deploy

After clicking the `Deploy` button, you can proceed with the configuration by selecting the device to which you want to apply the configuration.

### How to use Templates

Based on the choice of the type of machine to configure, appropriate graph templates will be available. Specifically, for production machines, there are currently production graphs available for brownfield and greenfield machinery. Configuration for brownfield machinery is ready for use, while for greenfield machinery with the OPCUA node, it is necessary to set the IP and port within the node settings. Once this is done, you can proceed with the configuration.
For service machines, there is a ready-to-use template available for brownfield machines.

## Edit Graph Settings

### Node Typology

There are four types of Nodes Available:

**Sensors**:

* AnalogSensor
* CurrentSensor
* PowerSensor
* VoltageSensor
* ResistiveSensor
* LevelSensor
* JobBarCode

**Green-field protocols**:

* Modbus
* OPCUA
* Snap7

**Computational Nodes**:

* Aggregator
* LoThreshold
* HiThreshold
* Status
* MultiStatus
* Chronometer
* MultiChronometer
* Pulse
* Counter
* DeltaCounter
* Integrator
* MultiIntegrator
* IntegratorIdx

**Logical nodes**:

* BinPredicate
* BinOperator
* UnaryPredicate
* AndPredicates
* OrPredicates

**Output nodes**:

* CustomOutputNode
* ProductionInsightsApp
* MachineMonitoringApp

### Connecting Nodes

All Nodes besides the device node can take one or more input from other nodes.

### Sensors

Sensor nodes are inherently linked to the device node as their default input, and this linkage cannot be altered.

### Nodes

All nodes need to designate their input by selecting another node from within their respective settings.

For each input, the name of the node and its corresponding port must be selected within the respective settings.

### Logical Nodes

For Logical Nodes like AndPredicate, OrPredicate, and UnaryPredicate, their connection modality is similar to other nodes. Simply select the node you wish to establish a connection with and indicate the associated port.

For nodes BinPredicate and BinOperator, which have up to two inputs, you have the option to either use a constant value or a node as an input.

### Output Nodes

MachineMonitoringApp and ProductionInsightsApp have multiple inputs that define the payload for that app.

CustomOutputNode has at least one input.

### Edit Node Settings

In this section we have a list of the modifiable parameters for each node.

### Device Node

The device node doesn't possess editable settings except for its name, which can be modified by returning to the machine name step within the configurator.

### VoltageSensor, CurrentSensor, AnalogSensor, ResistiveSensor, PowerSensor

**Name**: The name of the node. Name must be unique in the graph;

**Chtype**: represents the sensor input’s type. The field’s value can be:

* Voltage
* Current
* Resistive
* Current_AC

**SPS**: samples per second. Integer. Valid range depends on the actual ADC on the board (e.g.: 128, 250, …, 3300). The firmware takes care of out-of-range values. It is the sample rate of the ADC;

**PGA**: Programmable Gain Amplifier. Integer. It is designed to increase the dynamic range by amplifying low-amplitude signals before they are fed to the ADC. Valid range depends on the actual ADC on the board (e.g.: 1, 2, …);

**Samples**: The number of digital samples taken from the ADC when the read operation is performed;

**Conversion**: represents the analog to digital conversion of the sensor. The field’s value can be:

* No conversion
* Linear conversion
* Table conversion
* Power conversion
* Current conversion

**Params**: List of the conversion’s parameters. This field is not visible if conversion=NoConversion;

**Channel**: represent the input terminal number for the clamp connection;

**Exp (Only PowerSensor)**: The expansion you want to use, the value can be:

* None
* AIN1
* IO1

### LevelSensor

**Name**: The name of the node. Name must be unique in the graph;

**Pull**: The pull-up or pull-down resistor to be set on the input. String. Valid values are:

* None
* Up
* Down

**Debounce**: The debounce time in msec. Integer;

**Inverted**: The active state of the signal. Boolean. True = active on 0, False = active on 1;

**Channel**: represent the input terminal number for the clamp connection;

**Exp**: The expansion you want to use, the value can be:

* None
* AIN1
* IO1

### ModbusNode

**Name**: The name of the node. Name must be unique in the graph;

**Connection Type**: You can choose between:

* TCP
* Serial

 Both options will display the configuration settings for the selected connection.

**BaudRate** (connection = serial): The baudrate of the serial connection depending on the slave device configuration;

**Serial Parity** (connection = serial): The parity of the serial connection. It can be none, even or odd depending on the slave device configuration;

**StopBits** (connection = serial): The stopbits of the connection. It can be 0 or 1 depending on the slave device configuration;

**Slave Address** (connection = serial): the address of the slave device (e.g. a Schneider power meter). Default value is 1;

**IP Address** (connection = TCP): The IP address of the slave device;

**Port** (connection = TCP): The port of the slave device;

**Endianess**: The endianness describes the byte importance order. It can be:

* Little
* Big

This node needs a configuration file for its registers, you can create the file directly in the settings node by pressing the `Create` button.

You can also upload an already existing file by clicking the `Upload` button.

Once clicked the `Create` button you can add the Modbus Register.

![modbus_register_image]

You can edit the register settings by clicking the pencil button on the upper right corner of the register sections:

#### Modbus Register Settings

Each register has its own settings that can change with the register mode:

**Mode**: a register can have three modes:

* Basic
* Splitted
* Composed

A register in Basic Mode has the following settings:

**Name**: The name of the register. Name must be unique;

**Register Length**: The register length in bytes;

**Mult Factor**: This field is used to multiply the register output by a constant;

**Register Type**: This field’s value can be:

* Holding
* Coil
* Input
* Discrete

**Value Type**: This field’s value can be:

* BOOL
* INT16
* UINT16
* INT32
* UINT32
* INT64
* UINT64
* FLOAT32
* STRING

If the register is in Splitted Mode, it has two more fields:

**Mask**: [...];

**RIght Shift**: [...];

A register in Composed Mode has the following settings:

**Name**: The name of the register. Name must be unique;

**Value Type**: [...] This field's value can be:

* BOOL
* INT16
* UINT16
* INT32
* UINT32
* INT64
* UINT64
* FLOAT32
* STRING

**Register List**: contains the list of the sub-register composing the register;

### OPCUA Node

Required parameter:

**Full URL**: The full URL of the OPCUA server (e.g. opc.tcp://\<ip-or-hostname>:\<port>/path/)

Optional parameters:

**Username**: The username to access the OPCUA server;

**Password**: The password to access the OPCUA server;

**Application URI**: The URI used during the certificate/key creation process;

**Server keys**: The path to the server keys file. Used to enable encryption;

**Server certificates**: The path to the server certificates file. Used to enable encryption;

Any OPCUA Node requires a configuration file for its nodes. You can choose to upload an existing file or create a new one. The uploaded file can be a CSV or a JSON file.

You can find a CSV template by clicking on the `Template` button in the node settings.

For each node you can set the following settings:

**Identifier**: The value of the identifier is a number;

**Name Space**: The value of the namespace is a number;

**Type**: The node value type (not used at the moment but required for parsing).

### Snap7 Node

The Snap7 nodes have the following settings:

**IP address**: The IP address for the TCP connection;

**Port**: The port for the TCP connection;

**Endianness**: The endianness describes the byte importance order. It can be:

* Little
* Big

The Snap7 nodes require a configuration file for its registers. You can choose to upload an existing file or create a new one. The uploaded file can be a CSV or a JSON file.

You can find a CSV template by clicking on the `Template` button in the node settings.

For each register you can set the following settings:

**Name**: The name of the register. Name must be unique;

**Type**: The register type. DB (data block) is the most used, the value can be:

* DB
* PE
* PA
* MK
* CT
* TM

**DBNum**: Represents the data block number;

**Start**: Represents the starting address of the register;

**Size**: Represents the size of the register in bytes;

**Data Type**:

* BOOL
* INT16
* UINT16
* INT32
* UINT32
* INT64
* UINT64
* FLOAT32
* STRING

### Aggregator

The Aggregator nodes have the following settings:

**Name**: The name of the node. Name must be unique.

It is possible to enable advanced settings, and edit the following parameters:

**Debounce**: The debounce time in msec. Integer;

**Hi**: The high threshold value;

**Lo**: The low threshold value;

### LoThreshold, HiThreshold

The LoThreshold and HiThreshold nodes have the following settings:

**Name**: The name of the node. Name must be unique;

**Threshold**: The threshold value;

**Debounce**: The debounce time in msec. Integer;

### Status

The Status Nodes output the label of the input that is set to 1 in priority order. The Status Nodes also have a **defaultLabel** option that allows you to set a label to be sent if none of the inputs are set to 1.

### MultiStatus

MultiStatus behaves similarly to the Status Node, but it has as many outputs as labels.
MultiStatus nodes do not have the default label.

### Chronometer

This node usually follows a Status node and returns the time that a status node has spent in a specific status using the status index if labels are not defined, otherwise it uses the label value.

### MultiChronometer

This node takes the output of a MultiStatus node as input and returns a list containing, for each element of the input, the time spent outside the default status (0).

### Pulse

The node checks the input value and returns 1 if the current input value is greater than the previous input value, it returns 0 otherwise.

Pulse Node has the following Settings:

**Duration**: The value of the node is updated if the pulse is longer than duration.

### Counter

This node increments its internal counter by increment if it isn’t set to 0, otherwise it increments the counter by the value of the input node.

Counter Node has the following settings:

**Increment**: The value to be added to the counter every acq_period. Set it to 0 to increment the counter by the value of the input node.

### DeltaCounter

This node takes as input the output of a counter and computes the delta between two readings

### Integrator

[...]

### MultiIntegrator

[...]

### IntegratorIdx

[...]

### BinPredicate

The BinPredicate node performs a logical predicate between data taken from two different inputs. For each input, you can choose whether to consider another node as input or use a constant value.

Through the **operator** attribute, you can choose the predicate's operator.

### BinOperator

The BinOperator node performs an arithmetic operation between data taken from two different inputs. For each input, you can choose whether to consider another node as input or use a constant value.

Through the **operator** attribute, you can select the operator of the predicate.

### UnaryPredicate

The UnaryPredicate node allows for the negation of the input.

### AndPredicates and OrPredicates

The AndPredicates and OrPredicates nodes take as input a list of bools and return the evaluation of the conjunction/disjunction between the input values.

[//]: # (TODO: Add images)

[//]: # (Images)
[graph_editor_image]: ../../../img/Configurator/Advanced/GraphEditor.png
[add_node_image]: ../../../img/Configurator/Advanced/AddNode.png
