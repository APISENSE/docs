---
layout: post
---

Dashboard
========= 

What is it ?
------------

The [dashboard](http://apisense.io/) is the main interface to all data collectors. Using it you will be able to:
	
* Customize your profile settings
* Create your own collects
* Retrieve and analyze fresh data

How to use it ?
---------------

1. __Sign up__:
First of all you have to create an account. Some personal information like your username will be linked to your collects and shown in our store. Choose it wisely !

2. __Create a collect__:
Then you have to create a collect and set its name, description and optionaly your website. Those information will be used in our store to explain what you are planning to do with this collect. Again these are really important and must be filled carefully.

    <div class="alert alert-warning" role="alert">WARN: By default your collect is private so people won't be able to see it until you finish to write it. Remember to set it visible once it's ready!</div>

    <div class="alert alert-info" role="alert">INFO: A unique identifier is created for your collect, it should look like PzeDd1r0nNtN8JdNNrlY and can be found at the end of the url on the dashboard of your collect.</div>

3. __Code it__:
Last crutial step, you have to write your collect using our documentation. It should be quite easy and user friendly but if you're in trouble, you can contact us at [contact@apisense.com](contact@apisense.com)

4. __Publish it__:
First of all you have to create an account. Some personal information like your username will be linked to your collects and shown in our store. Choose it wisely !

Create private collects
-----------------------

If you want to create collect only accessible by your community, you will need to let it private __and__ create your own application using your private access key. Doing so, people with your application will be able to see it in the store !
Open your profile settings and copy the key inside _Read only API Key_. See [how to use it here](../sdk)

## Retrieve your data

### Get everything

To retrieve the data from your collect, you can click on the button `Download data` from the dashboard of your collect.
But you also have access to an API to get the raw json of data using `/api/v1/$collectIdentifier/data`.

The Json you will retrieve is build as follow:

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

### Filter the output

If you don't want to download every collected traces from the server, you can define custom routes to filter the data beforehand.

The creation of these routes can be done in the `Filters` menu, from the collect dashboard.
In this menu, you will find a script editor, in which you can add routes with the following (Javascript) syntax:

    // This filter will only return the metadata of each collected trace.
    // It can be accessed from the route /api/v1/$collectIdentifier/data/meta
    rest.prepareFilter("meta", function(data){ // data will be your raw data json array
      var result = [];
      for each (var ele in data) {
        result.push(ele.metadata);
      }
      return result; // This will be parsed as a Json.
    });


Save your script, you can now access the result of your filter on the route `/api/v1/$collectIdentifier/data/meta` for this collect.