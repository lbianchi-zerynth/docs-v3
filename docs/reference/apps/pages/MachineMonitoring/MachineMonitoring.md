# Machine Monitoring App

The Machine Monitoring Application represents the base package of the _Zerynth Industrial IoT & AI Platform_, and it enables:

* States and alarm monitoring of machines;
* Consumption analysis and monitoring of machines and areas/buildings;
* Management and planning of machines maintenance.

The Machine Monitoring App gives an overview of the machines and information about their energy consumption.

This App is organised into two sections based on the machinery type:

* Machines
* Electrical Panels

## Machines

The Machines section allows the user to check and manage alarms and status of the machines in the Workspace.

### Overview

![overview_machines_image]

The header shows information about all the machines:

* **Current power**, which is the sum of the current power of all the machines;
* **Total consumption** in kWh in the selected time period;
* **Total costs** in the selected time period, based on the currency and energy cost.
  Refer to the Settings page for more information;
* **Energy contributions**, which is a pie chart that displays the distribution of the energy consumption based on the machine type.
  By hovering over it, you will see the total energy consumption (in kWh) of every type.

Both the consumption and the costs have a delta (in percentage) inside the card. That is a reference to the previous period, which is the same length as the selected interval, moved in the immediate past.

It is colored green if the delta is negative (lower consumptions/costs), or red if the delta is positive (higher consumptions/costs). If the delta is 0, it’s colored in gray.

In the top-right corner of the page it’s possible to select the time range you are interested in.

Refer to the Filters page for more information.

In the lower part of the page, there is a table displaying the details for each machine during the time period selected, along with some other information:

* **Machine name**;
* **Machine status**, which can be Idle or Working;
* **Alarm state** of the machine, which shows an alert icon if the machine is in alarm;
* **Machine type**;
* **Energy consumption** in kWh;
* **Total cost** in the selected time period, based on the currency and energy cost;
* **Power Analyzer**, which shows an icon if the machine is connected to a Power Meter and has a more accurate reading of consumptions.
  Refer to the Settings page for more information;

Two lists in the top-right corner of this smaller section give the possibility to filter machines on the machine type and status. 

Refer to the Filters page for more information.

### Single machine

By clicking on a machine name, you will be redirected to the detailed consumption page of the machine.

![single_machine_image]

This page displays information about the selected machine in the selected time range.

At the top of the page, panels show overview data of the machine:

* **Current machine status**, which can be working or idle;
* **Current power**;
* **Total consumption** in the selected time range;
* **Total costs** in the selected time range, based on the currency and energy cost.
  Refer to the Settings page for more information;
* **Consumption by status**, a pie chart showing the detail about consumption for each status.
  
Both the consumption and the costs have a delta (in percentage) inside the card. That is a reference to the previous period, which is the same length as the selected interval, moved in the immediate past.


It is colored green if the delta is negative (lower consumptions/costs), or red if the delta is positive (higher consumptions/costs). If the delta is 0, it’s colored in gray.

Below these overview cards, there is a timeline showing the machine status history during the selected time period.

At the bottom of the page a chart showing the energy consumption of the selected machine during the selected time period.


## Electrical panels

The Electrical panels section allows the user to check and manage alarms and status of a zone or an area.

### Overview

![overview_panels_image]

In the top right corner it’s possible to select the time range you are interested in. Refer to the Filters page for more information.

The main page shows a table with the list of all the electrical panels in the Workspace, with the following information:

* **Panel name**, which is assigned by the user at the time of creation;
* **Panel type** (currently only "Electrical Panel" is supported);
* **Status**, which can be Working or Disconnected;
* **Alarm**, which shows an alert icon if the panel is in alarm;
* **Power Analyzer**, which shows an icon if the panel is connected to a Power Meter and has a more accurate reading of consumptions.

### Single panel

By clicking on a panel name, you will be redirected to a more detailed view.

![single_panel_image1]

![single_panel_image2]

At the top of the page, two rows of panels display overview information about input and output lines of the panel.

The information is shown in cards, which are sections each with its set of data.

#### Input lines cards:

* **The overall status**, which can be Working or Disconnected.
  The overall status will be Disconnected if one or more lines are disconnected, Working in any other case;
* **The status of the single lines**, illustrated as little dots in the same number as the input lines, they’re grey if Disconnected and green if Working.
  The line status will be Disconnected if the line is absorbing less than 5% of the maximum power, Working in any other case;
* **The amount of phase unbalance** (in percentage) between the lines.
  The calculation of phase unbalance is only available when a Power Analyzer is installed as well.

#### Output lines cards:

* **The current power consumption**;
* **The total power consumption** in the selected time range;
* **The total costs** in the selected time range, based on the currency and energy cost.
  Refer to the Settings page for more information;
* **The consumption distribution** between the lines.

#### Electric cabinet status

A timeline showing the status and alarms of the cabinet in the selected time range, where green is Working, grey is Disconnected and red is alarm.

#### Consumption

A chart showing the energy consumption during the selected time range.

At the bottom of this page, there is a view on the output line through a list showing the following information:

* **Line name**;
* **Line status**;
* **Alarm** (if present) of a line;
* **Energy consumption of the line** in the selected time range;
* **Total cost** in the selected time range, based on the currency and energy cost.
  Refer to the Settings page for more information.

### Single line

By clicking on an output line’s name, you will be redirected to the detailed view with information about the single line.

![single_line_image]

This page presents a header with overall information about the cabinet:

* **Cabinet status**;
* **Current power**;
* **Total consumption** in the selected time range;
* **Total costs** in the selected time range, based on the currency and energy cost.
  Refer to the Settings page for more information;
* **Consumption by state**, a pie chart showing the distribution of the energy consumption based on the cabinet status.

Then the timeline showing the status distribution during the selected time range and the chart displaying the energy consumption.

[//]: #                     (Images)
[overview_machines_image]:  ../../img/MachineMonitoring/Machines/Machines.png
[single_machine_image]:     ../../img/MachineMonitoring/Machines/SingleMachine/SingleMachine.png
[overview_panels_image]:    ../../img/MachineMonitoring/ElectricalPanels/Panels.png
[single_panel_image1]:      ../../img/MachineMonitoring/ElectricalPanels/SinglePanel/SinglePanel1.png
[single_panel_image2]:      ../../img/MachineMonitoring/ElectricalPanels/SinglePanel/SinglePanel2.png
[single_line_image]:        ../../img/MachineMonitoring/ElectricalPanels/SinglePanel/SingleLine/SingleLine.png
