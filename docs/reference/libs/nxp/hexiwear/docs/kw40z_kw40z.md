# KW40Z Module

The KW40Z SoC can be used in applications as a “BlackBox” modem by simply adding BLE or IEEE Std. 802.15.4 connectivity to an existing embedded controller system, or
used as a stand-alone smart wireless sensor with embedded application where no host controller is required. ([datasheet](http://www.nxp.com/assets/documents/data/en/data-sheets/MKW40Z160.pdf)).

This module contains the driver for NXP KW40Z Bluetooth Low Energy chip mounted on the Hexiwear device and pre-loaded of the related original default application firmware.
This application exposes all features through a specific serial communication protocol, handles all capacitive touch buttons on Hexiwear device and permits to exchange Hexiwear sensor data via bluetoooth.

!!! note
	This module works only if the **HEXIWEAR_KW40.bin** file is loaded on the nxp kw40z chip.


* The binary file can be found [here](https://github.com/MikroElektronika/HEXIWEAR/tree/master/SW/binaries).
* A step-by-step tutorial for loading the binary file inside the kw40z chip can be found [here](https://mcuoneclipse.com/2016/12/07/flashing-and-restoring-the-hexiwear-firmware/).

###### KW40Z_HEXI_APP

```#!py3 KW40Z_HEXI_APP(ser)```

Creates an intance of a new KW40Z_HEXI_APP.


**`Arguments:`** **ser** – Serial used ‘( SERIAL1, … )’


Example:

```py
from nxp.kw40z import kw40z

...

bt_driver = kw40z.KW40Z_HEXI_APP(SERIAL1)
bt_driver.start()
...
```

###### start

```#!py3 start()```

Starts the serial communication with the KW40Z and check the KW40Z status (check if Bluetooth is active, if there are connections with other devices, and which set of capacitive touch buttons are active)

###### attach_button_up

```#!py3 attach_button_up(callback)```

Sets the callback function to be executed when Capacitive Button Up on Hexiwear device is pressed.
###### attach_button_down

```#!py3 attach_button_down(callback)```

Sets the callback function to be executed when Capacitive Button Down on Hexiwear device is pressed.

###### attach_button_left

```#!py3 attach_button_left(callback)```

Sets the callback function to be executed when Capacitive Button Left on Hexiwear device is pressed.

###### attach_button_right

```#!py3 attach_button_right(callback)```

Sets the callback function to be executed when Capacitive Button Right on Hexiwear device is pressed.

###### attach_alert

```#!py3 attach_alert(callback)```

Sets the callback function to be executed when KW40Z receives an input alert.

###### attach_notification

```#!py3 attach_notification(callback)```

Sets the callback function to be executed when KW40Z receives a notification.

###### attach_passkey

```#!py3 attach_passkey(callback)```

Sets the callback function to be executed when KW40Z receives a bluetooth pairing request.

!!! note
	When the KW40Z receives this kind of request it generates a pairing code stored in the passkey class attribute.

###### upd_sensors

```#!py3 upd_sensors(battery=None,accel=None,gyro=None,magn=None,aLight=None,temp=None,humid=None,press=None)```

Updates Hexiwear sensor data in the KW40Z chip to be readable through any smartphone/tablet/pc bluetooth terminal.


**Arguments:**

    
-	**battery** – update the battery level value in percentage if passed as argument; default None;
-	**accel** – update the acceleration values (list of 3 uint_16 elements for x,y,z axis) if passed as argument; default None;
-	**gyro** – update the gyroscope values (list of 3 uint_16 elements for x,y,z axis) if passed as argument; default None;
-	**magn** – update the magnetometer values (list of 3 uint_16 elements for x,y,z axis) if passed as argument; default None;
-	**aLight** – update the ambient light level value in percentage if passed as argument; default None;
-	**temp** – update the temperature value (uint_16) if passed as argument; default None;
-	**humid** – update the humidity value (uint_16) if passed as argument; default None;
-	**press** – update the pressure value (uint_16) if passed as argument; default None.


###### send_alert

```#!py3 send_alert()```

Sends alerts from Hexiwear device to the connected smartphone/tablet/pc via Bluetooth.

###### toggle_adv_mode

```#!py3 toggle_adv_mode()```

Changes the status of advertising process. Sets on/off the Bluetooth status.

###### toggle_tsi_group

```#!py3 toggle_tsi_group()```

Changes active group (pair) of vertical touch sense electrodes. Sets right/left pair capacitive touch buttons.

###### info

```#!py3 info()```

Retrieves the device setting informations regarding the Bluetooth status, which capacitive touch buttons are active, and the connection with other devices status.

* Bluetooth Status (*bool*): 1 Bluetooth is on, 0 Bluetooth is off;
* Capacitive Touch Buttons (*bool*): 1 active right pair, 0 acive left pair;
* Link Status (*bool*): 1 device is connected, 0 device is disconnected.

Returns bt_on, bt_touch, bt_link.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTc4MzQ2NDQ4MSwxODgzMDUxNjQ5XX0=
-->
