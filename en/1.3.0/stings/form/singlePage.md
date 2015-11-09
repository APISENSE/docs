---
layout: post
---

SinglePage
==========

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

Example
-------

    var form = require('form');
    var sp = form.singlePage("My new form!");
    sp.section("This is the first part!");
    sp.show();

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
    var sp = form.singlePage("My new form!");
    sp.section("This is the first part!")
      .textfield("Enter a word", "word", true);
    sp.show();

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

Example
-------

    var form = require('form');
    var sp = form.singlePage("My new form!");
    sp.checkbox("Pick some letters", "letter", true, ["a", "b", "c", "d"]);

datepicker
==========

> Create a datePicker formulary

    datePicker(label, id, mandatory);

Parameters
----------

- __label__ : Text to display before the datePicker.
- __id__ : Identify the datePicker.
- __mandatory__ : true if required, false otherwise.

Return
------

- __SinglePageForm__ : Instance of the current Form.

Example
-------

    var form = require('form');
    var sp = form.singlePage("My new form!");
    sp.datePicker("Pick a date", "date", false);

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

Example
-------

    var form = require('form');
    var sp = form.singlePage("My new form!");
    sp.numberfield("Enter a number", "number", true);

radiobutton
===========

> Create a radius button

    radiobutton("label", "id", mandatory, values);

Parameters
----------

- __label__ : Text to display before the radio button.
- __id__ : Identify the radio button.
- __mandatory__ : true if required, false otherwise.
- __values__ : Array string values, only one can be picked.

Return
------

- __SinglePageForm__ : Instance of the current Form.

Example
-------

    var form = require('form');
    var sp = form.singlePage("My new form!");
    sp.radiobutton("Pick one letter", "radio", false, ["a", "b", "c", "d"]);

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

Example
-------

    var form = require('form');
    var sp = form.singlePage("My new form!");
    sp.textarea("Describe something", "area", false);

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

Example
-------

    var form = require('form');
    var sp = form.singlePage("My new form!");
    sp.textfield("Enter a word", "word", true);
