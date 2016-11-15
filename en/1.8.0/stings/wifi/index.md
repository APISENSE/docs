---
layout: post
title: Wifi
---

> Handle operation on wifi sensor.

Usage
-----

`wifi` keyword is needed to instanciate this sting.

    var wifi = require('wifi');

Data accessors
--------------

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

- [onStateChanged](#onstatechanged)
- [onSsidChanged](#onssidchanged)
- [onScanCompleted](#onscancompleted)

Full Example
------------

    var wifi = require('wifi');
    var recorder = require('recorder');
    var timer = require('timer');


    recorder.save({
        'authentication' : wifi.authentication(),
        'bssid' : wifi.bssid(),
        'frequency' : wifi.frequency(),
        'WEP Authentication' : wifi.isAuthentication(wifi.WEP),
        'CONNECTED State' : wifi.isState(wifi.CONNECTED),
        'rssi' : wifi.rssi(),
        'ssid' : wifi.ssid(),
        'state' : wifi.state(),
        'json' : wifi.data()
    });

    wifi.onStateChanged(function(data)) {
        recorder.save(data);
    });

    wifi.onSsidChanged(function(data)) {
        recorder.save(data);
    });

    wifi.onScanCompleted(function(data)) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        recorder.sync();
    });

authentication
==============

> Retrieve the Authentication mode used by the network.

    authentication();

Parameters
----------

- None.

Return
------

- __authentication__ : [WifiAuthentication](wifiAuthentication.html), Authentication mode used by the network

bssid
=====

> Retrieve the Basic Service Set IDentifier.

    bssid();

Parameters
----------

- None.

Return
------

- __bssid__ : String, Basic Service Set IDentifier

data
====

> Retrieve all the current information about the wifi.

    data();

Parameters
----------

- None.

Return
------

- __data__ : [WifiData](wifiData.html), object containing all information about the current wifi status.

frequency
=========

> Retrieve the Interface frequency.

    frequency();

Parameters
----------

- None.

Return
------

- __frequency__ : Double, Interface frequency

isAuthentication
================

> Test the current authentication value against the given one.

    isAuthentication(value);

Parameters
----------

- __value__ : [WifiAuthentication](wifiAuthentication.html), type of authentication to test.

Return
------

- Boolean

isState
=======

> Test the current state value against the given one.

    isState(value);

Parameters
----------

- __value__ : [WifiState](wifiState.html), type of state to test.

Return
------

- Boolean

rssi
====

> Retrieve the Received Signal Strength Indication.

    rssi();

Parameters
----------

- None.

Return
------

- __rssi__ : Double, Received Signal Strength Indication

ssid
====

> Retrieve the Service Set IDentifier.

    ssid();

Parameters
----------

- None.

Return
------

- __ssid__ : String, Service Set IDentifier

state
=====

> Retrieve the Description of the WiFi interface state.

    state();

Parameters
----------

- None.

Return
------

- __state__ : [WifiState](wifiState.html), Description of the WiFi interface state


onStateChanged
==============

> Starts a listener on the wifi state and executes some actions when it changes.

    onStateChanged(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [WifiData](wifiData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onSsidChanged
=============

> Starts a listener on the wifi ssid and executes some actions when it changes.

    onSsidChanged(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [WifiData](wifiData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onScanCompleted
===============

> Starts a listener on the wifi scan and executes some actions when it changes.

    onScanCompleted(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [WifiData](wifiData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
