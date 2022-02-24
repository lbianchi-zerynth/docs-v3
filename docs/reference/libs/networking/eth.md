---
layout: blog
title: Ethernet
---
## Ethernet

This module implements a generic ethernet interface.
To function correctly it needs a ethernet driver to be loaded, so that the module can use
the driver to access the underlying hardware.

The link between the net module and the ethernet driver is
established without the programmer
intervetion by the driver itself.

## Exceptions

### exception `CantRegisterInterfaceError`
The ethernet interface cannot be registered.

### exception `ConnectionError`
A connection error occurred during ethernet interface configuration.

### exception `ConnectionTimeoutError`
The connection attempt has timed out.

### exception `ResolveError`
Host cannot be resolved to its IP address.

### exception `NetworkGenericError`
Generic error occurred

## Functions

### function `configure`
```python
configure(dhcp=True, ip="", mask="", gateway="", dns="8.8.8.8", timeout=60000, hostname="")
```
Configures the ethernet interface with given arguments. If `dhcp` is *True* (the default) other arguments are ignored.
When `dhcp` is *False*, the other arguments are:

* `ip`: is the IP address.
* `mask`: the net mask expressed as A.B.C.D dotted address.
* `gateway`: the gateway to be used as default router.
* `dns`: the Domain Name Server to be used for name resolution. Default is "8.8.8.8", the Google DNS.
* `timeout`: Connection timeout in milliseconds. `ConnectionTimeoutError` is raised if connection do not succeed during this time. Default value 60000 ms.
* `hostname`: hostname associated with the interface. When the `hostname` is empty string, the dcn (Device Common Name) is used as hostname. Default value "".

### function `start`
```python
start()
```
The function starts the interface by initiating the DHCP configuration and other IP setups (routing, DNS, etc.).
The DHCP or static IP parameters are used depending upon the arguments passed to the `configure()` function.

### function `stop`
```python
stop()
```
The interface is stopped, all connections dropped, and all socket closed related to ethernet interface. This is like `disconnect()` but performed only if the interface was previously connected.

### function `disconnect`
```python
disconnect()
```
The interface is stopped, all connections dropped, and all socket closed related to ethernet interface.

### function `down`
```python
down()
```
The ethernet interface is shut down by releasing all resources and low level drivers associated with it.

### function `resolve`
```python
resolve(host)
```
Resolves the symbolic name for the given `host` to its IP address by using the configured DNS server and returning a string with the result.

When the `host` cannot be resolved, the `ResolveError` exception is raised.

### function `info`
```python
info()
```
Returns a tuple with the IP parameters associated to the interface. The tuple is composed by the following elements:

0. `Bool`: DHCP enabled (*True*) or disabled (*False*)
1. `String`: IP address
2. `String`: netmask
3. `String`: gateway
4. `String`: DNS
5. `String`: MAC address

### function `is_connected`
```python
is_connected()
```
Returns *True* if the interface is connected, *False* otherwise.

## Examples

Using the ethernet module is very easy:

```python
from bsp import board

from networking import eth

board.init()
board.summary()

try:
    # Configure ethernet to use dhcp
    eth.configure(dhcp=True)
    # Start the interface
    eth.start()
    # Print the ip, gateway, mask, dns and mac address
    print(eth.info())
    # Try resolving some hostname via dns
    ip=eth.resolve("www.zerynth.com")
    print("resolved",ip)
    # sleep a little bit
    sleep(5000)
    # disable ethernet
    eth.stop()
except ConnectionError:
    print("Ethernet Connection Exception")
except ConnectionTimeoutError:
    print("Ethernet Connection Timeout Exception")
except ResolveError:
    print("Resolv error Exception")
except NetworkGenericError:
    print("Generic Ethernet Exception")
except Exception as e:
    raise e


while True:
    sleep(1000)

```

More configuration is also available:

```python
from bsp import board

from networking import eth

board.init()
board.summary()

try:
    # Configure ethernet to use static address
    eth.configure(dhcp=False, ip="192.168.1.20", gateway="192.168.1.1", mask="255.255.255.0", dns="8.8.4.4")
    # Start the interface
    eth.start()
    # Print the ip, gateway, mask, dns and mac address
    print(eth.info())
    # Try resolving some hostname via dns
    ip=eth.resolve("www.zerynth.com")
    print("resolved",ip)
    # sleep a little bit
    sleep(5000)
    # disable ethernet
    eth.stop()
except ConnectionError:
    print("Ethernet Connection Exception")
except ConnectionTimeoutError:
    print("Ethernet Connection Timeout Exception")
except ResolveError:
    print("Resolv error Exception")
except NetworkGenericError:
    print("Generic Ethernet Exception")
except Exception as e:
    raise e


while True:
    sleep(1000)

```



