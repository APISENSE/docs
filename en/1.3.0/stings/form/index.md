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

singlePage
==========

> Create a simple linear form.

    singlePage(title);

Parameters
----------

- __title__: Form title.

Return
------

- __singlePage__ : [SinglePageForm](singlePage.html), Builder for simple form.

Example
-------

    var form = require('form');
    var builder = form.singlePage("Title");
    
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

Example
-------

    var form = require('form');
    var page = form.multiPage();


onResult
========

> Set the behaviour of the Sting when a form is finished

    onResult(function(result) {
      // Callback
    });

Parameters
----------

- __function(result)__: The method to execute when a form is completed.
- __result__: [FormData](formData.html), The form result.

Return
------

- __token__ : [Token](../../extra/stingToken.html) used to cancel event listener. 

Example
-------

    var form = require('form');
    var rec = require('recorder');

    form.onResult(function(formResult) {
      rec.save(formResult);
      rec.sync();
    });
