---
layout: post
title: Crypto
---

> Handle operation on crypto sensor.

Usage
-----

`crypto` keyword is needed to instanciate this sting.

    var crypto = require('crypto');


Data accessors
--------------

- [timestamp](#timestamp)

Methods
-------

- [data](#data)
- [sha1](#sha1)

Full Example
------------

    var crypto = require('crypto');

    var dataResult = crypto.data();
    var sha1Result = crypto.sha1(message, salt);




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
- [CryptoData](cryptoData.html)

sha1
====

> Hash the input with the sha1 algorithm.

    sha1(messagesalt);

Parameters
----------

- message (String): The message to hash.
- salt (String): The salt of the hash.
 
Returns
-------
- String
 
