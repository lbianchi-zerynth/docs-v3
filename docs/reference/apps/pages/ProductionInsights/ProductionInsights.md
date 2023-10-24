# Production Insights App

The Production Insights app provides an insight of the production situation of the machines.
It is available in the Production Insights package.

## Overview

![production_insights_overview_image]

In the overview page of the Production Insights app, there are four cards with information about the production situation of the entire workspace.

### OEE

The first card shows the overall OEE of the workspace. It is calculated as the average of the OEE of all the machines in the workspace.

It also shows the availability, the performance and the quality of the workspace, which are calculated as the average of the availability, performance and quality of all the machines in the workspace.

### Alarms

The second card shows the alarms and total alarm time of the workspace. Alarms is the number of machines in the workspace which are currently in alarm status, while the total alarm time is calculated as the sum of the alarm time of all the machines in the workspace in the selected time range.

It is also divided by machine, showing for each machine the total alarm time.

### Average cycle time

The third card shows the average cycle time of the workspace. It is calculated as the average of the average cycle time of all the machines in the workspace.

It also shows the average cycle time of each machine in the workspace.

### Total pieces

The fourth card shows the total pieces produced in the workspace. It is calculated as the sum of the total pieces produced by all the machines in the workspace in the selected time range.

It also shows the quality of the pieces (good pieces/total pieces) made by each machine in the workspace.

## Machines

![production_insights_machines_image]

In the machines page of the Production Insights app, there is a table with a list of all the machines in the workspace. For each machine, you can find the following information:
- **Name** of the machine;
- **Status** of the machine;
- **Alarm**, which shows a warning icon if the machine is in alarm status;
- **Total alarm time** of the machine in the selected time range;
- **Average cycle time** of the machine;
- **Total pieces** produced by the machine in the selected time range;
- **Good pieces** produced by the machine in the selected time range;
- **Availability** of the machine, which is calculated as the percentage of the time the machine was in working status;
- **Performance** of the machine, which is calculated as the percentage of the time the machine was in working status and the cycle time was equal or less than the average cycle time;
- **Quality** of the machine, which is calculated as the percentage of the good pieces produced by the machine;
- **OEE** of the machine, which is calculated as the product of the availability, performance and quality of the machine.

The table can be sorted by any of the columns, and the sorting order can be reversed by clicking again on the same column.

In the top-right corner of the page it’s possible to select the time range you are interested in, or the machine status, by clicking on the filter icon on the top right corner of the table. Refer to the Filters page for more information.

Clicking on a machine name will redirect you to the single machine page.


## Single Machine

![production_insights_single_machine_image1]
![production_insights_single_machine_image2]

The single machine view goes into detail of the selected machine. 

The data can be filtered by time range, by clicking on the filter icon on the top right corner of the page. Refer to the Filters page for more information.

It is divided into the following sections.

### OEE

The OEE section shows the OEE of the machine. It is calculated as the product of the availability, performance and quality of the machine.

It also shows the availability, the performance and the quality of the machine, which are calculated as the percentage of the time the machine was in working status, the percentage of the time the machine was in working status and the cycle time was equal or less than the average cycle time, and the percentage of the good pieces produced by the machine, respectively.

### Production time

The production time section shows a bar graph indicating:
- **Total production time**, based on the average cycle time;
- **All time**, which is the total time of the selected time range;
- **Planned production time**;
- **Run time**;
- **Net run time**;
- **Fully productive time**.

### Machine status

The machine status section has a timeline showing the machine status history during the selected time period, where grey is idle, green is working and the red bar underneath indicates alarms.

### Pieces

The pieces section shows a pie chart indicating the amount of good pieces and bad pieces produced by the machine in the selected time range.

### Item distribution

The item distribution section shows a bar chart grouped by hour, where the bar length is the amount of pieces, and the bar is colored red for every bad piece and green for every good piece.

### Consumption & Cost

The consumption & cost section is a small table which shows the total consumption and cost of the machine, with their units, in the selected time range.

### Consumption

The consumption section is a datapoint chart showing the energy consumption of the machine.

Hovering over the chart will show the exact value of the datapoint at a select time, and the blue dotted line indicates the average energy consumption in the selected time range.


[//]: #                                       (Images)
[production_insights_overview_image]:         ../../img/ProductionInsights/Overview/Overview.png
[production_insights_machines_image]:         ../../img/ProductionInsights/Machines/Machines.png
[production_insights_single_machine_image1]:  ../../img/ProductionInsights/Machines/SingleMachine/SingleMachine1.png
[production_insights_single_machine_image2]:  ../../img/ProductionInsights/Machines/SingleMachine/SingleMachine2.png