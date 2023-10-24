# Machine Control App

The Machine Control application allows you to execute jobs on your machines remotely. From the main screen you will see the devices that are enabled to be controlled remotely.

## Overview

![machine_control_image]

The content of the page is a list of devices, displaying the following information for every row:
- **Device name**;
- **Alarm**, shown as a red alarm icon if the device is in alarm state, transparent otherwise;
- **Status**, shown as a bar at the bottom of the row, which is green if the device is Working, grey if it is Idle.

Clicking on a row will open the device detail page. From this next page it's possible to actually control the device.

## Single Machine

![machine_control_device_image]   

The content of the page is divided in three cards.

The first card is the Device status. It shows Idle with a grey background if the device is idle, Working with a green background if the device is working, and a red alarm icon if the device is in alarm state.

Next to the status, the Job section is shown, with the following information:
- **Job name**;
- **Value** that will be sent to the device;
- **Send** button, which will initiate the job.

Finally the page shows the Consumption card, with a graph that shows the consumption of the device in the selected time range.
Refer to the Filters section for more information.


[//]: #                         (Images)
[machine_control_image]:        ../../img/MachineControl/MachineControl.png                             "Machine Control overview"
[machine_control_device_image]: ../../img/MachineControl/SingleMachine/SingleMachine.png "Machine Control device detail"