# Engine Rules App

The Engine Rules Application is included in the base package of the _Zerynth Industrial IoT & AI Platform_. This App allows to set custom rules to be applied to the data contained in the Platform.
If a rule is broken, the user will be notified via email, with an option to allow a resolution.

An example of this Application is the following: if a machine has a consumption which is too high, and again when the consumption returns to a regular level, the user will be notified via email.

## Rules

The rules are the core of the Engine Rules Application. Rules can be used to set the conditions to be met in order to trigger an alarm.

The rules are divided into three main categories:
- **Machine Monitoring**, which allows for rules to be set on the power or consumption coming from the machine;
- **Maintenance**, which allows for rules to be set on new maintenances performed on the machine;
- **Custom**, which allows for rules to be set on parameters specified by the user.