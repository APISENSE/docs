---
layout: post
---

Page
====

> Formulary page

Behavior
--------

- [link](#link)
- [show](#show)

Methods
-------

- [checkbox](#checkbox)
- [datePicker](#datePicker)
- [photo](#photo)
- [radioButton](#radiobutton)
- [sound](#sound)
- [textArea](#textarea)
- [textField](#textfield)
- [video](#video)

link
====

> Create a conditional transition between two pages.

    var form = require('form');
    var page = form.page();
    var page_two = form.page();
    page.link(page_two, function(pageResult) {
        return pageResult["inputID"] == "someValue";
    });

Parameters
----------

- __page_two__ : Target page if condition is verified
- __event__ : function(pageResult), compute the verification and returns a boolean

Return
------

- None

show
====

> Display the first form page.

    var form = require('form');
    var page = form.page();
    page.show();

Parameters
----------

- None

Return
------

- None

checkbox
========

> Create a checkbox formulary

    var form = require('form');
    var page = form.page();
    page.checkbox("label", "id", mandatory, values);

Parameters
----------

- __label__ : Text to display before checkboxes
- __id__ : Identify the checkbox
- __mandatory__ : true if required, false otherwise
- __values__ : Checkable array string values

Return
------

- __Page__ : Instance of the current Page

datePicker
==========

> Create a datePicker formulary

    var form = require('form');
    var page = form.page();
    page.datePicker("label", "id", mandatory);

Parameters
----------

- __label__ : Text to display before the datePicker
- __id__ : Identify the datePicker
- __mandatory__ : true if required, false otherwise

Return
------

- __Page__ : Instance of the current Page

photo
=====

> Create a photo formulary

    var form = require('form');
    var page = form.page();
    page.photo("label", "id", mandatory);

Parameters
----------

- __label__ : Text to display before the photo
- __id__ : Identify the photo
- __mandatory__ : true if required, false otherwise

Return
------

- __Page__ : Instance of the current Page

radioButton
===========

> Create a radius button

    var form = require('form');
    var page = form.page();
    page.radioButton("label", "id", mandatory, values);

Parameters
----------

- __label__ : Text to display before the radio button
- __id__ : Identify the radio button
- __mandatory__ : true if required, false otherwise
- __values__ : Array string values, only one can be picked

Return
------

- __Page__ : Instance of the current Page

sound
=====

> Create a sound picker

    var form = require('form');
    var page = form.page();
    page.sound("label", "id", mandatory);

Parameters
----------

- __label__ : Text to display before the sound picker
- __id__ : Identify the sound picker
- __mandatory__ : true if required, false otherwise

Return
------

- __Page__ : Instance of the current Page

textArea
========

> Create a text area

    var form = require('form');
    var page = form.page();
    page.textArea("label", "id", mandatory);

Parameters
----------

- __label__ : Text to display before the text area
- __id__ : Identify the text area
- __mandatory__ : true if required, false otherwise

Return
------

- __Page__ : Instance of the current Page

textField
=========

> Create a text field

    var form = require('form');
    var page = form.page();
    page.textField("label", "id", mandatory);

Parameters
----------

- __label__ : Text to display before the text field
- __id__ : Identify the text field
- __mandatory__ : true if required, false otherwise

Return
------

- __Page__ : Instance of the current Page

video
=====

> Create a video picker

    var form = require('form');
    var page = form.page();
    page.video("label", "id", mandatory);

Parameters
----------

- __label__ : Text to display before the video picker
- __id__ : Identify the video picker
- __mandatory__ : true if required, false otherwise

Return
------

- __Page__ : Instance of the current Page