---
layout: post
title: MultiPageForm
---

> Builder for forms using multiple, linear pages.

Behavior
--------

- [page](#page)
- [set](#set)
- [show](#show)


page
====

> Create a new page for the form.

    page(title);

Parameters
----------

- __title__: The page title.

Return
------

- __FormPage__ : [FormPage](formPage.html), Instance of the created page.

Example
-------

    var form = require('form');
    var mp = form.multiPage();
    var page = mp.page("My first form page");

set
===

> Add the given pages to the current form.

    set(pages);

Parameters
----------

- __pages__: An ordered array of the pages to add.

Return
------

- None

Example
-------

    var form = require('form');
    var mp = form.multiPage();
    var p1 = mp.page("My first form page");
    var p2 = mp.page("The second page");
    mp.set([p1, p2]);

show
====

> Display the current form.

    show();

Parameters
----------

- None

Return
------

- None

Example
-------

    var form = require('form');
    var mp = form.multiPage();
    var p1 = mp.page("My first form page");
    var p2 = mp.page("The second page");
    mp.set([p1, p2]);
    mp.show();

