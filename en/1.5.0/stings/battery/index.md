---
layout: post
---

Battery
=======

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

Full Example
------------

    var battery = require('battery');
    var log = require('log');
    var recorder = require('recorder');
    var timer = require('timer');
    
    recorder.save({
        'connector'     : battery.connector(),
        'USB Connector' : battery.isConnector(battery.USB),
        'Full'          : battery.isState(battery.FULL),
        'level'         : battery.level(),
        'state'         : battery.state(),
        'technology'    : battery.technology(),
        'temperature'   : battery.temperature(),
        'voltage'       : battery.voltage(),
        'json'          : battery.data()
    });

    battery.onLevelChanged(function(data) {
        recorder.save(data);
    });

    battery.onStateChanged(function(data) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        timer.sync();
    });

connector
=========

> Retrieve the current device power system used.

    connector()

Parameters
----------

None.

Return
------

- __type__ : [BatteryConnector](batteryConnector.html), current device power system.
  
data
====

> Retrieve all the current information about the battery.

    data()

Parameters
----------

- None.

Return
------

- __data__ : [BatteryData](batteryData.html), object containing all information about the current battery status.

isConnector
===========

> Test what kind of connection the device is using.

    isConnector(value)

Parameters
----------

- __value__ : [BatteryConnector](batteryConnector.html), type of connector to test.

Return
------

- true : bool, if connection type matches.
- false : bool, otherwise.

isState
=======

> Test the current state of the device battery.

    isState(value)

Parameters
----------

- __value__ : [BatteryState](batteryState.html), type of connector to test.

Return
------

- __true__ : bool, if state type matches.
- __false__ : bool, otherwise.

level
=====

> Retrieve the current battery level.

    level()

Parameters
----------

- None.

Return
------

- __number__ : Double, current battery level between 0 and 100.

state
=====

> Retrieve the current battery state.

    state()

Parameters
----------

- None.

Return
------

- __type__ : [BatteryState](batteryState.html), current battery state

technology
==========

> Retrieve the battery technology.

    technology()

Parameters
----------

- None.

Return
------

- __technology__ : String, description of the battery technology.

temperature
===========

> Retrieve the current battery temperature.

    temperature()

Parameters
----------

- None.

Return
------

- __temperature__ : Double, temperature in degree celsius.

voltage
=======

> Retrieve the current battery voltage.

    voltage()

Parameters
----------

- None.

Return
------

- __number__ : Double, current battery voltage in Volt.

onLevelChanged
==============

> Start a listener on the battery level and execute some actions when it changes.

    onLevelChanged(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [BatteryData](batteryData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used to cancel event listener.

onStateChanged
==============

> Start a listener on the battery state and execute some actions when it changes.

    onStateChanged(callback)

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [BatteryData](batteryData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used to cancel event listener.