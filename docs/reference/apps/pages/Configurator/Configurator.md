# Configurator

The configurator allows you to create and add new devices to your account, and to configure them to fetch only the data 
that is relevant to you.

![configurator_image]

You can choose to configure the device in two ways:
* [Basic](#basic-configuration)
* [Advanced](#advanced-configuration)

## Basic configuration

The basic configuration is a wizard which allows you to configure a machine in a guided mode, taking you every step of the way to have a device ready to go.

Firstly, you will be asked to choose your machine type.
Refer to the Knowledge Base for more information.
* >When selecting `Auxiliary machine`, you will be asked to provide a name for the machine, and the power settings for t too.
	>
	>You will have to choose what kind of power supply the machine uses, and if you want to add a power threshold	to recognize the working status of the machine.
	>
	>You will then be prompted to select any additional custom states you want to add to the machine, such as "heating"	or "sub-idle", and custom alarms for over or under power.
	>
	>Finally, you will need to choose which Zerynth device you want to use to monitor the machine and the type of	internet connection it will use.

* >When selecting `Production machine`, you will be asked to provide a name for the machine, and the power settings for it too.
  >
  >You will have to choose whether the machine will be running with a pieces counter, as well as a defected pieces counter.
	>
	> You will then have to choose what kind of power supply the machine uses, and if you want to add a power threshold to recognize the working status of the machine.
  >
  >You will then be prompted to select any additional custom states you want to add to the machine, such as "heating" or "sub-idle", and custom alarms for over or under power.
  >
  >Finally, you will need to choose which Zerynth device you want to use to monitor the machine and the type of internet connection it will use.

* >When selecting `Electrical panel`, you will be asked to provide a name for the machine, and the power settings for it too.
  >
  >This includes the network voltage, the input voltage and amperage, the output lines details, the lines' amperage thresholds, and the maximum input amperage.
  >
  >Then, you will need to choose which Zerynth device you want to use to monitor the machine and the type of
  internet connection it will use.

## Advanced configuration

The advanced configuration is to be used by experienced users only. You have complete control over the nodes connected to your device and their behavior.

> Firstly you will be asked to choose your machine name.
>
> Afterwards, you will be able to customize your nodes, by adding new ones, by editing the existing ones, or by modifying the flow of the data.
>
> When creating new nodes, you will be asked to choose the type of node you want to add, and each type has a short description of what it does.
>
> When editing existing nodes, you will be able to change the name of the node and the connection to other nodes.
>
> You will then be able to choose which Zerynth device you want to use to monitor the machine and the type of internet connection it will use.

[//]: #               (Images)
[configurator_image]: ../../img/Configurator/Configurator.png