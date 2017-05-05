---
layout: post
title: Visualization
---

> Handle operation on visualization sensor.

Usage
-----

`visualization` keyword is needed to instanciate this sting.

    var visualization = require('visualization');


Data accessors
--------------

- [timestamp](#timestamp)

Methods
-------

- [addBarChart](#addbarchart)
- [addLineChart](#addlinechart)
- [addMap](#addmap)
- [addPieChart](#addpiechart)
- [data](#data)

Full Example
------------

    var visualization = require('visualization');

    var addBarChartResult = visualization.addBarChart(titleinitCallback);
    var addLineChartResult = visualization.addLineChart(titleinitCallback);
    var addMapResult = visualization.addMap(titleinitCallback);
    var addPieChartResult = visualization.addPieChart(titleinitCallback);
    var dataResult = visualization.data();




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




addBarChart
===========

> Adds new bar chart visualization

    addBarChart(titleinitCallback);

Parameters
----------

- title (String): Title of chart
- initCallback (Object): Function called during chart widget initialization, receives two parameters (chart, data), a Chart instance to set the data and a list of the stored data
 
Returns
-------
- IVisualization

addLineChart
============

> Adds new line chart visualization

    addLineChart(titleinitCallback);

Parameters
----------

- title (String): Title of chart
- initCallback (Object): Function called during chart widget initialization, receives two parameters (chart, data), a Chart instance to set the data and a list of the stored data
 
Returns
-------
- IVisualization

addMap
======

> Adds new map

    addMap(titleinitCallback);

Parameters
----------

- title (String): Title of map
- initCallback (Object): Function called during map widget initialization, receives two parameters (map, data), a Map instance to set the data and a list of the stored data
 
Returns
-------
- IVisualization

addPieChart
===========

> Adds new pie chart visualization

    addPieChart(titleinitCallback);

Parameters
----------

- title (String): Title of chart
- initCallback (Object): Function called during chart widget initialization, receives two parameters (chart, data), a Chart instance to set the data and a list of the stored data
 
Returns
-------
- IVisualization

data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
 - [VisualizationData](visualizationData.html)
 
