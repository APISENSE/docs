---
layout: post
title: APM
---

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

onScanCompleted
===============

> Retrieve information on specific url.

    var apm = require('apm');
    apm.onScanCompleted('www.website-to-analyse.fr', function(data) {
        // Do awesome stuff
    });

Parameters
----------

- __url__ : The website to analyse.
- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [Network Infos](apmData.html), object containing all information about the connection.

Return
------

Nothing.

Full Example
------------

    network.onScanCompleted('www.website-to-analyse.fr', function(data) {
        log.info('Target : ' + data.url);
        log.info('Ping (ms) : ' + data.ping);
        log.info('Number of routers : ' + data.ttl);
        log.info('Traceroute : ' + data.traceroute);        
    });
  
  
onDownloadCompleted
===================

> Retrieve information about download speed on specific website.

    var apm = require('apm');
    apm.onDownloadCompleted('url-to-file.ext', function(data) {
        // Do awesome stuff
    });

Parameters
----------

- __url__ : The website to analyse.
- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [Network Speed](apmSpeedData.html), object containing all information about the connection.

Return
------

Nothing.

Full Example
------------

    var apm = require('apm');
    apm.onDownloadCompleted('url-to-file.ext', function(data) {
        log.info('Target : ' + data.url);
        log.info('Download speed (mbps) : ' + data.speed); 
        log.info('Download size (bytes) : ' + evt.size);
        log.info('Download time (s) : ' + evt.time);
    });

onUploadCompleted
=================

> Test what kind of connection the device is using.

    var apm = require('apm');
    apm.onUploadCompleted('protocol', 'host', 'username', 'password', size, function(data) {
        // Do awesome stuff
    });

Parameters
----------

- __protocol__ : Protocol to upload file. __ONLY `FTP` SUPPORTED RIGHT NOW__.
- __host__ : Url to contact.
- __username__ : `Host` username
- __password__ : `Host` password
- __size__ : Size of the file to upload in `mega-octects`. __WILL BE UPLOADED, BE CAREFUL__.
- __event__ : function(data), callback function giving access to methods from an event object. 
- __data__ : [Network Speed](apmSpeedData.html), object containing all information about the connection.

Return
------

Nothing

Full Example
------------

    var apm = require('apm');
    apm.onUploadCompleted('ftp', 'host', 'username', 'password', size, function(data) {
        log.info('Target : ' + data.url);
        log.info('Upload speed (mbps) : ' + data.speed);
        log.info('Upload size (bytes) : ' + evt.size);
        log.info('Upload time (s) : ' + evt.time);
    });
