---
layout: post
title: Recorder
---

> Store and export collected data.

Usage
-----

`recorder` keyword is needed to instanciate this sting.

	var recorder = require('recorder');

Methods
-------

- [save](#save)
- [sync](#sync)

Full Example
------------

    var recorder = require('recorder');

    recorder.save({
      'first' : 'value1',
      'second' : 'value2'
    });

    recorder.sync({
        'third' : 'value3'
    });

save
====

Locally store *data* waiting to be exported. 

    save(data)

Parameters
----------

- __data__ : JSON, data to save.

Return
------

- Nothing.

sync
====

Export data saved locally to a distant server.

    sync(metadata)

Parameters
----------

- [optional] __metadata__ : JSON, additional information to add to the saved data.

Return
------

- Nothing.
