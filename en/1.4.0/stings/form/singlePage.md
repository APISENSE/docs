---
layout: post
title: SinglePageForm
---

> Builder for single page forms.

Behavior
--------

- [section](#section)
- [show](#show)

Content
-------

- [checkbox](#checkbox)
- [datepicker](#datepicker)
- [numberfield](#numberfield)
- [radiobutton](#radiobutton)
- [textarea](#textarea)
- [textfield](#textfield)

Full Example
------------

    var form = require('form');
    var recorder = require('recorder');

    // Do not use both of them together.
    var singlePage = form.singlePage("Title");

    singlePage.section('Section title')
        .checkbox("Pick some letters", "letter", true, ["a", "b", "c", "d"])
        .datepicker("Pick a date", "date", false)
        .numberfield("Enter a number", "number", true)
        .radiobutton("Pick one letter", "radio", false, ["a", "b", "c", "d"])
        .textarea("Describe something", "area", false)
        .textfield("Enter a word", "word", true);
    
    singlePage.onResult(function(formResult) {
      recorder.save(formResult);
      recorder.sync();
    });

    singlePage.show();

section
=======

> Create a new section on the form.

    section(title);

Parameters
----------

- __title__: Section name to display.

Return
------

- __SinglePageForm__ : Instance of the current Form.

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

checkbox
========

> Create a checkbox formulary

    checkbox(label, id, mandatory, values);

Parameters
----------

- __label__ : Text to display before checkboxes.
- __id__ : Identify the checkbox.
- __mandatory__ : true if required, false otherwise.
- __values__ : Checkable array string values.

Return
------

- __SinglePageForm__ : Instance of the current Form.

datepicker
==========

> Create a date picker formulary

    datepicker(label, id, mandatory);

Parameters
----------

- __label__ : Text to display before the date picker.
- __id__ : Identify the date picker.
- __mandatory__ : true if required, false otherwise.

Return
------

- __SinglePageForm__ : Instance of the current Form.

numberfield
===========

> Create a text field waiting for digits

    numberfield(label, id, mandatory);

Parameters
----------

- __label__ : Text to display before the number field.
- __id__ : Identify the number field.
- __mandatory__ : true if required, false otherwise.

Return
------

- __SinglePageForm__ : Instance of the current Form.

radiobutton
===========

> Create a radius button

    radiobutton(label, id, mandatory, values);

Parameters
----------

- __label__ : Text to display before the radio button.
- __id__ : Identify the radio button.
- __mandatory__ : true if required, false otherwise.
- __values__ : Array string values, only one can be picked.

Return
------

- __SinglePageForm__ : Instance of the current Form.

textarea
========

> Create a text area

    textarea(label, id, mandatory);

Parameters
----------

- __label__ : Text to display before the text area.
- __id__ : Identify the text area.
- __mandatory__ : true if required, false otherwise.

Return
------

- __SinglePageForm__ : Instance of the current Form.

textfield
=========

> Create a text field

    textfield(label, id, mandatory);

Parameters
----------

- __label__ : Text to display before the text field.
- __id__ : Identify the text field.
- __mandatory__ : true if required, false otherwise.

Return
------

- __SinglePageForm__ : Instance of the current Form.
