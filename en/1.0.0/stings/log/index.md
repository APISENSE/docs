---
layout: post
title: Log
---

> Log some valuable information at runtime.

Usage
-----

`log` keyword is needed to instanciate this sting.

	var log = require('log');

Note: Right now we only use the OS log system.

Methods
-------

- [debug](#debug)
- [error](#error)
- [info](#info)

debug
=====

Execute some operations repeatedly every specified time.

    var log = require('log');
    log.debug(message);

Parameters
----------

- __message__ : String, the information to print.

Return
------

- Nothing.

Full Example
------------

    var log = require('log');
    log.debug('This is my awesome message');

error
=====

Execute some operations repeatedly every specified time.

    var log = require('log');
    log.error(message);

Parameters
----------

- __message__ : String, the information to print.

Return
------

- Nothing.

Full Example
------------

    var log = require('log');
    log.error('This is my awesome message');

info
====

Execute some operations repeatedly every specified time.

    var log = require('log');
    log.info(message);

Parameters
----------

- __message__ : String, the information to print.

Return
------

- Nothing.

Full Example
------------

    var log = require('log');
    log.info('This is my awesome message');
