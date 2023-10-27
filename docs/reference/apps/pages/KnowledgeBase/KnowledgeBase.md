# Knowledge Base

## Workspaces

A Workspace is a very important entity of the Zerynth Cloud. It can be defined as an isolated virtual room, which includes its own fleets and devices.

Each Workspace is independent from the other, even in the same account. This makes it easier to separate different plants or sites of the same owner.

[//]: # (## Fleets)

## Filtering options

### Filter by date and time

This option allows you to filter the visualized data in a selected time range. In the top right corner of the page, you can find a calendar icon. 

By clicking the icon, a selection form pops up and allows selection of start and end date, as well as start and end time (in your local time zone).

![date_time_filter_image]

### Filter by machine type

This option allows you to filter the machines by their type. Generally speaking, there are three types of machines (production machines, auxiliary machines, electrical panels) from which you will be able to choose from.

In certain cases, electrical panels are already filtered through an external tab, which removes the need to show them in the filter itself.

![type_filter_image]

### Filter by machine status

This option allows you to filter the machines by their status. The machines can be either working or idle.

![status_filter_image]

### Filter by machine maintenance condition

This option allows you to filter the machines by their maintenance condition.

The maintenance condition is expressed as a percentage, which shows how far along the machine is in relation to the next maintenance.

It is calculated as the minimum between the periodic maintenance condition and the working hour maintenance condition.

The filter discerns statuses of the machines as follows:

* **OK** (green color) between 0 and 50%;
* **WARNING** (yellow color) between 51 and 75%;
* **CRITICAL** (red color) between 76 and 100%.

![maintenance_filter_image]

## Machine types

### Production machines

Organic unit inside of which part or all of the cycle of transformation from INPUT to OUTPUT happens.

### Auxiliary machines

Organic unit, part of the productive structure, inside of which, a service treatment cycle happens (i.e. water service, electricity, waste disposal, purification…)


[//]: # (### Electrical panels)

[//]: # (xxxxxxxxxxxxxxxxxxxxx)

[//]: # (## Nodes)

## Currencies (ISO 4217)

ISO 4217 is a standard published by the International Organization for Standardization (ISO) that defines alpha codes and numeric codes for the representation of currencies and provides information about the relationships between individual currencies and their minor units.

Refer to the [ISO website][iso_website] for more information.

[//]: #                     (Connections and external links)
[iso_website]:              https://www.iso.org/iso-4217-currency-codes.html

[//]: #                     (Images)
[date_time_filter_image]:   ../../img/Filters/FilterDateTime.png
[type_filter_image]:        ../../img/Filters/FilterMachineType.png
[status_filter_image]:      ../../img/Filters/FilterStatus.png
[maintenance_filter_image]: ../../img/Filters/FilterMaintenanceCondition.png