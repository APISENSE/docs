---
layout: post
title: Wifi
---

> Handle operation on WiFi sensor.

Usage
-----

`wifi` keyword is needed to instanciate this sting.

	var wifi = require('wifi');

Data
----

- [authentication](#authentication)
- [bssid](#bssid)
- [data](#data)
- [frequency](#frequency)
- [isAuthentication](#isauthentication)
- [isState](#isstate)
- [rssi](#rssi)
- [ssid](#ssid)
- [state](#state)

Events
------

- [onScanChanged](#onscanchanged)
- [onSsidChanged](#onssidchanged)
- [onStateChanged](#onstatechanged)

authentication
==============

> Retrieve the authentication protocol.

    var wifi = require('wifi');
    wifi.authentication();

Parameters
----------

- None.

Return
------

- __authentication__ : [WifiAuthentication](wifiAuthentication.html), protocol use to connect to access point.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.authentication();

bssid
=====

> Retrieve the MAC address of the wireless access point.

    var wifi = require('wifi');
    wifi.bssid();

Parameters
----------

- None.

Return
------

- __bssid__ : String, current MAC address.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.bssid();

data
====

> Retrieve all the current information about the wifi.

    var wifi = require('wifi');
    wifi.data();

Parameters
----------

- None.

Return
------

- __data__ : [WifiData](wifiData.html), object containing all information about the current wifi status.

Full Example
------------

	var wifi = require('wifi');
	var data = wifi.data();
	var bssid = wifi.bssid;

frequency
=========

> Retrieve frequency signal used.

    var wifi = require('wifi');
    wifi.frequency();

Parameters
----------

- None.

Return
------

- __frequency__ : Double, current frequency in Hertz.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.frequency();

isAuthentication
================

> Test what kind of authentication the device is using.

    var wifi = require('wifi');
    wifi.isAuthentication(value);

Parameters
----------

- __value__ : [WifiAuthentication](wifiAuthentication.html), type of authentication to test.

Return
------

- true : bool, if authentication type matches.
- false : bool, otherwise.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.isAuthentication(wifi.WPA-PSK);

isState
=======

> Test the current state of the device wifi.

    var wifi = require('wifi');
    wifi.isState(value);

Parameters
----------

- __value__ : [WiFiState](wifiState.html), type of connector to test.

Return
------

- __true__ : bool, if state type matches.
- __false__ : bool, otherwise.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.isState(wifi.CONNECTED)

rssi
====

> Retrieve the wifi signal strength

    var wifi = require('wifi');
    wifi.rssi();

Parameters
----------

- None.

Return
------

- __rssi__ : Double, signal power in Decibel.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.rssi();

ssid
====

> Retrieve the name of the current access point.

    var wifi = require('wifi');
    wifi.ssid();

Parameters
----------

- None.

Return
------

- __ssid__ : String, name of the access point.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.rssi();

state
=====

> Retrieve the current wifi state.

    var wifi = require('wifi');
    wifi.state();

Parameters
----------

- None.

Return
------

- __type__ : [WifiState](wifiState.html), current wifi state.

Full Example
------------

    var wifi = require('wifi');
    var result = wifi.state();

onScanChanged
=============

> Start a listener on the wifi scan and execute some actions when it changes.

    var wifi = require('wifi');
    wifi.onScanChanged(function(data) {
        // Some awesome stuff
    });

Parameters
----------

- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [WifiData](wifiData.html), object containing all information about the new wifi status.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener.

Full Example
------------

    var wifi = require('wifi');
    var token = wifi.onScanChanged(function(data) {
        var newRssi = data.rssi;  // Will be executed for every network around
    });
    token.cancel();

onSsidChanged
=============

> Start a listener on the wifi ssid and execute some actions when it changes.

    var wifi = require('wifi');
    wifi.onSsidChanged(function(data) {
        // Some awesome stuff
    });

Parameters
----------

- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [WifiData](wifiData.html), object containing all information about the new wifi status.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener.

Full Example
------------

    var wifi = require('wifi');
    var token = wifi.onSsidChanged(function(data) {
        var newSsid = data.ssid;
    });
    token.cancel();

onStateChanged
=============

> Start a listener on the wifi scan and execute some actions when it changes.

    var wifi = require('wifi');
    wifi.onStateChanged(function(data) {
        // Some awesome stuff
    });

Parameters
----------

- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [WifiData](wifiData.html), object containing all information about the new wifi status.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener.

Full Example
------------

    var wifi = require('wifi');
    var token = wifi.onStateChanged(function(data) {
        var newState = data.state;
    });
    token.cancel();
