---
layout: post
title: Cpu
---

> Handle operation on cpu sensor.

Usage
-----

`cpu` keyword is needed to instanciate this sting.

    var cpu = require('cpu');


Data accessors
--------------

- [cpuArchitecture](#cpuarchitecture)
- [cpuCores](#cpucores)
- [cpuImplementer](#cpuimplementer)
- [cpuPart](#cpupart)
- [cpuRevision](#cpurevision)
- [cpuVariant](#cpuvariant)
- [hardware](#hardware)
- [idleTime](#idletime)
- [loadAverage15Min](#loadaverage15min)
- [loadAverage1Min](#loadaverage1min)
- [loadAverage5Min](#loadaverage5min)
- [loadAverageActiveTasks](#loadaverageactivetasks)
- [loadAverageTotalTasks](#loadaveragetotaltasks)
- [processor](#processor)
- [revision](#revision)
- [serial](#serial)
- [timestamp](#timestamp)
- [uptime](#uptime)

Methods
-------

- [data](#data)

Full Example
------------

    var cpu = require('cpu');
    var recorder = require('recorder');

    var dataResult = cpu.data();


    recorder.save({
        'cpuArchitecture' : cpu.cpuArchitecture(),
        'cpuCores' : cpu.cpuCores(),
        'cpuImplementer' : cpu.cpuImplementer(),
        'cpuPart' : cpu.cpuPart(),
        'cpuRevision' : cpu.cpuRevision(),
        'cpuVariant' : cpu.cpuVariant(),
        'hardware' : cpu.hardware(),
        'idleTime' : cpu.idleTime(),
        'loadAverage15Min' : cpu.loadAverage15Min(),
        'loadAverage1Min' : cpu.loadAverage1Min(),
        'loadAverage5Min' : cpu.loadAverage5Min(),
        'loadAverageActiveTasks' : cpu.loadAverageActiveTasks(),
        'loadAverageTotalTasks' : cpu.loadAverageTotalTasks(),
        'processor' : cpu.processor(),
        'revision' : cpu.revision(),
        'serial' : cpu.serial(),
        'timestamp' : cpu.timestamp(),
        'uptime' : cpu.uptime(),
        'json' : cpu.data()
    });


---


cpuArchitecture
===============

> Retrieve the Value of the architecture.

    cpuArchitecture();

Parameters
----------

- None.

Return
------

- __cpuArchitecture__ : Integer, Value of the architecture

cpuCores
========

> Retrieve the Number of CPU cores.

    cpuCores();

Parameters
----------

- None.

Return
------

- __cpuCores__ : Integer, Number of CPU cores

cpuImplementer
==============

> Retrieve the Value of the CPU implementer.

    cpuImplementer();

Parameters
----------

- None.

Return
------

- __cpuImplementer__ : String, Value of the CPU implementer

cpuPart
=======

> Retrieve the Value of the part.

    cpuPart();

Parameters
----------

- None.

Return
------

- __cpuPart__ : String, Value of the part

cpuRevision
===========

> Retrieve the Value of the revision.

    cpuRevision();

Parameters
----------

- None.

Return
------

- __cpuRevision__ : Integer, Value of the revision

cpuVariant
==========

> Retrieve the Value of the variant.

    cpuVariant();

Parameters
----------

- None.

Return
------

- __cpuVariant__ : String, Value of the variant

hardware
========

> Retrieve the Value of the hardware.

    hardware();

Parameters
----------

- None.

Return
------

- __hardware__ : String, Value of the hardware

idleTime
========

> Retrieve the CPU idle time.

    idleTime();

Parameters
----------

- None.

Return
------

- __idleTime__ : Float, CPU idle time

loadAverage15Min
================

> Retrieve the Load average of the past 15 minutes.

    loadAverage15Min();

Parameters
----------

- None.

Return
------

- __loadAverage15Min__ : Float, Load average of the past 15 minutes

loadAverage1Min
===============

> Retrieve the Load average of the past minute.

    loadAverage1Min();

Parameters
----------

- None.

Return
------

- __loadAverage1Min__ : Float, Load average of the past minute

loadAverage5Min
===============

> Retrieve the Load average of the past 5 minutes.

    loadAverage5Min();

Parameters
----------

- None.

Return
------

- __loadAverage5Min__ : Float, Load average of the past 5 minutes

loadAverageActiveTasks
======================

> Retrieve the Load average of the active tasks.

    loadAverageActiveTasks();

Parameters
----------

- None.

Return
------

- __loadAverageActiveTasks__ : Integer, Load average of the active tasks

loadAverageTotalTasks
=====================

> Retrieve the Load average of the total tasks.

    loadAverageTotalTasks();

Parameters
----------

- None.

Return
------

- __loadAverageTotalTasks__ : Integer, Load average of the total tasks

processor
=========

> Retrieve the Name of the processor.

    processor();

Parameters
----------

- None.

Return
------

- __processor__ : String, Name of the processor

revision
========

> Retrieve the Value of the revision.

    revision();

Parameters
----------

- None.

Return
------

- __revision__ : String, Value of the revision

serial
======

> Retrieve the Value of the serial.

    serial();

Parameters
----------

- None.

Return
------

- __serial__ : String, Value of the serial

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

uptime
======

> Retrieve the CPU uptime.

    uptime();

Parameters
----------

- None.

Return
------

- __uptime__ : Float, CPU uptime




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
- [CpuData](cpuData.html)
 
