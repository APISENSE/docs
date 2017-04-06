---
layout: post
title: Form
---

> Handle operation on form sensor.

Usage
-----

`form` keyword is needed to instanciate this sting.

    var form = require('form');


Data accessors
--------------

- [results](#results)
- [timestamp](#timestamp)

Methods
-------

- [data](#data)
- [multiPage](#multipage)
- [singlePage](#singlepage)

Events
------

- [onResult](#onresult)

Full Example
------------

    var form = require('form');
    var recorder = require('recorder');

    var dataResult = form.data();
    var multiPageResult = form.multiPage();
    var singlePageResult = form.singlePage(title);


    recorder.save({
        'results' : form.results(),
        'timestamp' : form.timestamp(),
        'json' : form.data()
    });

    form.onResult(function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


results
=======

> Retrieve the Results of the filled Form.

    results();

Parameters
----------

- None.

Return
------

- __results__ : Map, Results of the filled Form

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
 - [FormData](formData.html)

multiPage
=========

> Creates a new, fully customizable, form

    multiPage();

Parameters
----------

- None.
 
Returns
-------
- [MultiPageForm](/jsdoc/1.9.0/sdk/MultiPageForm.html)

singlePage
==========

> Creates a single form contained on a unique page

    singlePage(title);

Parameters
----------

- title (String): Title of the form to generate
 
Returns
-------
- [SinglePageForm](/jsdoc/1.9.0/sdk/SinglePageForm.html)
 
onResult
========

> Starts a listener on the form result and executes some actions when it changes.

    onResult(callback);

Parameters
----------

- __[callback](../../../extra/callback)__ : Method executed when event triggered, returns [FormData](formData.html) object.

Return
------

- __token__ : [Token](../../../extra/token) used for canceling event listener.
