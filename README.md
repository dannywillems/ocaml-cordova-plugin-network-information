# ocaml-cordova-plugin-network-information

* gen_js_api (master branch): [![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-network-information.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-network-information)

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

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0+beta1
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-network-information https://github.com/dannywillems/ocaml-cordova-plugin-network-information.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-network-information [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin network information with
```Shell
cordova plugin add cordova-plugin-network-information
```

## How to use ?

You can access to the connection type using *Cordova_network_information.current ()*
(the unit parameter is mandatory because NetworkInformation javascript object is
initialised when the device ready event is launched).

It returns a value of type *Cordova_network_information.connection* and you can get the string
representation with *Cordova_network_information.connect_to_str* function.

## To-do

* Event listener
