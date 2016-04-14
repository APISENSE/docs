---
layout: post
---

APM
===

> Handle operation on network analysis.

Usage
-----

`apm` keyword is needed to instanciate this sting.

	var apm = require('apm');

Events
------

- [onScanCompleted](#onscancompleted)
- [onDownloadCompleted](#ondownloadcompleted)
- [onUploadCompleted](#onuploadcompleted)

Full Example
------------

    var network = require('apm');
    var recorder = require('recorder');
    var timer = require('timer');

    network.onScanCompleted('www.website-to-analyse.fr', function(data) {
        recorder.save({
            'event' : 'onScanCompleted',
            'ping'  : data.ping,
            'ttl'   : data.ttl
        });
    });

    network.onDownloadCompleted('url-to-file.ext', function(data) {
        recorder.save({
            'event' : 'onDownloadCompleted',
            'speed' : data.speed
        });
    });

    network.onUploadCompleted('ftp', '23.123.4.42', 'username', 'password', 50, function(data) {
        recorder.save({
            'event' : 'onUploadCompleted',
            'speed' : data.speed
        });
    });

    timer.at('12:00 PM', function(event) {
        recorder.sync();
    });

onScanCompleted
===============

> Retrieve information on specific url.

    onScanCompleted(target, callback);

Parameters
----------

- __target__ : The website to analyse.
- __[callback](../../extra/callback.html)__ : Method executed when event triggered, returns [Network Infos](apmData.html) object.

Return
------

Nothing.
  
onDownloadCompleted
===================

> Retrieve information about download speed on specific website.

    onDownloadCompleted(target, callback);

Parameters
----------

- __target__ : The website to analyse.
- __[callback](../../extra/callback.html)__ : Method executed when event triggered, returns [Network Speed](apmSpeedData.html) object.

Return
------

Nothing.

onUploadCompleted
=================

> Test what kind of connection the device is using.

    onUploadCompleted(protocol, host, username, password, size, callback)

Parameters
----------

- __protocol__ : Protocol to upload file. __ONLY `FTP` SUPPORTED RIGHT NOW__.
- __host__ : Url to contact.
- __username__ : `Host` username
- __password__ : `Host` password
- __size__ : Size of the file to upload in `mega-octects`. __WILL BE UPLOADED, BE CAREFUL__.
- __[callback](../../extra/callback.html)__ : Method executed when event triggered, returns [Network Speed](apmSpeedData.html) object.

Return
------

Nothing