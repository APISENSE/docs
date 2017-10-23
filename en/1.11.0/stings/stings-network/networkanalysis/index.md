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
- [rtt](#rtt)
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
- [onDnsRequest](#ondnsrequest)
- [onPingRequest](#onpingrequest)
- [onTcpDownload](#ontcpdownload)
- [onTcpUpload](#ontcpupload)
- [onTracerouteRequest](#ontracerouterequest)
- [onUdpDownload](#onudpdownload)
- [onUdpUpload](#onudpupload)

Full Example
------------

    var networkAnalysis = require('networkAnalysis');
    var recorder = require('recorder');

    var dataResult = networkAnalysis.data();
    var onDnsRequestResult = networkAnalysis.onDnsRequest(filter, callback);
    var onPingRequestResult = networkAnalysis.onPingRequest(filter, callback);
    var onTcpDownloadResult = networkAnalysis.onTcpDownload(filter, callback);
    var onTcpUploadResult = networkAnalysis.onTcpUpload(filter, callback);
    var onTracerouteRequestResult = networkAnalysis.onTracerouteRequest(filter, callback);
    var onUdpDownloadResult = networkAnalysis.onUdpDownload(filter, callback);
    var onUdpUploadResult = networkAnalysis.onUdpUpload(filter, callback);


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
        'rtt' : networkAnalysis.rtt(),
        'size' : networkAnalysis.size(),
        'speed' : networkAnalysis.speed(),
        'speeds' : networkAnalysis.speeds(),
        'task' : networkAnalysis.task(),
        'timestamp' : networkAnalysis.timestamp(),
        'traceroute' : networkAnalysis.traceroute(),
        'ttl' : networkAnalysis.ttl(),
        'json' : networkAnalysis.data()
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

rtt
===

> Retrieve the [ping] The RTT information.

    rtt();

Parameters
----------

- None.

Return
------

- __rtt__ : Rtt, [ping] The RTT information

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

onDnsRequest
============

> Send a DNS request and report the results. Using DNSFilters as filter key (see javascript documentation).

    onDnsRequest(filtercallback);

Parameters
----------

- filter (Map): filters to apply
- callback (Object): onDone callback
 
Returns
-------
- JSPromise

onPingRequest
=============

> Send a ping request and report the results. Using PINGFilters as filter key (see javascript documentation).

    onPingRequest(filtercallback);

Parameters
----------

- filter (Map): filters to apply
- callback (Object): onDone callback
 
Returns
-------
- JSPromise

onTcpDownload
=============

> Download the required data size and report network statistics. Using TCPFilters as filter key (see javascript documentation).

    onTcpDownload(filtercallback);

Parameters
----------

- filter (Map): filters to apply
- callback (Object): onDone callback
 
Returns
-------
- JSPromise

onTcpUpload
===========

> Upload the required data size and report network statistics. Using TCPFilters as filter key (see javascript documentation).

    onTcpUpload(filtercallback);

Parameters
----------

- filter (Map): filters to apply
- callback (Object): onDone callback
 
Returns
-------
- JSPromise

onTracerouteRequest
===================

> Send a traceroute request and report the results. Using PINGFilters as filter key (see javascript documentation).

    onTracerouteRequest(filtercallback);

Parameters
----------

- filter (Map): filters to apply
- callback (Object): onDone callback
 
Returns
-------
- JSPromise

onUdpDownload
=============

> Send the required number of packets and report network statistics. Using UDPFilters as filter key (see javascript documentation).

    onUdpDownload(filtercallback);

Parameters
----------

- filter (Map): filters to apply
- callback (Object): onDone callback
 
Returns
-------
- JSPromise

onUdpUpload
===========

> Send the required number of packets and report network statistics. Using UDPFilters as filter key (see javascript documentation).

    onUdpUpload(filtercallback);

Parameters
----------

- filter (Map): filters to apply
- callback (Object): onDone callback
 
Returns
-------
- JSPromise
 
