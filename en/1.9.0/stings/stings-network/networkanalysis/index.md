---
layout: post
title: NetworkAnalysis
---

> Handle operation on networkAnalysis sensor.

Usage
-----

`networkAnalysis` keyword is needed to instanciate this sting.

    var networkAnalysis = require('networkAnalysis');


Data accessors
--------------
 
- [duration](#duration)
- [error](#error)
- [hostname](#hostname)
- [ip](#ip)
- [isNetworkType](#isnetworktype)
- [jitter](#jitter)
- [lossRatio](#lossratio)
- [networkType](#networktype)
- [outOfOrderRatio](#outoforderratio)
- [packetCount](#packetcount)
- [records](#records)
- [size](#size)
- [speed](#speed)
- [speeds](#speeds)
- [task](#task)
- [timestamp](#timestamp)
- [traceroute](#traceroute)
- [ttl](#ttl)

Methods
-------

- [data](#data)

Events
------

- [onTcpUpload](#ontcpupload)
- [onTcpDownload](#ontcpdownload)
- [onUdpDownload](#onudpdownload)
- [onUdpUpload](#onudpupload)
- [onDnsRequest](#ondnsrequest)
- [onPingRequest](#onpingrequest)
- [onTracerouteRequest](#ontracerouterequest)

Full Example
------------

    var networkAnalysis = require('networkAnalysis');
    var recorder = require('recorder');

    var dataResult = networkAnalysis.data();

    var tcpUploadFilters = {
        "volume": exampleValue,
        "size": exampleValue,
        "period": exampleValue,
        "slowStart": exampleValue
    };
    var tcpDownloadFilters = {
        "volume": exampleValue,
        "size": exampleValue,
        "period": exampleValue,
        "slowStart": exampleValue
    };
    var udpDownloadFilters = {
        "size": exampleValue,
        "cycle": exampleValue,
        "count": exampleValue,
        "interval": exampleValue
    };
    var udpUploadFilters = {
        "size": exampleValue,
        "cycle": exampleValue,
        "count": exampleValue,
        "interval": exampleValue
    };
    var dnsRequestFilters = {
        "target": "exampleValue",
        "server": "exampleValue",
        "type": "exampleValue",
        "class": "exampleValue"
    };
    var pingRequestFilters = {
        "target": "exampleValue",
        "ttl": exampleValue
    };
    var tracerouteRequestFilters = {
        "target": "exampleValue",
        "ttl": exampleValue
    };

    recorder.save({
        'duration' : networkAnalysis.duration(),
        'error' : networkAnalysis.error(),
        'hostname' : networkAnalysis.hostname(),
        'ip' : networkAnalysis.ip(),
        'jitter' : networkAnalysis.jitter(),
        'lossRatio' : networkAnalysis.lossRatio(),
        'UNKNOWN NetworkType' : networkAnalysis.isNetworkType(networkAnalysis.UNKNOWN),
        'outOfOrderRatio' : networkAnalysis.outOfOrderRatio(),
        'packetCount' : networkAnalysis.packetCount(),
        'records' : networkAnalysis.records(),
        'size' : networkAnalysis.size(),
        'speed' : networkAnalysis.speed(),
        'speeds' : networkAnalysis.speeds(),
        'task' : networkAnalysis.task(),
        'timestamp' : networkAnalysis.timestamp(),
        'traceroute' : networkAnalysis.traceroute(),
        'ttl' : networkAnalysis.ttl(),
        'json' : networkAnalysis.data()
    });

    networkAnalysis.onTcpUpload(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });

    networkAnalysis.onTcpDownload(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });

    networkAnalysis.onUdpDownload(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });

    networkAnalysis.onUdpUpload(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });

    networkAnalysis.onDnsRequest(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });

    networkAnalysis.onPingRequest(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });

    networkAnalysis.onTracerouteRequest(filters,function(data) {
        recorder.save(data);
        recorder.sync();
    });


---


duration
========

> Retrieve the The test duration in milliseconds.

    duration();

Parameters
----------

- None.

Return
------

- __duration__ : Long, The test duration in milliseconds

error
=====

> Retrieve the Describe the task error if any occurred.

    error();

Parameters
----------

- None.

Return
------

- __error__ : String, Describe the task error if any occurred

hostname
========

> Retrieve the [ping, traceroute, dns] The asked hostname.

    hostname();

Parameters
----------

- None.

Return
------

- __hostname__ : String, [ping, traceroute, dns] The asked hostname

ip
==

> Retrieve the The test destination IP.

    ip();

Parameters
----------

- None.

Return
------

- __ip__ : String, The test destination IP

isNetworkType
=============

> Test the current networkType value against the given one.

    isNetworkType(value);

Parameters
----------

- __value__ : [NetworkAnalysisNetworkType](networkAnalysisNetworkType.html), type of networkType to test.

Return
------

- Boolean

jitter
======

> Retrieve the [burst] Jitter as specified in RFC3393.

    jitter();

Parameters
----------

- None.

Return
------

- __jitter__ : Long, [burst] Jitter as specified in RFC3393

lossRatio
=========

> Retrieve the [burst] Ratio of lost packets over the total number of packet.

    lossRatio();

Parameters
----------

- None.

Return
------

- __lossRatio__ : Float, [burst] Ratio of lost packets over the total number of packet

networkType
===========

> Retrieve the Describe the type of network the user is on.

    networkType();

Parameters
----------

- None.

Return
------

- __networkType__ : [NetworkAnalysisNetworkType](networkAnalysisNetworkType.html), Describe the type of network the user is on

outOfOrderRatio
===============

> Retrieve the [burst] Ratio of late packets over the total number of packet.

    outOfOrderRatio();

Parameters
----------

- None.

Return
------

- __outOfOrderRatio__ : Float, [burst] Ratio of late packets over the total number of packet

packetCount
===========

> Retrieve the [burst] Number of sent packet.

    packetCount();

Parameters
----------

- None.

Return
------

- __packetCount__ : Integer, [burst] Number of sent packet

records
=======

> Retrieve the [dns] List of DNS entries.

    records();

Parameters
----------

- None.

Return
------

- __records__ : List, [dns] List of DNS entries

size
====

> Retrieve the [download, upload] Size of the last download/upload.

    size();

Parameters
----------

- None.

Return
------

- __size__ : Float, [download, upload] Size of the last download/upload

speed
=====

> Retrieve the [download, upload] Median speed of last download/upload.

    speed();

Parameters
----------

- None.

Return
------

- __speed__ : Float, [download, upload] Median speed of last download/upload

speeds
======

> Retrieve the [download, upload] List of speed sample for last download/upload.

    speeds();

Parameters
----------

- None.

Return
------

- __speeds__ : List, [download, upload] List of speed sample for last download/upload

task
====

> Retrieve the The name of the last executed task.

    task();

Parameters
----------

- None.

Return
------

- __task__ : String, The name of the last executed task

timestamp
=========

> Retrieve the represents the time of the operation..

    timestamp();

Parameters
----------

- None.

Return
------

- __timestamp__ : Long, represents the time of the operation.

traceroute
==========

> Retrieve the [traceroute] Last traceroute data.

    traceroute();

Parameters
----------

- None.

Return
------

- __traceroute__ : List, [traceroute] Last traceroute data

ttl
===

> Retrieve the [ping, traceroute] The last found TTL.

    ttl();

Parameters
----------

- None.

Return
------

- __ttl__ : Integer, [ping, traceroute] The last found TTL




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [NetworkAnalysisData](networkAnalysisData.html)
 
onTcpUpload
===========

> Starts a listener on the networkAnalysis tcp and executes some actions when it changes.

    onTcpUpload(filters, callback);

Parameters
----------

- __[filters](tcpUploadFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [NetworkAnalysisData](networkAnalysisData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onTcpDownload
=============

> Starts a listener on the networkAnalysis tcp and executes some actions when it changes.

    onTcpDownload(filters, callback);

Parameters
----------

- __[filters](tcpDownloadFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [NetworkAnalysisData](networkAnalysisData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onUdpDownload
=============

> Starts a listener on the networkAnalysis udp and executes some actions when it changes.

    onUdpDownload(filters, callback);

Parameters
----------

- __[filters](udpDownloadFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [NetworkAnalysisData](networkAnalysisData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onUdpUpload
===========

> Starts a listener on the networkAnalysis udp and executes some actions when it changes.

    onUdpUpload(filters, callback);

Parameters
----------

- __[filters](udpUploadFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [NetworkAnalysisData](networkAnalysisData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onDnsRequest
============

> Starts a listener on the networkAnalysis dns and executes some actions when it changes.

    onDnsRequest(filters, callback);

Parameters
----------

- __[filters](dnsRequestFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [NetworkAnalysisData](networkAnalysisData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onPingRequest
=============

> Starts a listener on the networkAnalysis ping and executes some actions when it changes.

    onPingRequest(filters, callback);

Parameters
----------

- __[filters](pingRequestFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [NetworkAnalysisData](networkAnalysisData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.

onTracerouteRequest
===================

> Starts a listener on the networkAnalysis traceroute and executes some actions when it changes.

    onTracerouteRequest(filters, callback);

Parameters
----------

- __[filters](tracerouteRequestFilter.html)__ : JSON, defines the filters. Can be empty.
- __[callback](../../extra/callback)__ : Method executed when event triggered, returns [NetworkAnalysisData](networkAnalysisData.html) object.

Return
------

- __token__ : [Token](../../extra/token) used for canceling event listener.
