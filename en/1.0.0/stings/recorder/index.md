---
layout: post
---

Recorder
========

> Store and export collected data.

Usage
-----

`recorder` keyword is needed to instanciate this sting.

	var recorder = require('recorder');

Methods
-------

- [save](#save)
- [sync](#sync)

save
====

Locally store *data* waiting to be exported. 

    var recorder = require('recorder');
    recorder.save(data);

Parameters
----------

- __data__ : JSON, data to save.

Return
------

- Nothing.

Full Example
------------

    var recorder = require('recorder'); 
    recorder.save({
      'first' : sting.method(),
      'second' : 'text data'
    });

sync
====

Export data saved locally to a distant server.

    var recorder = require('recorder');
    recorder.sync();

Parameters
----------

- [optional] __metadata__ : JSON, additional information to add to the saved data.

Return
------

- Nothing.

Full Example
------------

    var recorder = require('recorder'); 
    recorder.save({'first' : sting.method()}); 
    recorder.sync({'device' : 'android'});