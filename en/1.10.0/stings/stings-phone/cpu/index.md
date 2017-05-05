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

- [cpuarchitecture](#cpuarchitecture)
- [cpucores](#cpucores)
- [cpuimplementer](#cpuimplementer)
- [cpupart](#cpupart)
- [cpurevision](#cpurevision)
- [cpuvariant](#cpuvariant)
- [hardware](#hardware)
- [processor](#processor)
- [revision](#revision)
- [serial](#serial)
- [timestamp](#timestamp)

Methods
-------

- [data](#data)

Full Example
------------

    var cpu = require('cpu');
    var recorder = require('recorder');

    var dataResult = cpu.data();


    recorder.save({
        'cpuarchitecture' : cpu.cpuarchitecture(),
        'cpucores' : cpu.cpucores(),
        'cpuimplementer' : cpu.cpuimplementer(),
        'cpupart' : cpu.cpupart(),
        'cpurevision' : cpu.cpurevision(),
        'cpuvariant' : cpu.cpuvariant(),
        'hardware' : cpu.hardware(),
        'processor' : cpu.processor(),
        'revision' : cpu.revision(),
        'serial' : cpu.serial(),
        'timestamp' : cpu.timestamp(),
        'json' : cpu.data()
    });


---


cpuarchitecture
===============

> Retrieve the Value of the architecture.

    cpuarchitecture();

Parameters
----------

- None.

Return
------

- __cpuarchitecture__ : Integer, Value of the architecture

cpucores
========

> Retrieve the Number of CPU cores.

    cpucores();

Parameters
----------

- None.

Return
------

- __cpucores__ : Integer, Number of CPU cores

cpuimplementer
==============

> Retrieve the Value of the CPU implementer.

    cpuimplementer();

Parameters
----------

- None.

Return
------

- __cpuimplementer__ : String, Value of the CPU implementer

cpupart
=======

> Retrieve the Value of the part.

    cpupart();

Parameters
----------

- None.

Return
------

- __cpupart__ : String, Value of the part

cpurevision
===========

> Retrieve the Value of the revision.

    cpurevision();

Parameters
----------

- None.

Return
------

- __cpurevision__ : Integer, Value of the revision

cpuvariant
==========

> Retrieve the Value of the variant.

    cpuvariant();

Parameters
----------

- None.

Return
------

- __cpuvariant__ : String, Value of the variant

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

- __revision__ : Integer, Value of the revision

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
 
