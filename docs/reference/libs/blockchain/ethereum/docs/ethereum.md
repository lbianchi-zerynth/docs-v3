# Ethereum

This module allows the creation of transactions and makes it easy to call contracts.

The Ethereum module is very easy to use:

```python
import streams
from blockchain.ethereum import ethereum

# prepare a transaction object
tx = ethereum.Transaction()
tx.set_value(1,ethereum.FINNEY)
tx.set_gas_price("0x430e23411")
tx.set_gas_limit("0x33450")
tx.set_nonce(0)
tx.set_receiver("0xde9F276DDff83727fB627D2C0728b5bAeA469373")
tx.set_chain(ethereum.ROPSTEN)  # Test network

# sign the transaction with a private key
tx.sign("0xa5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5a5")

# print hex RLP representation
print(tx.to_rlp(True))

# print Hashes
print(tx.hash(False).hexdigest())
print(tx.hash(True).hexdigest())

# print full info
print(tx)
```

The following constants are defined:


* `WEI`, minimum transactable unit
* `KWEI`, 1000 WEI
* `MWEI`, one million WEI
* `GWEI`, one billion WEI
* `SZABO`, 1000 GWEI
* `FINNEY`, one million GWEI
* `ETHER`, one billion GWEI
* `MAIN`, identifier of the main network
* `ROPSTEN`, identifier of the ropsten network
* `RINKEBY`, identifier of the rinkeby network
* `KOVAN`, identifier of the kovan network

###### get_address

```#!py3 get_address(pv)```

Given the private key *pv,* return the corresponding Ethereum address *pv* can be given in both binary or hex format (starting with 0x).

###### get_checksum_address

```#!py3 get_checksum_address(addr)```

Given the the Ethereum address *addr*, return the checksummed address according to [EIP 55](https://github.com/ethereum/EIPs/blob/mater/EIPS/eip-55.md).

## Transaction class

##### class Transaction

```#!py3 class Transaction(chain=MAIN)```

Creates an instance of a Transaction  on the network id specified by *chain*.

The resulting Transaction instance is empty and invalid. The following parameters must be at least specified by calling the appropriate setters:


* receiver address
* value to transfer
* gas price
* gas limit
* transaction nonce

Optionally, transaction data and network id can be set.


###### Transaction.set_receiver

```#!py3 set_receiver(address)```

**Parameters:** 

 - **address** – the receiver address in hex format starting with 0x.

Set the receiver address to *address*.

###### Transaction.set_value

```#!py3 set_value(value, unit=WEI)```

**Parameters:**
    

 - **value** – value to transfer as an hexadecimal string, bytes or integer    
 - **unit** – a unit constant, default WEI

Convert *value* to big number format according to *unit* and set the resulting big number as the transaction value.

###### Transaction.set_gas_price

```#!py3 set_gas_price(value,unit=WEI)```


**Parameters:**
    

 - **value** – gas price in hexadecimal format
 -  **unit** – a unit constant, default WEI

Convert *value* to big number format according to *unit* and set the resulting big number as the transaction gas price.

###### Transaction.set_gas_limt

```#!py3 set_gas_limt(value,unit=WEI)```

**Parameters:**
    

 - **value** – gas limit in hexadecimal format
 -  **unit** – a unit constant, default WEI

Convert *value* to big number format according to *unit* and set the resulting big number as the transaction gas limit.

###### Transaction.set_nonce

```#!py3 set_nonce(value)```


**Parameters:**

* **value** – transaction nonce as integer


Set transaction nonce.

###### Transaction.set_data

```#!py3 set_data(value)```


**Parameters:**

 - **value** – binary representation of transaction data. Can be hexadecimal or bytes.

Set transaction data to *value*.

###### Transaction.set_chain

```#!py3 set_chain(chain)```


**Parameters:**

 - **chain** – integer representing the network id of the Ethereum network.

Set the network id for the transaction.

###### Transaction.to_rlp

```#!py3 to_rlp(hex)```


**Parameters:**

 - **hex** – boolean


Return the [RLP](https://github.com/ethereum/wiki/wiki/RLP) representation of the transaction in biney form. If ```hex``` is True, the hexadecimal representation is returned.

###### Transaction.hash

```#!py3 hash(full=True)```

**Parameters:**

 - **full** – boolean

Return a hash instance (Keccak) of the transaction. To obtain the binary or string hash, call the methods digest/hexdigest on the result.
If *full* is False, fields v,r,s of the transaction are set to default values as specified in [EIP-155](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-155.md).

###### Transaction.sign

```#!py3 sign(pv)```

**Parameters:**

 - **pv** – private key in hexadecimal or binary format.

Generate a signed transaction according to EIP-155. Once signed, the transaction can be converted to RLP and broadcasted to the Ethereum network.

## Contract class

##### class Contract

```#!py3 class Contract(rpc,contract_address,key=None,address=None,chain=MAIN)```

Prepare the device to interact with an Ethereum Smart Contract.

Create an instance of the Contract class to:


* call contract functions through paid transactions (functions modifying the blockchain)
* call contract functions through simple, gas-free calls (functions not modifying the blockchain)

A device can interact with an already created contract placed at address `contract_address`.

`rpc` must be a valid RPC instance.
`chain` is the optional network id.
`key` and `address` represent device address and key needed only if paid transactions are executed.

###### Contract.register_function

```#!py3 register_function(function,gas_price=None,gas_limit=None,args_type=())```

**Parameters:**
    

 - **function** – function name
 - **gas_price** – gas price for function execution, can be None, an tuple (value, unit) or a single integer value which will be considered in WEI unit
 - **gas_limit** – gas limit for function execution, can be None, an tuple (value, unit) or a single integer value which will be considered in WEI unit
 - **args_type** – a tuple specifying function arguments’ type following [Ethereum ABI](https://github.com/ethereum/wiki/wiki/Ethereum-Contract-ABI), at the moment only a subset of possible types is supported: `address`, `uint<M>` where `0 < M < 256 and M % 8 == 0`


###### Contract.tx

```#!py3 tx(function,nonce,value,args=())```

Register a contract function to be called.

Parameters:

    

 - **function** – function to call
 - **nonce** – transaction nonce as integer (can be obtained calling rpc.getTransactionCount)
 - **value** – transaction value as a tuple (value,unit) or None
 - **args** – call arguments as a tuple


###### Contract.call

```#!py3 call(function,args=(),rv=None)```

Call a previously registered function modifying the blockchain.

**Parameters:**

 - **function** – function to call
 - **args** – call arguments as a tuple
 -  **rv** – return value: a tuple containing the number of expected bits and `str` or `int` to have respectively an hex string as the call
   return value or an integer obtained converting returned hex to
   decimal (e.g. `(160, str)` for a call returning an address)

Call a previously registered function not modifying the blockchain.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5MDkxOTcyMTQsLTM5MTU1MTk2LDg3Mz
ExNDQzMl19
-->
