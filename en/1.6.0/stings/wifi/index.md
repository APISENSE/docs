---
layout: post
title: Wifi
---

> Handle operation on WiFi sensor.

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

- [onScanCompleted](#onscancompleted)
- [onSsidChanged](#onssidchanged)
- [onStateChanged](#onstatechanged)

Full Example
------------

    var wifi = require('wifi');
    var recorder = require('recorder');
    var timer = require('timer');

    recorder.save({
        'authentication' : wifi.authentication(),
        'bssid'          : wifi.bssid(),
        'frequency'      : wifi.frequency(),
        'WPAPSK Auth'    : wifi.isAuthentication(wifi.WPA-PSK),
        'isConnected'    : wifi.isState(wifi.CONNECTED),
        'rssi'           : wifi.rssi(),
        'ssid'           : wifi.ssid(),
        'state'          : wifi.state(),
        'json'           : wifi.data()
    })

    wifi.onScanChanged(function(data) {
        recorder.save(data);
    });

    wifi.onSsidChanged(function(data) {
        recorder.save(data);
    });

    wifi.onStateChanged(function(data) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        recorder.sync();
    });

authentication
==============

> Retrieve the authentication protocol.

    authentication()

Parameters
----------

- None.

Return
------

- __authentication__ : [WifiAuthentication](wifiAuthentication.html), protocol use to connect to access point.

bssid
=====

> Retrieve the MAC address of the wireless access point.

    bssid()

Parameters
----------

- None.

Return
------

- __bssid__ : String, current MAC address.

data
====

> Retrieve all the current information about the wifi.

    data()

Parameters
----------

- None.

Return
------

- __data__ : [WifiData](wifiData.html), object containing all information about the current wifi status.

frequency
=========

> Retrieve frequency signal used.

    frequency()

Parameters
----------

- None.

Return
------

- __frequency__ : Double, current frequency in Hertz.

isAuthentication
================

> Test what kind of authentication the device is using.

    isAuthentication(value)

Parameters
----------

- __value__ : [WifiAuthentication](wifiAuthentication.html), type of authentication to test.

Return
------

- true : bool, if authentication type matches.
- false : bool, otherwise.

isState
=======

> Test the current state of the device wifi.

    isState(value)

Parameters
----------

- __value__ : [WiFiState](wifiState.html), type of connector to test.

Return
------

- __true__ : bool, if state type matches.
- __false__ : bool, otherwise.

rssi
====

> Retrieve the wifi signal strength

    rssi()

Parameters
----------

- None.

Return
------

- __rssi__ : Double, signal power in Decibel.

ssid
====

> Retrieve the name of the current access point.

    ssid()

Parameters
----------

- None.

Return
------

- __ssid__ : String, name of the access point.

state
=====

> Retrieve the current wifi state.

    state()

Parameters
----------

- None.

Return
------

- __type__ : [WifiState](wifiState.html), current wifi state.

onScanCompleted
=============

> Start a listener on the wifi scan and execute some actions when it changes.

    onScanCompleted(callback)

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [WifiData](wifiData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used to cancel event listener.

onSsidChanged
=============

> Start a listener on the wifi ssid and execute some actions when it changes.

    onSsidChanged(callback)

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [WifiData](wifiData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used to cancel event listener.

onStateChanged
=============

> Start a listener on the wifi scan and execute some actions when it changes.

    onStateChanged(callback)

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [WifiData](wifiData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used to cancel event listener.
