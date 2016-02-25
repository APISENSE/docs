---
layout: post
---

FormPage
========

> Represents a single page on a form.


Behavior
--------

- [section](#section)

Content
-------

- [checkbox](#checkbox)
- [datepicker](#datepicker)
- [numberfield](#numberfield)
- [picture](#picture)
- [radiobutton](#radiobutton)
- [sound](#sound)
- [textarea](#textarea)
- [textfield](#textfield)
- [video](#video)

Full Example
------------

    var form = require('form');
    var recorder = require('recorder');

    // Do not use both of them together.
    var singlePage = form.singlePage("Title");

    singlePage.section('Section title')
        .checkbox("Pick some letters", "letter", true, ["a", "b", "c", "d"])
        .datePicker("Pick a date", "date", false)
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

> Create a new section on the current page.

    section(title);

Parameters
----------

- __title__: Section name to display.

Return
------

- __FormPage__ : Instance of the current page.

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

- __FormPage__ : Instance of the current page.

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

- __FormPage__ : Instance of the current page.

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

- __FormPage__ : Instance of the current page.

picture
=======

> Create a picture capture field, waiting for user interaction

    picture(label, id, mandatory)

Parameters
----------

- __label__ : Text to display before the number field.
- __id__ : Identify the number field.
- __mandatory__ : true if required, false otherwise.

Return
------

- __FormPage__ : Instance of the current page.


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

- __FormPage__ : Instance of the current page.

sound
=====

> Create a sound capture field, waiting for user interaction

    sound(label, id, mandatory, duration)

Parameters
----------

- __label__ : Text to display before the number field.
- __id__ : Identify the number field.
- __mandatory__ : true if required, false otherwise.
- __duration__ : [Time String](../../extra/timeScheduleFormat.html#duration), duration of the capture.

Return
------

- __FormPage__ : Instance of the current page.

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

- __FormPage__ : Instance of the current page.

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

- __FormPage__ : Instance of the current page.

video
=====

> Create a video capture field, waiting for user interaction

    video(label, id, mandatory, duration)

Parameters
----------

- __label__ : Text to display before the number field.
- __id__ : Identify the number field.
- __mandatory__ : true if required, false otherwise.
- __duration__ : [Time String](../../extra/timeScheduleFormat.html#duration), duration of the capture.

Return
------

- __FormPage__ : Instance of the current page.
