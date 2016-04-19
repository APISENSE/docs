---
layout: post
title: Form
---

> Build forms to query info directly from the user.

Usage
-----

`form` keyword is needed to instanciate this sting.

	var form = require('form');

Methods
-------

- [singlePage](#singlepage)
- [multiPage](#multipage)
- [onResult](#onresult)


Full Example
------------

    var form = require('form');
    var recorder = require('recorder');

    // Do not use both of them together.
    var singlePage = form.singlePage("Title");
    var multiPage = form.multiPage();

    // Set your form...
    // [...]
    
    singlePage.onResult(function(formResult) {
      recorder.save(formResult);
      recorder.sync();
    });

    multiPage.onResult(function(formResult) {
      recorder.save(formResult);
      recorder.sync();
    });

singlePage
==========

> Create a simple linear form.

    singlePage(title)

Parameters
----------

- __title__: Form title.

Return
------

- __singlePage__ : [SinglePageForm](singlePage.html), Builder for simple form.
    
multiPage
=========

> Create a formulary page.

    multiPage();

Parameters
----------

- None.

Return
------

- __multiPage__ : [MultiPageForm](multiPage.html), Builder for more complex form.

onResult
========

> Set the behaviour of the Sting when a form is finished

    onResult(callback);

Parameters
----------

- __[callback](../../extra/callback.html)__ : Method executed when event triggered, returns [FormData](formData.html) object.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener. 
