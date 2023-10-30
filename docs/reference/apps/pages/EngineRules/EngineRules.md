# Rules App

???+ question "How to obtain the Rules App?"
  	The Rules Application is included in the base package of the _Zerynth Industrial IoT & AI Platform_. 

This App allows to set custom rules to be applied to the data contained in the Platform.

If a condition is met, the user will be notified, in order to resolve the issue.

The rules are the core of the Engine Rules Application. Rules can be used to set the conditions to be met in order to trigger an alarm.

## Overview

In the Rules App you will see a list of all the rules that have been created in the workspace.

The table shows the following information for each rule:

* **Status**, a slider which can activate or deactivate the rule;
* **Name**, the name of the rule;
* **Parameter**, the parameter on which the rule is applied;
* **Notification channels**, the channels on which the notification will be sent;
* **Created at**, the date and time when the rule was created;
* **Edit**, a button to edit the rule;
* **Delete**, a button to delete the rule.

![rules_image]

!!! important
		The rules update every minute, so there can be a waiting time of up to 60 seconds before a rule is in place.

The rules are divided into three main categories:

* **Machine Monitoring**, which allows for rules to be set on the power or consumption coming from the machine;
* **Production Insights**, which allows for rules to be set on various production KPIs of the machine;
* **Maintenance**, which allows for rules to be set on the maintenance interventions and upcoming maintenances of the machine.

![new_rule_image]

## Machine Monitoring Rules

The Machine Monitoring rules allow for rules to be set on the power or consumption coming from the machine.

![new_rule_machine_monitoring_image]

When creating a rule, the following parameters can be set:

* **Notification name**: The name of the notification that will be sent when the rule is triggered;
* **Machine**: The machine on which the rule will be applied. If no machine is selected, the rule will be applied to all the machines in the workspace;
* **Parameter**: The parameter on which the rule will be applied. The available parameters are:
	* **Consumption**: The consumption of the machine;
	* **Power**: The power of the machine;
* **Operator**: The operator to be used in the rule. The available operators are:
	* **>**: greater than;
	* **<**: less than;
	* **==**: equal to;
    * **!=**: not equal to;
    * **>=**: greater than or equal to;
    * **<=**: less than or equal to;
* **Threshold**: The threshold value to be used in the rule. The available units are:
	* **Wh**: Watt-hour (when the parameter is Consumption);
	* **W**: Watt (when the parameter is Power);
* **Time range**: The range of time in which the rule will be applied. The available time ranges are:
	* **5 minutes**: the last 5 minutes;
    * **10 minutes**: the last 10 minutes;
    * **15 minutes**: the last 15 minutes;
    * **30 minutes**: the last 30 minutes;
    * **1 hour**: the last hour;
* **Confirmation period**: The amount of time to wait when the condition is met before activating the alert;
* **Channel**: The channel on which the notification will be sent (email or Google Chat);
* **Destinations**: The destination of the notification (email address or Google Chat room).

## Production Insights Rules

The Production Insights rules allow for rules to be set on various production KPIs of the machine.

![new_rule_production_insights_image]

When creating a rule, the following parameters can be set:

* **Notification name**: The name of the notification that will be sent when the rule is triggered;
* **Machine**: The machine on which the rule will be applied. If no machine is selected, the rule will be applied to all the machines in the workspace;
* **Parameter**: The parameter on which the rule will be applied. The available parameters are:
	* **OEE**: The Overall Equipment Effectiveness of the machine;
	* **Availability**: The availability of the machine;
	* **Performance**: The performance of the machine;
	* **Quality**: The quality of the machine;
* **Operator**: The operator to be used in the rule. The available operators are:
	* **>**: greater than;
	* **<**: less than;
	* **==**: equal to;
	* **!=**: not equal to;
	* **>=**: greater than or equal to;
	* **<=**: less than or equal to;
* **Threshold**: The threshold value to be used in the rule. The available units are:
	* **%**: percentage (when the parameter is OEE, Availability, Performance or Quality);
* **Time range**: The range of time in which the rule will be applied. The available time ranges are:
	* **5 minutes**: the last 5 minutes;
	* **10 minutes**: the last 10 minutes;
	* **15 minutes**: the last 15 minutes;
	* **30 minutes**: the last 30 minutes;
	* **1 hour**: the last hour;
* **Confirmation period**: The amount of time to wait when the condition is met before activating the alert;
* **Channel**: The channel on which the notification will be sent (email or Google Chat);
* **Destinations**: The destination of the notification (email address or Google Chat room).

## Maintenance Rules

The Maintenance rules allow for rules to be set on the maintenance interventions and upcoming maintenances of the machine.

![new_rule_maintenance_image]

When creating a rule, the following parameters can be set:

* **Notification name**: The name of the notification that will be sent when the rule is triggered;
* **Machine**: The machine on which the rule will be applied. If no machine is selected, the rule will be applied to all the machines in the workspace;
* **Parameter**: The parameter on which the rule will be applied. The available parameters are:
	* **Maintenance done**: sends a notification when a new maintenance intervention is done on a machine;
	* **Maintenance due**: sends a notification when a new maintenance intervention is due on a machine;
* **Time left to maintenance** (only for Maintenance due): The amount of time left before the maintenance intervention is due (in hours or days);
* **Channel**: The channel on which the notification will be sent (email or Google Chat);
* **Destinations**: The destination of the notification (email address or Google Chat room).


[//]: # (Images)

[rules_image]: ../../img/Rules/Rules.png
[new_rule_image]: ../../img/Rules/NewRule.png
[new_rule_machine_monitoring_image]: ../../img/Rules/NewRuleMachineMonitoring.png
[new_rule_production_insights_image]: ../../img/Rules/NewRuleProductionInsights.png
[new_rule_maintenance_image]: ../../img/Rules/NewRuleMaintenance.png
[edit_rule_image]: ../../img/Rules/EditRule.png
[delete_rule_image]: ../../img/Rules/DeleteRule.png