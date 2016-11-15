---
layout: post
title: Battery
---

> Handle operation on battery sensor.

Usage
-----

`battery` keyword is needed to instanciate this sting.

    var battery = require('battery');

Data accessors
--------------

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
    var recorder = require('recorder');
    var timer = require('timer');


    recorder.save({
        'connector' : battery.connector(),
        'AC Connector' : battery.isConnector(battery.AC),
        'FULL State' : battery.isState(battery.FULL),
        'level' : battery.level(),
        'state' : battery.state(),
        'technology' : battery.technology(),
        'temperature' : battery.temperature(),
        'voltage' : battery.voltage(),
        'json' : battery.data()
    });

    battery.onLevelChanged(function(data)) {
        recorder.save(data);
    });

    battery.onStateChanged(function(data)) {
        recorder.save(data);
    });

    timer.at('12:00 PM', function(event) {
        recorder.sync();
    });

connector
=========

> Retrieve the Connector used to charge the battery.

    connector();

Parameters
----------

- None.

Return
------

- __connector__ : [BatteryConnector](batteryConnector.html), Connector used to charge the battery

data
====

> Retrieve all the current information about the battery.

    data();

Parameters
----------

- None.

Return
------

- __data__ : [BatteryData](batteryData.html), object containing all information about the current battery status.

isConnector
===========

> Test the current connector value against the given one.

    isConnector(value);

Parameters
----------

- __value__ : [BatteryConnector](batteryConnector.html), type of connector to test.

Return
------

- Boolean

isState
=======

> Test the current state value against the given one.

    isState(value);

Parameters
----------

- __value__ : [BatteryState](batteryState.html), type of state to test.

Return
------

- Boolean

level
=====

> Retrieve the Current battery level.

    level();

Parameters
----------

- None.

Return
------

- __level__ : Double, Current battery level

state
=====

> Retrieve the Description of the current state.

    state();

Parameters
----------

- None.

Return
------

- __state__ : [BatteryState](batteryState.html), Description of the current state

technology
==========

> Retrieve the Technology of the battery.

    technology();

Parameters
----------

- None.

Return
------

- __technology__ : String, Technology of the battery

temperature
===========

> Retrieve the Current temperature of the battery.

    temperature();

Parameters
----------

- None.

Return
------

- __temperature__ : Double, Current temperature of the battery

voltage
=======

> Retrieve the Current voltage of the battery.

    voltage();

Parameters
----------

- None.

Return
------

- __voltage__ : Double, Current voltage of the battery


onLevelChanged
==============

> Starts a listener on the battery level and executes some actions when it changes.

    onLevelChanged(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [BatteryData](batteryData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onStateChanged
==============

> Starts a listener on the battery state and executes some actions when it changes.

    onStateChanged(callback);

Parameters
----------

- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [BatteryData](batteryData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
