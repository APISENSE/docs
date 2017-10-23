---
layout: post
title: DbHelper
---

> Handle operation on dbHelper sensor.

Usage
-----

`dbHelper` keyword is needed to instanciate this sting.

    var dbHelper = require('dbHelper');


Data accessors
--------------

- [timestamp](#timestamp)

Methods
-------

- [data](#data)
- [geojson](#geojson)
- [influx](#influx)
- [neo4j](#neo4j)
- [save](#save)
- [sync](#sync)

Full Example
------------

    var dbHelper = require('dbHelper');

    var dataResult = dbHelper.data();
    var geojsonResult = dbHelper.geojson();
    var influxResult = dbHelper.influx(measurement);
    var neo4jResult = dbHelper.neo4j();
    dbHelper.save(record);
    dbHelper.sync();




---


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




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
- [DbHelperData](dbHelperData.html)

geojson
=======

> Create an editable GeoJson record.

    geojson();

Parameters
----------

- None.
 
Returns
-------
- [GeoJsonRecord](/jsdoc/1.11.0/sdk/GeoJsonRecord.html)

influx
======

> Create an editable influx record.

    influx(measurement);

Parameters
----------

- measurement (String): The influx measurement.
 
Returns
-------
- [InfluxRecord](/jsdoc/1.11.0/sdk/InfluxRecord.html)

neo4j
=====

> Create an editable neo4j record.

    neo4j();

Parameters
----------

- None.
 
Returns
-------
- [Neo4jRecord](/jsdoc/1.11.0/sdk/Neo4jRecord.html)

save
====

> Save the data locally, waiting to be synchronised. This method is the same as recorder.save(record.toJson())

    save(record);

Parameters
----------

- record (DBRecord): The record to save.
 
Returns
-------
- void

sync
====

> Call the synchronisation with the honeycomb sever of the previously saved records. This method is the same as recorder.sync()

    sync();

Parameters
----------

- None.
 
Returns
-------
- void
 
