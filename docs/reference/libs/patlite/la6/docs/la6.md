# PATLITE LA6 Library

To talk with a lamp device an object of type HTTP protocol or MODBUS TCP.

Example:

```py
#----- HTTP Protocol
import la6
lamp=la6.la6HTTP()
lamp.set_LED_colors(["green","green","white","red","red"])

#----- MODBUS TCP Protocol
import la6
lamp=la6.la6MODBUS()
lamp.set_LED_colors(["green","green","white","red","red"])
```

!!! warning
	To be able to communicate via HTTP or MODBUS TCP the patlite la6 must be previously configured to accept commands via these protocols. Set the “Control-system Switchover” parameter on the “Main Unit Setup” page to the “Command Control” value via the web interface.

## la6HTTP class

##### class la6HTTP

```#!py3 class la6HTTP(colors=["off,"off,"off","off","off"],buzzer="off",flash="off",address="192.168.10.1")```

Create an instance of the la6HTTP class for control patlite la6 lamp with HTTP protocol.


**Arguments:**  **colors** – Array of 5 positions containing the colors of the led strips.

|  String |   Color  |
|:-------:|:--------:|
| off     | off      |
| red     | Red      |
| amber   | Amber    |
| lemon   | Lemon    |
| green   | Green    |
| skyblue | Sky Blue |
| blue    | Blue     |
| purple  | Purple   |
| pink    | Pink     |
| white   | White    |

-	**buzzer** – Buzzer status upon initialization.

| Value | Effect                                            |
|-------|---------------------------------------------------|
| off   | Turned off                                        |
| on    | Turned on                                         |
| 2-11  | audio effects set by set by the lamp manufacturer |

-	**flash** – Flash LED unit status upon initialization [“off” or “on”].


-	**address** – The IP address of the devices concerned.


###### la6HTTP.set_LED_colors

```#!py3 set_LED_colors(colors)```

**Arguments:** **colors** – Array of 5 positions containing the colors of the led strips.


###### la6HTTP.set_buzzer

```#!py3 set_buzzer(buzzer)```

**Arguments:** **buzzer** – Buzzer status.


###### la6HTTP.set_flash

```#!py3 set_flash(flash)```

**Arguments:** **flash** – Flash LED unit status.


###### la6HTTP.clear

```#!py3 clear()```

LED unit and buzzer reset.

###### la6HTTP.set_smartmode

```#!py3 set_smartmode(command)```

**Arguments:** **command** – Through this parameter composed of the digits from 1 to 15 it is possible to draw on the SmartMode LED animation functions sanctioned by the lamp manufacturer.


## la6MODBUS class

##### class la6MODBUS

```#!py3 class la6MODBUS(colors=["off,"off,"off","off","off"],buzzer="off",flash="off",address="192.168.10.1",port=502)```

Create an instance of the la6MODBUS class for control patlite la6 lamp with MODBUS TCP protocol.

**Arguments:** 

-	**colors** – Array of 5 positions containing the colors of the led strips.

  | String  | Color    |
|---------|----------|
| off     | off      |
| red     | Red      |
| amber   | Amber    |
| lemon   | Lemon    |
| green   | Green    |
| skyblue | Sky Blue |
| blue    | Blue     |
| purple  | Purple   |
| pink    | Pink     |
| white   | White    |


-	**buzzer** – Buzzer status upon initialization.

 | Value |                       Effect                      |
|:-----:|:-------------------------------------------------:|
| off   | Turned off                                        |
| on    | Turned on                                         |
| 2-11  | audio effects set by set by the lamp manufacturer |


-	**flash** – Flash LED unit status upon initialization [“off” or “on”].
-	**address** – The IP address of the devices concerned.
-	**port** – Network port for connection in modbus protocol.


###### la6MODBUS.set_LED_colors

```#!py3 set_LED_colors(colors)```

**Arguments:** **colors** – Array of 5 positions containing the colors of the led strips.


###### la6MODBUS.set_buzzer

```#!py3 set_buzzer(buzzer)```

**Arguments:**  **buzzer** – Buzzer status.


###### la6MODBUS.set_flash

```#!py3 set_flash(flash)```

**Arguments:** **flash** – Flash LED unit status.


###### la6MODBUS.set_smartmode

```#!py3 set_smartmode(command)```

**Arguments:** **command** – Through this parameter composed of the digits from 1 to 15 it is possible to draw on the SmartMode LED animation functions sanctioned by the lamp manufacturer.


###### la6MODBUS.clear

```#!py3 clear()```

LED unit and buzzer reset.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTExNjEwMzgzNTcsLTgzOTEzNTU5OV19
-->
