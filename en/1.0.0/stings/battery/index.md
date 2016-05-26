---
layout: post
title: Battery
---

> Handle operation on battery sensor.

Usage
-----

`battery` keyword is needed to instanciate this sting.

	var battery = require('battery');

Data
----

- [connector](#connector)
- [data](#data)
- [isConnector](#isconnector)
- [isState](#isstate)
- [level](#level)
- [state](#state)
- [technology](#technology)
- [temperature](#temperature)
- [voltage](#voltage)

Events
------

- [onLevelChanged](#onlevelchanged)
- [onStateChanged](#onstatechanged)

connector
=========

> Retrieve the current device power system used.

    var battery = require('battery');
    battery.connector();

Parameters
----------

None.

Return
------

- __type__ : [BatteryConnector](batteryConnector.html), current device power system.

Full Example
------------

    var battery = require('battery');
    var result = battery.connector();

  
  
data
====

> Retrieve all the current information about the battery.

    var battery = require('battery');
    battery.data();

Parameters
----------

- None.

Return
------

- __data__ : [BatteryData](batteryData.html), object containing all information about the current battery status.

Full Example
------------

	var battery = require('battery');
	var data = battery.data();
	var level = data.level;

isConnector
===========

> Test what kind of connection the device is using.

    var battery = require('battery');
    battery.isConnector(value);

Parameters
----------

- __value__ : [BatteryConnector](batteryConnector.html), type of connector to test.

Return
------

- true : bool, if connection type matches.
- false : bool, otherwise.

Full Example
------------

    var battery = require('battery');
    var result = battery.isConnector(battery.AC)

isState
=======

> Test the current state of the device battery.

    var battery = require('battery');
    battery.isState(value);

Parameters
----------

- __value__ : [BatteryState](batteryState.html), type of connector to test.

Return
------

- __true__ : bool, if state type matches.
- __false__ : bool, otherwise.

Full Example
------------

    var battery = require('battery');
    var result = battery.isState(battery.FULL)

level
=====

> Retrieve the current battery level.

    var battery = require('battery');
    battery.level();

Parameters
----------

- None.

Return
------

- __number__ : Double, current battery level between 0 and 100.

Full Example
------------

    var battery = require('battery');
    var result = battery.level();

state
=====

> Retrieve the current battery state.

    var battery = require('battery');
    battery.state();

Parameters
----------

- None.

Return
------

- __type__ : [BatteryState](batteryState.html), current battery state.

Full Example
------------

    var battery = require('battery');
    var result = battery.state();

technology
==========

> Retrieve the battery technology.

    var battery = require('battery');
    battery.technology();

Parameters
----------

- None.

Return
------

- __technology__ : String, description of the battery technology.

Full Example
------------

    var battery = require('battery');
    var result = battery.technology();

temperature
===========

> Retrieve the current battery temperature.

    var battery = require('battery');
    battery.temperature();

Parameters
----------

- None.

Return
------

- __temperature__ : Double, temperature in degree celsius.

Full Example
------------

    var battery = require('battery');
    var result = battery.temperature();

voltage
=======

> Retrieve the current battery voltage.

    var battery = require('battery');
    battery.voltage();

Parameters
----------

- None.

Return
------

- __number__ : Double, current battery voltage in Volt.

Full Example
------------

    var battery = require('battery');
    var result = battery.voltage();

onLevelChanged
==============

> Start a listener on the battery level and execute some actions when it changes.

    var battery = require('battery');
    battery.onLevelChanged(function(data) {
        // Some awesome stuff
    });

Parameters
----------

- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [BatteryData](batteryData.html), object containing all information about the new battery status.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener.


Full Example
------------

    var battery = require('battery');
    battery.onLevelChanged(function(data) {
        var newLevel = data.level;
    });

onStateChanged
==============

> Start a listener on the battery state and execute some actions when it changes.

    var battery = require('battery');
    battery.onStateChanged(function(data) {
        // Some awesome stuff
    });

Parameters
----------

- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [BatteryData](batteryData.html), object containing all information about the new battery status.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener.

Full Example
------------

    var battery = require('battery');
    battery.onLevelChanged(function(data) {
        var newState = data.state;
    });
