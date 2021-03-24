# Job
In the ZDM a job is a function defined in your firmware that you can call remotely through the ZDM. 

List of device commands:

* Schedule
* Check a job status

## Schedule a job

To call remotely a function defined in your firmware, use the command:

```bash
zdm job schedule JOB UID [OPTIONS]
```

where ```JOB``` is the function name and ```UID``` is the device uid.

If your function expects parameters to work, you can use the command option --arg

## Check a job status

If you want to check the status of a job you scheduled, type the command:

```bash
zdm job check JOB UID
```

where ```JOB``` is the job name and ```UID``` is the device uid you want to check, you will see if your device sent a response to the job.

