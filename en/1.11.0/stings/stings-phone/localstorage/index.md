---
layout: post
title: LocalStorage
---

> Handle operation on localStorage sensor.

Usage
-----

`localStorage` keyword is needed to instanciate this sting.

    var storage = require('localStorage');

<div class="alert alert-warning" role="warning">WARNING: the JavaScript variable named 'localStorage' is already used by browsers, thus the syntactic check will forbid you to use it.</div>

Data accessors
--------------

- [timestamp](#timestamp)

Methods
-------

- [data](#data)
- [drop](#drop)
- [entries](#entries)
- [remove](#remove)
- [retrieve](#retrieve)
- [store](#store)

Full Example
------------

    var storage = require('localStorage');

    var dataResult = storage.data();
    storage.drop();
    var entriesResult = storage.entries();
    storage.remove(identifier);
    var retrieveResult = storage.retrieve(identifier);
    var storeResult = storage.store(toSave);




---


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
- [LocalStorageData](localStorageData.html)

drop
====

> Clear the store.

    drop();

Parameters
----------

- None.
 
Returns
-------
- void

entries
=======

> Retrieve every store object. This method returns the raw string representing a JSON Array, you may want to parse it with 'JSON.parse'

    entries();

Parameters
----------

- None.
 
Returns
-------
- String

remove
======

> Remove an object from the ID returned by the 'store' method.

    remove(identifier);

Parameters
----------

- identifier (Long): ID of the entry to remove.
 
Returns
-------
- void

retrieve
========

> Retrieve an object from the ID returned by the 'store' method. This method returns the raw string representing a JSON Object, you may want to parse it with 'JSON.parse'

    retrieve(identifier);

Parameters
----------

- identifier (Long): ID of the entry to retrieve.
 
Returns
-------
- String

store
=====

> Save the given json in a local database.

    store(toSave);

Parameters
----------

- toSave (Map): A Json object to save.
 
Returns
-------
- Long
 
