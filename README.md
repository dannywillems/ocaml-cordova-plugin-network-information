# ocaml-cordova-plugin-network-information

Binding to
[cordova-plugin-network-information](https://github.com/apache/cordova-plugin-network-information).

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-network-information-example).

## What does cordova-plugin-network-information do ?

```
This plugin provides an implementation of an old version of the Network
Information API. It provides information about the device's cellular and wifi
connection, and whether the device has an internet connection.
```

Source: [cordova-plugin-network-information](https://github.com/apache/cordova-plugin-network-information)

## Repository branches and tags

Only gen_js_api version is developed.

## How to use ?

You can access to the connection type using *Network_information.current ()*
(the unit parameter is mandatory because NetworkInformation javascript object is
initialised when the device ready event is launched).

It returns a value of type *Network_information.connection* and you can get the string
representation with *Network_information.connect_to_str* function.

## To-do

* Event listener
