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
- [dns](#dns)
- [frequency](#frequency)
- [ip](#ip)
- [isAuthentication](#isauthentication)
- [isState](#isstate)
- [mac](#mac)
- [rssi](#rssi)
- [ssid](#ssid)
- [state](#state)
- [timestamp](#timestamp)
- [tun](#tun)
- [type](#type)
- [wlan](#wlan)

Methods
-------

- [data](#data)

Events
------

- [onStateChanged](#onstatechanged)
- [onSsidChanged](#onssidchanged)
- [onScanCompleted](#onscancompleted)
- [onConnected](#onconnected)

Full Example
------------

    var wifi = require('wifi');
    var recorder = require('recorder');

    var dataResult = wifi.data();


    recorder.save({
        'NONE Authentication' : wifi.isAuthentication(wifi.NONE),
        'bssid' : wifi.bssid(),
        'dns' : wifi.dns(),
        'frequency' : wifi.frequency(),
        'ip' : wifi.ip(),
        'mac' : wifi.mac(),
        'rssi' : wifi.rssi(),
        'ssid' : wifi.ssid(),
        'CONNECTED State' : wifi.isState(wifi.CONNECTED),
        'timestamp' : wifi.timestamp(),
        'tun' : wifi.tun(),
        'type' : wifi.type(),
        'wlan' : wifi.wlan(),
        'json' : wifi.data()
    });

    wifi.onStateChanged(function(data) {
        recorder.save(data);
        recorder.sync();
    });

    wifi.onSsidChanged(function(data) {
        recorder.save(data);
        recorder.sync();
    });

    wifi.onScanCompleted(function(data) {
        recorder.save(data);
        recorder.sync();
    });

    wifi.onConnected(function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


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

dns
===

> Retrieve the Information about configured DNS.

    dns();

Parameters
----------

- None.

Return
------

- __dns__ : DNSData, Information about configured DNS

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

ip
==

> Retrieve the Information about IP data.

    ip();

Parameters
----------

- None.

Return
------

- __ip__ : IpData, Information about IP data

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

mac
===

> Retrieve the The MAC address of the WiFi interface.

    mac();

Parameters
----------

- None.

Return
------

- __mac__ : String, The MAC address of the WiFi interface

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

timestamp
=========

> Retrieve the represents the time of the operation..

    timestamp();

Parameters
----------

- None.

Return
------

- __timestamp__ : Long, represents the time of the operation.

tun
===

> Retrieve the Information about the tun interface.

    tun();

Parameters
----------

- None.

Return
------

- __tun__ : RxTxData, Information about the tun interface

type
====

> Retrieve the Type of the wifi connection (e.g. 802.11n).

    type();

Parameters
----------

- None.

Return
------

- __type__ : String, Type of the wifi connection (e.g. 802.11n)

wlan
====

> Retrieve the Information about the wlan interface.

    wlan();

Parameters
----------

- None.

Return
------

- __wlan__ : RxTxData, Information about the wlan interface




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
- [WifiData](wifiData.html)
 
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

onConnected
===========

> Starts a listener on the wifi connected and executes some actions when it changes.

    onConnected(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [WifiData](wifiData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
