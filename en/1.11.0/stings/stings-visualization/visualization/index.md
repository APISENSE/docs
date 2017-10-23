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

    var addBarChartResult = visualization.addBarChart(title, initCallback);
    var addLineChartResult = visualization.addLineChart(title, initCallback);
    var addMapResult = visualization.addMap(title, initCallback);
    var addPieChartResult = visualization.addPieChart(title, initCallback);
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
- [IVisualization](/jsdoc/1.11.0/stings-visualization/IVisualization.html)

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
- [IVisualization](/jsdoc/1.11.0/stings-visualization/IVisualization.html)

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
- [IVisualization](/jsdoc/1.11.0/stings-visualization/IVisualization.html)

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
- [IVisualization](/jsdoc/1.11.0/stings-visualization/IVisualization.html)

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
 
