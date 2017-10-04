---
layout: post
title: Notification
---

> Handle operation on notification sensor.

Usage
-----

`notification` keyword is needed to instanciate this sting.

    var notification = require('notification');

<div class="alert alert-warning" role="warning">WARNING: This sting appears as of version 1.10.1.</div>

Data accessors
--------------

- [timestamp](#timestamp)

Methods
-------

- [create](#create)
- [data](#data)

Full Example
------------

    var notification = require('notification');

    var createResult = notification.create(title, content, cancelable);
    var dataResult = notification.data();




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




create
======

> Create a basic notification.

    create(title, content, cancelable);

Parameters
----------

- title (String): The title of the notification.
- content (String): The content of the notification title.
- cancelable (Boolean): Boolean that indicates if the notification is cancelable or not.
 
Returns
-------
- [Notification](/jsdoc/1.10.0/sdk/Notification.html)

data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [NotificationData](notificationData.html)
 
