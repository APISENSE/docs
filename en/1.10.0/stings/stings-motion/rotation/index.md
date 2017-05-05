---
layout: post
title: Rotation
---

> Handle operation on rotation sensor.

Usage
-----

`rotation` keyword is needed to instanciate this sting.

    var rotation = require('rotation');


Data accessors
--------------

- [accuracy](#accuracy)
- [azimuth](#azimuth)
- [model](#model)
- [pitch](#pitch)
- [roll](#roll)
- [rotationMatrix](#rotationmatrix)
- [scalarComponent](#scalarcomponent)
- [scalarComponentDelta](#scalarcomponentdelta)
- [timestamp](#timestamp)
- [vendor](#vendor)
- [version](#version)
- [x](#x)
- [y](#y)
- [z](#z)

Methods
-------

- [data](#data)

Events
------

- [onRotationDetected](#onrotationdetected)

Full Example
------------

    var rotation = require('rotation');
    var recorder = require('recorder');

    var dataResult = rotation.data();

    var rotationDetectedFilters = {
        "period": exampleValue,
        "rotation": exampleValue
    };

    recorder.save({
        'accuracy' : rotation.accuracy(),
        'azimuth' : rotation.azimuth(),
        'model' : rotation.model(),
        'pitch' : rotation.pitch(),
        'roll' : rotation.roll(),
        'rotationMatrix' : rotation.rotationMatrix(),
        'scalarComponent' : rotation.scalarComponent(),
        'scalarComponentDelta' : rotation.scalarComponentDelta(),
        'timestamp' : rotation.timestamp(),
        'vendor' : rotation.vendor(),
        'version' : rotation.version(),
        'x' : rotation.x(),
        'y' : rotation.y(),
        'z' : rotation.z(),
        'json' : rotation.data()
    });

    rotation.onRotationDetected(rotationDetectedFilters, function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


accuracy
========

> Retrieve the Sensor's current accuracy.

    accuracy();

Parameters
----------

- None.

Return
------

- __accuracy__ : SensorAccuracy, Sensor's current accuracy

azimuth
=======

> Retrieve the angle of rotation about the -z axis from -π to π.

    azimuth();

Parameters
----------

- None.

Return
------

- __azimuth__ : Double, angle of rotation about the -z axis from -π to π

model
=====

> Retrieve the Sensor's model name.

    model();

Parameters
----------

- None.

Return
------

- __model__ : String, Sensor's model name

pitch
=====

> Retrieve the angle of rotation about the x axis from -π to π.

    pitch();

Parameters
----------

- None.

Return
------

- __pitch__ : Double, angle of rotation about the x axis from -π to π

roll
====

> Retrieve the angle of rotation about the y axis from -π/2 to π/2.

    roll();

Parameters
----------

- None.

Return
------

- __roll__ : Double, angle of rotation about the y axis from -π/2 to π/2

rotationMatrix
==============

> Retrieve the Matrix of rotation from the original basis, see: https://developer.android.com/reference/android/hardware/SensorManager.html#getRotationMatrixFromVector(float[],%20float[]).

    rotationMatrix();

Parameters
----------

- None.

Return
------

- __rotationMatrix__ : List, Matrix of rotation from the original basis, see: https://developer.android.com/reference/android/hardware/SensorManager.html#getRotationMatrixFromVector(float[],%20float[])

scalarComponent
===============

> Retrieve the Scalar component of the rotation vector (cos(θ/2)).

    scalarComponent();

Parameters
----------

- None.

Return
------

- __scalarComponent__ : Double, Scalar component of the rotation vector (cos(θ/2))

scalarComponentDelta
====================

> Retrieve the Modification in the scalar component since last value.

    scalarComponentDelta();

Parameters
----------

- None.

Return
------

- __scalarComponentDelta__ : Double, Modification in the scalar component since last value

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

vendor
======

> Retrieve the Sensor's vendor name.

    vendor();

Parameters
----------

- None.

Return
------

- __vendor__ : String, Sensor's vendor name

version
=======

> Retrieve the Version of this sensor.

    version();

Parameters
----------

- None.

Return
------

- __version__ : Integer, Version of this sensor

x
=

> Retrieve the Rotation vector component along the x axis (no unit).

    x();

Parameters
----------

- None.

Return
------

- __x__ : Double, Rotation vector component along the x axis (no unit)

y
=

> Retrieve the Rotation vector component along the y axis (no unit)..

    y();

Parameters
----------

- None.

Return
------

- __y__ : Double, Rotation vector component along the y axis (no unit).

z
=

> Retrieve the Rotation vector component along the z axis (no unit)..

    z();

Parameters
----------

- None.

Return
------

- __z__ : Double, Rotation vector component along the z axis (no unit).




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [RotationData](rotationData.html)
 
onRotationDetected
==================

> Starts a listener on the rotation rotation and executes some actions when it changes.

    onRotationDetected(filters, callback);

Parameters
----------

- __[filters](rotationDetectedFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [RotationData](rotationData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
