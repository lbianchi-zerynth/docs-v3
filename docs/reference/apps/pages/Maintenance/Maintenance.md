# Maintenance App

???+ question "How to obtain the Maintenance App?"
    The Maintenance Application is included in the base package of the _Zerynth Industrial IoT & AI Platform_.

The Maintenance App allows for monitoring the status of the machinery and for scheduling maintenance operations.

## Overview

![maintenance_image]

For each machine the page displays the following information:

* **Name**: the name of the machine assigned by the user;
* **Asset type**: the type of asset that is being shown, which can be production machine, auxiliary machine or electrical panel;
* **Maintenance condition**: a percentage that shows how far along the machine is in relation to the next maintenance. 
  It is calculated as the minimum between the periodic maintenance condition and the working hour maintenance condition. 
  It can be a value between 0 and 100%, where 100% means that the machine needs to undergo maintenance as soon as possible;
* **Working hours**: the amount of hours worked by the machine since the last maintenance and the working hours target, in relation to the maximum amount of hours that a machine can work before it needs to undergo maintenance;
* **Next maintenance**: the next maintenance date, calculated with the periodic maintenance target;
* **Last maintenance**: the last date and time when the asset has been submitted for maintenance;

The data can be filtered by asset type or by maintenance condition, by clicking on the filter icon on the top right.

For more information, refer to the Filters page.

If your machine doesn't show up in the Maintenance overview, you are yet to set targets for that machine from the Settings.

## New Maintenance interventions

By clicking on the first icon on the right, the application will show a dialog to add a new maintenance intervention.

![new_maintenance_image]

You will be asked for some basic information:

* **Date**: the date and time of the maintenance intervention;
* **Operator**: a select to choose which operator did the maintenance intervention.
  To add a new operator, or modify the existing ones, visit the Settings page;
* **Reset counter**: a flag which allows the operator to reset or not the counters if the maintenance was not completed successfully;
* **Notes**: a brief description of the maintenance intervention, which can be filled as the operator wishes;

## Maintenance history

Clicking on the second icon on the right it’s possible to have details about the maintenance interventions history of a machine.

![maintenance_history_image]

For every intervention the app shows the following information:

* **Date**: the date and time of the maintenance intervention
* **Maintenance done**: a flag which indicate if the operator did reset the counters
* **Operator**: name and surname of the operator which supervised the maintenance intervention
* **Notes**: a brief description of the maintenance intervention



[//]: #                   (Images)
[maintenance_image]:      ../../img/Maintenance/Maintenance.png
[new_maintenance_image]:  ../../img/Maintenance/NewMaintenance.png
[maintenance_history_image]:  ../../img/Maintenance/History.png