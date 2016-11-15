---
layout: post
title: StringToken
---

> Handle cancel operation on sensor.

Methods
-------

- [cancel](#cancel)

Full Example
------------

	var sensor = require('sensor');
	var listener = sensor.onActionChanged();
	listener.cancel();
	
cancel
======

> Stop a running action.

    listener.cancel();

Parameters
----------

None.

Return
------

Nothing
