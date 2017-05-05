---
layout: post
title: RotationData
---

> Contains all information about the current rotation.

Attributes
----------
- accuracy (SensorAccuracy) : Sensor's current accuracy
- azimuth (Double) : angle of rotation about the -z axis from -π to π
- model (String) : Sensor's model name
- pitch (Double) : angle of rotation about the x axis from -π to π
- roll (Double) : angle of rotation about the y axis from -π/2 to π/2
- rotationMatrix (List) : Matrix of rotation from the original basis, see: https://developer.android.com/reference/android/hardware/SensorManager.html#getRotationMatrixFromVector(float[],%20float[])
- scalarComponent (Double) : Scalar component of the rotation vector (cos(θ/2))
- scalarComponentDelta (Double) : Modification in the scalar component since last value
- timestamp (Long) : represents the time of the operation.
- vendor (String) : Sensor's vendor name
- version (Integer) : Version of this sensor
- x (Double) : Rotation vector component along the x axis (no unit)
- y (Double) : Rotation vector component along the y axis (no unit).
- z (Double) : Rotation vector component along the z axis (no unit).
