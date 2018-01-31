---
layout: page
title: Scripts
---

This guide will teach you how our crops' scripts work and how to make a good script,
then you will be able to take the best of APISENSE.

# Script execution philosophy

When you write a script on APISENSE, you will have to take into account that this script will be executed only one time by our Bees, then all the data collection will be done thanks to events.
Thus you may prefer events and repetitive actions to one shot behaviour. We will present some simple cases in the following sections.

## One shot actions

First of all, this is absolutely possible to write a script that will only execute actions at the moment of its interpretation, then do nothing.

For example, the following script will save all data regarding the battery, then upload them one time, at the script startup:

    var battery = require('battery');
    var recorder = require('recorder');

    recorder.save(battery.data()); // The data() method will create a json with a snapshot of the available data from our battery Sting.
    recorder.sync();

## Callbacks on events

You may want to upload data regularly, depending on events that the Bees' phone encountered. For this you can register _callbacks_ on predefined events.

For instance this script will __not__ upload data on startup but record data when a change in the battery connection state is detected:

    var battery = require('battery');
    var recorder = require('recorder');

    battery.onStateChanged(function(data) {
        recorder.save(data); // The data object here is a snapshot of the battery data when the event has been triggered
        recorder.sync();
    });


## Repetitive behaviour

I you don't want to be dependant on events, but want a regular exeuction of your data collection, you can also use a `timer` Sting to create repetitive actions.

For example, the following script will retrieve the user's current WiFi _ssid_ every hour:

    var wifi = require('wifi');
    var recorder = require('recorder');
    var timer = require('timer');

    timer.every("1 hour", function(data) {
        recorder.save({"ssid": wifi.ssid()}); // Note that we are creating a custom json with only the data that interests us.
        recorder.sync();
    });

# Data customization

As stated in the [Honeycomb documentation](../honeycomb#get-everything), the data are uploaded using this format:

    [
      {
        "metadata": {
          "timestamp": "2015-10-06T16:00:43+02:00",
          "device": "Android"
        },
        "header": {
          "environmentalInfo": "from sync(...) method, 1 per upload"
        },
        "body": [
          { "yourTrace": "from save(...) method, 1 per trace" },
          { "yourTrace": "another saved trace" },
        ]
      }, {
        ...
      }
    ]

## Metadata

The _metadata_ section is filled by our SDK, with some common information about the time of synchronization and the device uploading the data.

You can't modify the content of this section from the script, but please note that this is possible using the [filters feature](../honeycomb/#filter-uploaded-data).

## Header

The _header_ section might contain some common data linked to your data collection. You can add a json object in it with the `recorder.sync(json)` method.

For example, in the following script, we are saving the phone model and SDK version in our _header_:

    var battery = require('battery');
    var recorder = require('recorder');
    var timer = require('timer');
    var device = require('device');

    battery.onLevelChanged(function (data) {
        recorder.save({"level": data.level}); // Here data is a simple json object, so you can request any field
    });

    // We Synchronize our data level every 5 hours
    timer.every("5 hour", function(data) {
        recorder.sync({"model": device.model(), "version": device.versionSdk()});
    });


## Body

As you probably noticed on the previous script, we don't always call `recorder.sync()` directly after `recorder.save()`. This is indeed not always needed. In this case, the _body_ section of our data will contain an array of the saved elements when uploaded.

Please note that if the volume of data is too big, the SDK might cut the synchronization into multiple data structure, with the same _header_ and _metadata_ of course.
