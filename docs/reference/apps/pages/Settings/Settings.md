# Settings Page

The Settings page allows to configure the _Zerynth Industrial IoT & AI Platform_ and its applications. 

## Overview

The main page is divided into three main sections:

* **General** settings;
* **Factory** settings;
* **Maintenance** settings.

## General settings

![general_settings_image]

The General settings page allows for three actions:

* **Generation of a new API key**;
* **Activation or deactivation of an API key**;
* **Elimination of the current workspace**.

### New API key

To generate a new API key for the current workspace, click on the `+` icon next to the `API Keys` label. 

You will need to provide a name for your newly generated API key.

![new_api_key_image]

After creating the API key, you will be presented with a recap of the key and its name.

![new_api_key_recap_image]

Make sure to copy and save the API key somewhere safe, as you will not be able to access it again.

### Activation or deactivation of an API key

To activate or deactivate an API key, click on the slider next to the API key you want to activate or deactivate.

When the API key is active, the slider will be blue, otherwise it will be grey.

### Elimination of the current workspace

To eliminate the current workspace, click on the `Delete` button in the `Danger zone` section.

You will be asked to confirm the action, as the elimination of a workspace removes devices, assets and fleets as well.

## Factory settings

![factory_settings_image]

The factory settings page allows to configure the factory shifts, the currency and the enrgy cost.

### Factory shifts

WORK IN PROGRESS

### Currency

![currency_image]

The currency settings is a dropdown list that allows to select the currency used in the factory (according to the ISO 4217 standard).

### Energy cost

The energy cost settings allows to set the cost of energy in the factory, for every kWh, in the selected currency.

## Maintenance settings

![maintenance_settings_image]

The Maintenance settings page allows to select the targets for the maintenance of the machines, and to manage the operators.

### Maintenance targets

The maintenance targets of a machine are shown in an interactive table displaying the following information:

* **Machine name**;
* **Machine type**;
* **Periodic maintenance interval**, which is the maximum amount of days between two maintenance interventions;
* **Working hours target**, which is the maximum amount of hours that a machine can work between two maintenance interventions.

To indicate that a machine is not subject to maintenance, set both the periodic maintenance interval and the working hours target to 0.

To edit the maintenance targets of a machine, simply modify the values in the table and click on the `Save` button in the top-right corner of the page.

### New operator

To create a new operator, click on the `+` icon next to the `Operators` label.

![new_operator_image]

You will be asked to provide a name and surname for the operator. Once created, an operator can be assigned to a maintenance intervention.


[//]: #                         (Images)
[general_settings_image]:       ../../img/Settings/General/General.png
[new_api_key_image]:            ../../img/Settings/General/NewAPIKey.png
[new_api_key_recap_image]:      ../../img/Settings/General/NewAPIKeyRecap.png
[factory_settings_image]:       ../../img/Settings/Factory/Factory.png
[currency_image]:							  ../../img/Settings/Factory/Currency.png
[maintenance_settings_image]:   ../../img/Settings/Maintenance/Maintenance.png
[new_operator_image]:           ../../img/Settings/Maintenance/NewOperator.png