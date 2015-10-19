---
layout: post
---

Form
====

> Build forms

Usage
-----

`form` keyword is needed to instanciate this sting.

	var form = require('form');

Methods
-------

- [builder](#builder)
- [page](#page)

builder
=======

> Create a simple linear form.

    var form = require('form');
    var builder = form.builder();

Parameters
----------

- None.

Return
------

- __builder__ : [Builder](builder.html), Instance of FormBuilder
    
page
====

> Create a formulary page.

    var form = require('form');
    var page = form.page();

Parameters
----------

- None.

Return
------

- __page__ : [Page](page.html), Instance of Page