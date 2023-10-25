# Reports App

???+ question "How to obtain the Reports App?"
  	The Reports Application is included in the base package of the _Zerynth Industrial IoT & AI Platform_.

The Reports Application allows the user to create and manage reports based on templates developed with the customer in mind.

The application is divided in two tabs:

* **Single reports**, which shows a list of the reports generated, either periodically or on demand, and allows to download a report.
* **Periodic reports**, which shows a list of the Report Schedulers, entities that periodically generate reports based on a template.

## Single reports

![single_reports_image]

The Single reports tab shows a list of the reports generated, with the following information:

* **Name**;
* **Type**, which can be either periodic or single. It shows if it is a user requested report or an automatically generated one;
* **Category**, which can be Smart report for PDF reports, or Data reports for CSV reports;
* **Template**, which is the template used to generate the report;
* **From** and **To**, which are the start and end dates of the data analysed by the report;
* **Download**, which is a button that allows to download the report.

## Periodic reports

![periodic_reports_image]

The Periodic reports tab shows a list of the Report Schedulers, with the following information:

* **Name**;
* **Category**, which can be Smart report for PDF reports, or Data reports for CSV reports;
* **Template**, which is the template used to generate the report;
* **Email**, which is the email address to which the report is sent;
* **Status**, a slider that shows if the scheduler is currently active or not;



[//]: #                   (Images)
[single_reports_image]:   ../../img/Reports/Single/Reports.png
[periodic_reports_image]: ../../img/Reports/Periodic/Reports.png