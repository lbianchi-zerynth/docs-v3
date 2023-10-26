# Basic Configuration

The basic configuration is a wizard which allows you to configure a machine in a guided mode, taking you every step of the way to have a device ready to go.

Firstly, you will be asked to choose your machine type. Refer to the Knowledge Base for more information.

For each machine type, follow the steps described below.

## Auxiliary Machine

1. Choose the name of the machine you're configuring;

2. Set the machines's power settings. This includes:
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

3. Select the machine's alarms. For every new alarm you can define:
    * **Alarm name**;
    * **Alarm type**, which can be threshold or digital;

    If the alarm is a threshold alarm, you can also define:

    * **Alarm threshold** (in W)

    If the alarm is a digital alarm, you can also define:

    * **Alarm on value**, which can be 0 or 1

4. Select the type of device you wish to connect to your machine. 4ZeroBox Lite is available, and 4ZeroBox v10 is coming soon.

5. Select the main network type of your device. WiFi and Ethernet are available. If Ethernet is selected, you can define:
    * **IPv4 mode** (can DHCP or manual)

    If IPv4 is manual, you will need to define:

    * **IP address** (in IPv4 format)
    * **Subnet mask** (in IPv4 format)
    * **Gateway** (in IPv4 format)
    * **DNS** (in IPv4 format)
   
    If WiFi is selected, you will also need to define:

    * **SSID**
    * **Password** (only WPA2 security is available)

6. If necessary, add backup networks. The device will try to connect to these networks (in order) if the networks before have failed to connect. Backup networks can be Ethernet or WiFi, and each 
   one has the same settings as described above.

7. When you're done, click on **Next**.

8. Connect your device to a USB port on your computer.

9. Select the USB port where your device is connected.

10. Click on **Connect** and wait for the device to be detected.

11. The configurator will start configuring the device. Wait for the process to finish.

12. Done! Your device is ready to be connected to your machine.
	 

## Production Machine

1. Choose the name of the machine you're configuring;

2. Set the machines's power settings. This includes:
    * **Power supply settings**
	      * Network voltage (in V)
        * Power supply type (default three-phase)
    * **Machine status**
        * Working (in A) defines above which current the machine is considered to be working
    * **Clamp settings**
        * Clamp type (can be 5V or 0.33V)
        * Clamp amperage (default 200)

3. Set the machine's piece counter. The pieces are calculated as pulses, so you will need to define:
    * **Minimum pulse duration** (in ms)
    * **Polarity** (can be active on 0 or 1)

		If you want to monitor defective pieces as well, you will need to set the same parameters for the defective pieces counter.

4. Select the machine's alarms. For every new alarm you can define:
    * **Alarm name**;
    * **Alarm type**, which can be threshold or digital;

	  If the alarm is a threshold alarm, you can also define:
	
    * **Alarm threshold** (in W)
	
	  If the alarm is a digital alarm, you can also define:
	
    * **Alarm on value**, which can be 0 or 1

5. Set the machine's operations. You can choose to enable them or not. If enabled you will need to choose if the operations will be set only from the Zerynth Cloud or if they can be set via 
   barcode as well.

    If barcode operations are enabled, you will need to configure the following parameters:

    * **Serial settings**
        * Serial number (can be 1 or 2)
        * Baudrate (default 9600)
        * Mode (can be RS232 or RS485)
        * Stop bit (can be 1 or 2)
        * Bit size (can be 5, 6, 7 or 8)
        * Parity (can be None, Even or Odd)
        * Flow control (can be Disabled, RTS, CTS or RTS/CTS)

6. Select the type of device you wish to connect to your machine. 4ZeroBox Lite is available, and 4ZeroBox v10 is coming soon.

7. Select the main network type of your device. WiFi and Ethernet are available. If Ethernet is selected, you can define:
    * **IPv4 mode** (can DHCP or manual)

    If IPv4 is manual, you will need to define:

    * **IP address** (in IPv4 format)
    * **Subnet mask** (in IPv4 format)
    * **Gateway** (in IPv4 format)
    * **DNS** (in IPv4 format)
	 
    If WiFi is selected, you will also need to define:

    * **SSID**
    * **Password** (only WPA2 security is available)

8. If necessary, add backup networks. The device will try to connect to these networks (in order) if the networks before have failed to connect. Backup networks can be Ethernet or WiFi, and each 
	 one has the same settings as described above.

9. When you're done, click on **Next**.

10. Connect your device to a USB port on your computer.

11. Select the USB port where your device is connected.

12. Click on **Connect** and wait for the device to be detected.

13. The configurator will start configuring the device. Wait for the process to finish.

14. Done! Your device is ready to be connected to your machine.

## Electrical Panel

1. Choose the name of the machine you're configuring;

2. Set the machines's power settings. This includes:
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

3. Select the type of device you wish to connect to your machine. 4ZeroBox Lite is available, and 4ZeroBox v10 is coming soon.
4. Select the main network type of your device. WiFi and Ethernet are available. If Ethernet is selected, you can define:
    * **IPv4 mode** (can DHCP or manual)

    If IPv4 is manual, you will need to define:

    * **IP address** (in IPv4 format)
    * **Subnet mask** (in IPv4 format)
    * **Gateway** (in IPv4 format)
    * **DNS** (in IPv4 format)
	 
    If WiFi is selected, you will also need to define:

    * **SSID**
    * **Password** (only WPA2 security is available)

5. If necessary, add backup networks. The device will try to connect to these networks (in order) if the networks before have failed to connect. Backup networks can be Ethernet or WiFi, and each 
	 one has the same settings as described above.

6. When you're done, click on **Next**.

7. Connect your device to a USB port on your computer.

8. Select the USB port where your device is connected.

9. Click on **Connect** and wait for the device to be detected.

10. The configurator will start configuring the device. Wait for the process to finish.

11. Done! Your device is ready to be connected to your machine.



[//]: # (TODO: Add images)

