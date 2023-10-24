# Device Management Page

![device_management_image]

The Device Management page allows to manage the devices connected to the Zerynth Industrial IoT & AI Platform, the firmwares installed and the claimed SIM Cards.

## Edge Devices

![edge_devices_image]

The Edge Devices page shows the list of devices linked to the current workspace of the _Zerynth Industrial IoT & AI Platform_. For each device, the table shows the following information:

* **Name**: the name of the device
* **ID**: the unique identifier of the device;
* **Fleet**: the fleet the device belongs to;
* **Created at**: the date and time of the device creation (expressed in local time);
* **Status**: the connection status of the device;
* **Features**: eventual additional features of the device (such as the claim of a physical device or a SIM Card).

The table can be sorted by any of the columns, and the sorting order can be reversed by clicking again on the same column.

The table has a search function, that allows to search for a device by name, ID, fleet or creation date, and a filter function, that allows to filter the devices by connection status.

Read more about the filter functions in the Filters page.

### Device details

Clicking on a device name in the table opens the Device details page. Every device has multiple tabs at the top of the page, which allow to access different information and data about the device.

#### Overview

This page shows an overview of the device, with some basic informations about connection, hardware and latest activity.

![edge_devices_single_device_overview_image]

This page is divided in multiple cards, which show the following columns:

* **Connection status**: the connection status of the device, with the last connection and its relative IP address, other than the amount of disconnections in the last 24 hours and in the last week
* **Recent data**: a graph showing dots for every message sent by the device in the last hour
* **Hardware**: the serial number of the device, with its device type (if associated to a physical device), the firmware version and the Zerynth OS version
* **Latest job**: the latest job sent to the device, with its status and the date and time of the job request
* **Last FOTA**: the last FOTA sent to the device, with its status and the date and time of the FOTA request


#### Jobs & FOTA
  
![edge_devices_single_device_jobs_fota_image]

This page shows the history of jobs and FOTA sent to the device, with two main cards showing the following columns:

* **Jobs status**: the name of the job, with the timestamp of the job request, its payload and the status of the job, which can be Pending, Done or Failed
* **FOTA status**: the name of the FOTA, with the timestamp of the FOTA request, its payload and the status of the FOTA, which can be Pending, Done or Failed


#### Activity

This page shows the activity of the device, meaning every event sent by the device or received by the device from
the Cloud.

![edge_devices_single_device_activity_image]

The activity is shown with a table showing the following columns:

* **Timestamp**: the timestamp of the activity
* **Event type**: the type of the event which occured
* **Direction**: the direction of the event, which can be Cloud to Device or Device to Cloud
* **Payload**: the payload of the event

This table can be sorted by any of the columns, and the sorting order can be reversed by clicking again on the same column.

It can also be filtered by event timestamp, type and direction. Read more about the filter functions in the Filters page.


#### Console

This page shows a live console of the messages sent by the device.

![edge_devices_single_device_console_image]

The console is displayed as a table, containing the timestamp of the message, the tag and the payload.

This table can be sorted by any of the columns, and the sorting order can be reversed by clicking again on the same	column.


#### File system

This page shows the file system of the device, with a view of the uploaded files.

![edge_devices_single_device_file_system_image]

If no files are present in the device, a message is shown instead, along with the possibility to upload some files instead.

## Firmwares

The Firmwares page shows the list of firmwares uploaded to the current workspace of the _Zerynth Industrial IoT & AI Platform_.

![firmwares_image]

For each firmware, there is a card showing the following information:

* **Name**: the name of the firmware
* **ID**: the unique identifier of the firmware
* **Creation date**: the date of the firmware creation
* **Version**: the version of the firmware
* **Owner**: the owner of the firmware

For each firmware, there is a `Schedule FOTA` button, which allows the user to schedule a FOTA for a single device or an entire fleet.

The user also has a `+ New` button in the top-right corner of the page, which allows to upload a new firmware with a custom name chosen by the user.

![firmwares_new_firmware_image]

## SIM Cards

The SIM Cards page shows the list of SIM Cards linked to the current workspace of the _Zerynth Industrial IoT & AI Platform_. 

![sim_cards_image]

For each SIM Card, the table shows the following columns:

* **ICCID**: the ICCID of the SIM Card
* **Workspace**: the workspace the SIM Card belongs to
* **Device**: the device the SIM Card is linked to
* **Plan activation**: the date of the plan activation
* **Plan expiration**: the date of the plan expiration
* **Data usage**: the amount of data used by the SIM Card
* **Status**: the status of the SIM Card, which can be Active, Suspended or Expired

At the bottom of the table, there is a button which allows to change the view, showing the SIM Cards grouped by account instead of workspace.

[//]: #                                             (Images)
[device_management_image]:                          ../../img/DeviceManagement/DeviceManagement.png
[edge_devices_image]:                               ../../img/DeviceManagement/EdgeDevices/EdgeDevices.png
[edge_devices_single_device_overview_image]:        ../../img/DeviceManagement/EdgeDevices/SingleDevice/Overview.png
[edge_devices_single_device_jobs_fota_image]:       ../../img/DeviceManagement/EdgeDevices/SingleDevice/JobsFota.png
[edge_devices_single_device_activity_image]:        ../../img/DeviceManagement/EdgeDevices/SingleDevice/Activity.png
[edge_devices_single_device_console_image]:         ../../img/DeviceManagement/EdgeDevices/SingleDevice/Console.png
[edge_devices_single_device_file_system_image]:     ../../img/DeviceManagement/EdgeDevices/SingleDevice/FileSystem.png
[firmwares_image]:                                  ../../img/DeviceManagement/Firmwares/Firmwares.png
[firmwares_new_firmware_image]:                     ../../img/DeviceManagement/Firmwares/NewFirmware.png
[sim_cards_image]:                                  ../../img/DeviceManagement/SIMCards/SIMCards.png
