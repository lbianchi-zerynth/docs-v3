# Data Management

![data_management_image]

The Data Management page allows to manage the data stream from and to the Zerynth Industrial IoT & AI Platform, and it is divided in three main sections.

## Data

The Data section shows the data stream from each device to the Zerynth AI & IoT Platform.

![data_image]

The stream is displayed with a table showing the following columns:

- **Timestamp device**: the timestamp at which the device sent the data
- **Fleet**: the fleet the device belongs to
- **Device**: the id of the device which sent the data
- **Tag**: the tag of the message
- **Payload**: the payload of the message

The table can be sorted by any of the columns, and the sorting order can be reversed by clicking again on the same
column.

It can also be filtered by device, tag and payload. Read more about the filter functions in the Filters page.
## Exports

The Exports section allows to export the data stream as a `csv` or `json` file.

![exports_image]

The existing exports are displayed with a table, with the following columns:

- **Name**: the name of the export
- **Type**: the type of the export, which can be `csv` or `json`
- **Size**: the size of the export
- **Start**: the start date and time of the export (expressed in local time)
- **End**: the end date and time of the export (expressed in local time)
- **Created at**: the date and time of the creation of the export (expressed in local time)
- **Status**: the status of the export, which can be `Pending`, `Done` or `Failed`

The table can be sorted by any of the columns, and the sorting order can be reversed by clicking again on the same column.

It can also be filtered by device, tag and payload. Read more about the filter functions in the Filters page.

The user also has a `+ New` button in the top-right corner of the page, which allows to create a new export.

![exports_new_export_image]

A new export requires the following information:

- **Name**: the name of the export
- **Type**: the type of the export, which can be `csv` or `json`
- **Start date**: the start date of the export
- **End date**: the end date of the export
- **Tags**: the tags to be exported
- **Device filter**: a filter which allows to filter the data on a single device or an entire fleet

## Integrations

The Integrations section allows to integrate the data stream with external services.

![integrations_image]

The existing integrations are displayed each with a card, showing the following information:

- **Name**: the name of the integration
- **ID**: the unique identifier of the integration
- **Type**: the type of the integration, which can be `data_stream` or `event_stream`
- **Tags**: a filter on the tags of the stream, can be null to accept all tags
- **Fleets**: a filter on the fleets of the stream, can be null to accept all fleets
- **Subtype**: the subtype of the integration, such as `webhook`
- **URL**: the destination URL of the integration
- **Status**: a slider which shows the status of the integration

The user also has a `+ New` button in the top-right corner of the page, which allows to create a new integration.

![integrations_new_integration_image]

A new integration requires a name, and specific information relative to the subtype of the integration. Here is an example of a **Webhook Integration**.

![integrations_new_integration_webhook_image]
![integrations_new_integration_webhook_data_image]

[//]: #                                             (Images)
[data_management_image]:                            ../../img/DataManagement/DataManagement.png
[data_image]:                                       ../../img/DataManagement/Data/Data.png
[exports_image]:                                    ../../img/DataManagement/Exports/Exports.png
[exports_new_export_image]:                         ../../img/DataManagement/Exports/NewExport.png
[integrations_image]:                               ../../img/DataManagement/Integrations/Integrations.png
[integrations_new_integration_image]:               ../../img/DataManagement/Integrations/NewIntegration.png
[integrations_new_integration_webhook_image]:       ../../img/DataManagement/Integrations/NewIntegrationWebhook.png
[integrations_new_integration_webhook_data_image]:  ../../img/DataManagement/Integrations/NewIntegrationWebhookData.png