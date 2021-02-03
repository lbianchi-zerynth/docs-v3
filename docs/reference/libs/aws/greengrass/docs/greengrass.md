# Amazon Web Services Greengrass Library

The Zerynth AWS Greengrass Library contains helper functions for IoT devices to retrieve info about an [AWS Greengrass Core](https://aws.amazon.com/greengrass/).

!!! note
    dev-voja
	to connect to an AWS Greengrass Core after info retrieval use Zerynth AWS IoT Core Library



## The DiscoveryInfo class

##### class DiscoveryInfo

```#!py3 class DiscoveryInfo(raw_info)```

A DiscoveryInfo instance is returned by `greengrass.discover()` function.

It exposes the following attributes and methods:


* `DiscoveryInfo.raw` dictionary containing raw [discovery response](https://docs.aws.amazon.com/greengrass/latest/developerguide/gg-discover-api.html#gg-discover-response-doc).
* `DiscoveryInfo.CA()`
* `DiscoveryInfo.connectivity()`

###### DiscoveryInfo.CA

```#!py3 CA()```

Returns Greengrass Core CA Certificate if only one Server Certificate is returned by discover call. Raises `GreengrassDiscoveryInfoException` if more than one certificate is returned.

###### DiscoveryInfo.connectivity

```#!py3 connectivity()```

Returns a tuple `(core_address, core_port)` with Greengrass Core address and port if only one Core is returned by discover call. Raises `GreengrassDiscoveryInfoException` if more than one Core is returned.

## Helper Functions

###### discover

```#!py3 discover(endpoint, thingname, clicert, pkey, cacert=None)```


* **param endpoint:**   AWS server where to retrieve Greengrass core info
* **param thingname:**   AWS IoT Core or AWS Greengrass Device name
* **param clicert:**   client certificate
* **param pkey:**   client private key


Discover info about own group Greengrass Core. Returns a `DiscoveryInfo()` object.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEwODQwNTcxMjJdfQ==
-->
