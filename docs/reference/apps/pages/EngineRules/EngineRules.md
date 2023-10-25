# Rules App

???+ question "How to obtain the Rules App?"
  	The Rules Application is included in the base package of the _Zerynth Industrial IoT & AI Platform_. 

This App allows to set custom rules to be applied to the data contained in the Platform.

If a condition is met, the user will be notified via email, with an option to allow a resolution.

## Rules

The rules are the core of the Engine Rules Application. Rules can be used to set the conditions to be met in order to trigger an alarm.

!!! important
		The rules update every minute, so there can be a waiting time of up to 60 seconds before a rule is in place.

The rules are divided into three main categories:

* **Machine Monitoring**, which allows for rules to be set on the power or consumption coming from the machine;
* **Production Insights**, which allows for rules to be set on various production KPIs of the machine;
* **Maintenance**, which allows for rules to be set on the maintenance interventions and upcoming maintenances of the machine.

* Notification name
* machine (singole macchine o se vuoto sinottico)
* parameter
* operator
* threshold
* time range (finestra temporale in cui deve essere verificata la condizione)
* conf period
* channel + destination

sempre un minuto di buffer per aggiornamenti alla rule (minuto preciso)