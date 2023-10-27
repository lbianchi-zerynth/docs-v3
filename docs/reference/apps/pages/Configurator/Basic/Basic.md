# Basic Configuration

The basic configuration is a wizard which allows you to configure a machine in a guided mode, taking you every step of the way to have a device ready to go.

Firstly, you will be asked to choose your machine type. Refer to the [Knowledge Base](../../KnowledgeBase/KnowledgeBase.md) for more information.

![machine_type_image]

For each machine type, follow the steps described below.

## Auxiliary Machine

### Machine name

Choose the name of the machine you're configuring;

![machine_name_image]

### Power settings

Set the machines's power settings. This includes:

* **Power meter**
    * Power meter connection (active or inactive)
* **Power supply settings**
    * Network voltage (in V)
    * Power supply type (default three-phase)
* **Machine status**
    * Working (in A) defines above which current the machine is considered to be working
* **Power meter settings** (only available if power meter connection is active)
    * Connection type (default serial)
* **Serial settings** (only available if power meter connection is active)
    * Address (default 1)
    * Serial number (can be 1 or 2)
    * Baudrate (default 19200)
    * Mode (can be RS232 or RS485)
    * Stop bit (can be 1, 1.5 or 2)
    * Bit size (can be 5, 6, 7 or 8)
    * Parity (can be None, Even or Odd)
    * Flow control (can be Disabled, RTS, CTS or RTS/CTS)

![auxiliary_power_settings_image]

### Alarm settings

Select the machine's alarms. For every new alarm you can define:

* **Alarm name**;
* **Alarm type**, which can be threshold or digital;

If the alarm is a threshold alarm, you can also define:

* **Alarm threshold** (in W)

If the alarm is a digital alarm, you can also define:

* **Alarm on value**, which can be 0 or 1

![alarms_image]

![alarm_new_image]

![alarm_new_threshold_image]

![alarm_new_digital_image]

### Device type

Select the type of device you wish to connect to your machine. 4ZeroBox Lite is available, and 4ZeroBox v10 is coming soon.

![device_type_image]

### Networking

Select the main network type of your device. WiFi and Ethernet are available. If Ethernet is selected, you can define:

* **IPv4 mode** (can DHCP or manual)

If IPv4 is manual, you will need to define:

* **IP address** (in IPv4 format)
* **Subnet mask** (in IPv4 format)
* **Gateway** (in IPv4 format)
* **DNS** (in IPv4 format)

If WiFi is selected, you will also need to define:

* **SSID**
* **Password** (only WPA2 security is available)

![network_type_image]

If necessary, add backup networks. The device will try to connect to these networks (in order) if the networks before have failed to connect. Backup networks can be Ethernet or WiFi, and each one
has the same settings as described above.

![network_config_image]

When you're done, click on **Next**.

### Device connection

Connect your device to a USB port on your computer.

![connect_usb_image]

Select the USB port where your device is connected.

![connect_usb_port_image]

Click on **Connect** and wait for the device to be detected.

The configurator will start configuring the device. Wait for the process to finish.

Done! Your device is ready to be connected to your machine.


## Production Machine

### Machine name

Choose the name of the machine you're configuring;

![machine_name_image]

### Power settings

Set the machines's power settings. This includes:

* **Power supply settings**
    * Network voltage (in V)
    * Power supply type (default three-phase)
* **Machine status**
    * Working (in A) defines above which current the machine is considered to be working
* **Clamp settings**
    * Clamp type (can be 5V or 0.33V)
    * Clamp amperage (default 200)

![production_power_settings_image]

### Production monitoring settings

Set the machine's piece counter. The pieces are calculated as pulses, so you will need to define:

* **Minimum pulse duration** (in ms)
* **Polarity** (can be active on 0 or 1)

If you want to monitor defective pieces as well, you will need to set the same parameters for the defective pieces counter.

![production_monitoring_settings_image]

### Alarm settings

Select the machine's alarms. For every new alarm you can define:

* **Alarm name**;
* **Alarm type**, which can be threshold or digital;

If the alarm is a threshold alarm, you can also define:

* **Alarm threshold** (in W)

If the alarm is a digital alarm, you can also define:

* **Alarm on value**, which can be 0 or 1

![alarms_image]

![alarm_new_image]

![alarm_new_threshold_image]

![alarm_new_digital_image]

### Machine operations

Set the machine's operations. You can choose to enable them or not. If enabled you will need to choose if the operations will be set only from the Zerynth Cloud or if they can be set via barcode as well.

If barcode operations are enabled, you will need to configure the following parameters:

* **Serial settings**
    * Serial number (can be 1 or 2)
    * Baudrate (default 9600)
    * Mode (can be RS232 or RS485)
    * Stop bit (can be 1 or 2)
    * Bit size (can be 5, 6, 7 or 8)
    * Parity (can be None, Even or Odd)
    * Flow control (can be Disabled, RTS, CTS or RTS/CTS)

![production_machine_operations_image]

### Device type

Select the type of device you wish to connect to your machine. 4ZeroBox Lite is available, and 4ZeroBox v10 is coming soon.

![device_type_image]

### Networking

Select the main network type of your device. WiFi and Ethernet are available. If Ethernet is selected, you can define:

* **IPv4 mode** (can DHCP or manual)

If IPv4 is manual, you will need to define:

* **IP address** (in IPv4 format)
* **Subnet mask** (in IPv4 format)
* **Gateway** (in IPv4 format)
* **DNS** (in IPv4 format)

If WiFi is selected, you will also need to define:

* **SSID**
* **Password** (only WPA2 security is available)

![network_type_image]

If necessary, add backup networks. The device will try to connect to these networks (in order) if the networks before have failed to connect. Backup networks can be Ethernet or WiFi, and each one has the same settings as described above.

![network_config_image]

When you're done, click on **Next**.

### Device connection

Connect your device to a USB port on your computer.

Select the USB port where your device is connected.

Click on **Connect** and wait for the device to be detected.

The configurator will start configuring the device. Wait for the process to finish.

Done! Your device is ready to be connected to your machine.

## Electrical Panel

### Machine name

Choose the name of the machine you're configuring

![machine_name_image]

### Power settings

Set the machines's power settings. This includes:

* **Power meter**
    * Power meter connection (active or inactive)
* **Network info**
    * Network voltage (in V)
* **Input Lines** (only available if power meter connection is inactive)
    * Clamp type (can be 5V or 0.33V)
    * Clamp amperage
* **Power meter settings** (only available if power meter connection is active)
    * Connection type (default serial)
* **Serial settings** (only available if power meter connection is active)
    * Address (default 1)
    * Serial number (can be 1 or 2)
    * Baudrate (default 19200)
    * Mode (can be RS232 or RS485)
    * Stop bit (can be 1, 1.5 or 2)
    * Bit size (can be 5, 6, 7 or 8)
    * Parity (can be None, Even or Odd)
    * Flow control (can be Disabled, RTS, CTS or RTS/CTS)
* **Output lines**
    * Clamp type (can be 5V or 0.33V)
    * Clamp amperage
    * Output lines (from 1 to 5)
    * Output line name (one for each output line)
* **Line threshold**
    * Max input value (in A)
    * Max output value (in A)
* **Alert input**
    * Max value (in A)

![cabinet_power_settings_image]

### Device type

Select the type of device you wish to connect to your machine. 4ZeroBox Lite is available, and 4ZeroBox v10 is coming soon.

![device_type_image]

### Networking

Select the main network type of your device. WiFi and Ethernet are available. If Ethernet is selected, you can define:

* **IPv4 mode** (can DHCP or manual)

If IPv4 is manual, you will need to define:

* **IP address** (in IPv4 format)
* **Subnet mask** (in IPv4 format)
* **Gateway** (in IPv4 format)
* **DNS** (in IPv4 format)

If WiFi is selected, you will also need to define:

* **SSID**
* **Password** (only WPA2 security is available)

![network_type_image]

If necessary, add backup networks. The device will try to connect to these networks (in order) if the networks before have failed to connect. Backup networks can be Ethernet or WiFi, and each one has the same settings as described above.

![network_config_image]

When you're done, click on **Next**.

### Device connection

Connect your device to a USB port on your computer.

![connect_usb_image]

Select the USB port where your device is connected.

![connect_usb_port_image]

Click on **Connect** and wait for the device to be detected.

The configurator will start configuring the device. Wait for the process to finish.

Done! Your device is ready to be connected to your machine.



[//]: # (Common images)

[alarm_new_image]: ../../../img/Configurator/Basic/AlarmNew.png
[alarm_new_digital_image]: ../../../img/Configurator/Basic/AlarmNewDigital.png
[alarm_new_threshold_image]: ../../../img/Configurator/Basic/AlarmNewThreshold.png
[alarms_image]: ../../../img/Configurator/Basic/Alarms.png
[connect_usb_image]: ../../../img/Configurator/Basic/ConnectUSB.png
[connect_usb_port_image]: ../../../img/Configurator/Basic/ConnectUSBPort.png
[device_type_image]: ../../../img/Configurator/Basic/DeviceType.png
[machine_name_image]: ../../../img/Configurator/Basic/MachineName.png
[machine_type_image]: ../../../img/Configurator/Basic/MachineType.png
[network_config_image]: ../../../img/Configurator/Basic/NetworkConfig.png
[network_type_image]: ../../../img/Configurator/Basic/NetworkType.png

[//]: # (Auxiliary images)

[auxiliary_power_settings_image]: ../../../img/Configurator/Basic/Auxiliary/PowerSettings.png

[//]: # (Production images)

[production_machine_operations_image]: ../../../img/Configurator/Basic/Production/MachineOperations.png
[production_power_settings_image]: ../../../img/Configurator/Basic/Production/PowerSettings.png
[production_monitoring_settings_image]: ../../../img/Configurator/Basic/Production/MonitoringSettings.png

[//]: # (Cabinet images)

[cabinet_power_settings_image]: ../../../img/Configurator/Basic/Cabinet/PowerSettings.png