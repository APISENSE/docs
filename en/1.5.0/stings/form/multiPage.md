---
layout: post
---

MultiPageForm
=============

> Builder for forms using multiple, linear pages.

Behavior
--------

- [page](#page)
- [set](#set)
- [show](#show)

Example
-------

    var form = require('form');
    var multiPage = form.multiPage();

    var p1 = multiPage.page("My first form page")
        .section('Section title')
        .checkbox("Pick some letters", "letter", true, ["a", "b", "c", "d"])
        .datePicker("Pick a date", "date", false)
        .numberfield("Enter a number", "number", true);

    var p2 = multiPage.page("The second page")
        .radiobutton("Pick one letter", "radio", false, ["a", "b", "c", "d"])
        .textarea("Describe something", "area", false)
        .textfield("Enter a word", "word", true);

    multiPage.set([p1, p2]);

    multiPage.show();

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
