---
layout: post
title: Custom Sting
---

<script type="text/javascript" src="../../../../../scripts/get.js"></script>

You may want to add custom sensors or features to your application using our SDK.
To do so you will have to create a custom [Sting](../../../stings).

<hr/>

<button onClick="displayAndroid()" type="button" class="btn btn-primary navbar-btn" id="android-btn">Android</button>
<button onClick="displayIOS()" type="button" class="btn btn-default navbar-btn" id="ios-btn">iOS</button>

<div id="show-android" markdown="1">

## Define your Sting API

The Sting API, also named _Dart_ is generated from a _json_ description file.
This enables you to get every version of a same API in various languages and a documentation file compatible with the Dashboard editor.


    {
        "name":"myCustomSting",
        "type":"dart",
        "description":"Show an example of Sting creation",
        /**
         * Seeds are the values returned by the Sting,
         * You can use the following pre-defined types: 
         * string, integer, long, float, double
         */
        "seeds":[
            {
                "name": "someData",
                "description": "Value handled by the Sting",
                "type": "string"
            },
            {
                "name": "anotherData",
                "description": "Some number",
                "type": "long"
            }
        ],
        /**
         * Methods are some freely defined behavior on the given Sting
         *
         * If your method has to register some asynchronous actions you can use a
         * 'io.apisense.dart.future.JSPromise' object.
         */
        "methods":[
            {
                "name":"someOneShotMethod",
                "description":"a specific behavior for the Sting",
                "parameters":[
                    {
                        "name":"oneParameter",
                        "type":"string",
                        "description": "Some parameter for the method"
                    }
            ],
                "type":"io.apisense.dart.future.JSPromise",
                "returned": "Description of the returned element"
            }
        ],
        /**
         * Sprouts are the event definitions,
         * They will define a new method asking a callback to the user,
         * and waiting to be triggered.
         *
         * The event must be composed by two strings delimited by a semicolon.
         * The first string represents the event name, 
         * the second one represents the event status.
         */
        "sprouts":[
            {
                "event":"someSensor:status",
                "description":"Create an event"
            },
            {
                "event":"aRequest:completed",
                "description":"Create an event taking a single argument as configuration",
                "privateFilters": false, // Default to false, turn to true if you want to manage your filters from the Sting
                "filters":[
                    {
                        "label":"filter",
                        "description":"a value changing the event configuration",
                        "type":"string"
                    }
                ]
            },
            {
                "event":"someSensor:otherStatus",
                "description":"Create an event taking  a json as configuration",
                "filters":[
                    {
                        "label":"aString",
                        "description":"A filter",
                        "type":"string"
                    },
                    {
                        "label":"aNumber",
                        "description":"another filter",
                        "type":"long"
                    }
                ]
            }
        ]
    }
    
## Generate your API

### One shot

You will have to use the _dart-generator_
[tarball](http://repo1.maven.org/maven2/io/apisense/dart-generator/1.4.3/dart-generator-1.4.3.tar)
or [zip file](http://repo1.maven.org/maven2/io/apisense/dart-generator/1.4.3/dart-generator-1.4.3.zip)
in order to create your _Dart_ from the description file.

Decompress the file, then start the binary as follow:
    
    $ ./dart-generator-1.1.0/bin/dart-generator file.dart [other.dart]

This will generate every possible outputs by type and dart.
You should find a `generated` folder containing:
  
  - __java__: contains java sources under the `io.apisense.dart.$dartName` package.
  - __iOS__: contains  iOS sources.
  - __html__: contains markdown documentation about the _Dart_s.

If you want to generate the API documentation for the _Dashboard_ editor,
you will have to download _java-api-generator_
[tarball](http://repo1.maven.org/maven2/io/apisense/java-api-generator/1.4.3/java-api-generator-1.4.3.tar)
or [zip file](http://repo1.maven.org/maven2/io/apisense/java-api-generator/1.4.3/java-api-generator-1.4.3.zip).

Decompress the file, then start the binary as follow:

    $ ./java-api-generator-1.1.0/bin/java-api-generator -n libraryName -o output.json ./generated/java/io/apisense/dart/*/*Dart.java

You can then import the file `output.json` into your _Dashboard_ settings.

### Automation for Android

If you want your _Dart_ to always be up to date, you can integrate our plugin in your project.

To do so, make sure you have the following lines in your `build.gradle`:

    buildscript {
        repositories {
            mavenCentral()
        }
        dependencies {
            classpath 'io.apisense:dart-gradle-plugin:1.4.3'
        }
    }
    apply plugin: 'dart-android'

    dart {
        darts = "${projectDir}/src/main/resources/darts" // Location of your input dart files
        output = "${buildDir}/generated/source/dart" // Location of the output
        apiName = 'myLib' // Name of your custom library (used on api documentation)
        javaBasePackage = 'io.apisense.dart' // base package for the generated classes
    }

You should find those folders:
  
  - __$buildType__: contains java sources under the `io.apisense.dart.$dartName` package.
  - __resources__: contains generated documentation resources:
    - __api__: contains json file containing API documentation to import in the Dashboard settings.
    - __html__: contains html documentation about the _Dart_.

Please note that if you want to use `JSPromise` in your Sting, you will need the dependency:

    dependencies {
        implementation 'io.apisense:java-darts:1.4.3'
    }

## Implement your features

You will have to create a class extending the _dart_ skeleton.

    public class MySting extends MyCustomStingDartSkel {
        private MyCustomStingData currentData = new MyCustomStingData(seeds(), "Hello world!", 42L);
        private final APISENSEPromiseFactory<MyCustomStingData> promiseFactory;
    
        // Collected by the SDK to provide sensor list
        public static final Sensor SENSOR_DESCRIPTION = new Sensor(
            "MySting common name",
            NAME,
            "Describe your Sting main behavior",
            R.drawable.sting_icon
        );
    
        @Inject
        protected MySting(EventBus bus, APISENSEPromiseFactory promiseFactory) {
            super(bus, EnumSet.allOf(MyCustomStingSeed.class));
            this.promiseFactory = promiseFactory;
        }
    
        @Override
        public String someData() {
            return currentData.someData;
        }
    
        @Override
        public Long anotherData() {
            return currentData.anotherData;
        }

        @Override
        public JSPromise someOneShotMethod(String oneParameter) {
            APISENSEPromise promise = promiseFactory.get();
            /* Promise usage:
             * On operation update: promise.notify(currentData); // Calls JSPromise.progress(callback)
             * On operation success: promise.resolve(currentData); // Calls JSPromise.onSuccess(callback)
             * On operation failure: promise.reject(currentData); // Calls JSPromise.onFailure(callback)
             *
             * Json users can also specify a JSPromise.then(callback) to be executed on both success and failure
             * on top of the specific treatments.
             */
            promise.resolve(currentData)
            return promise;
        }
   
        @Override
        protected Tokens.TokensListener<String> initARequestCompletedListener() {
            return new Tokens.TokensListener<String>() {
                @Override
                public void init() {
                    // Create everything needed to use this event.
                }
    
                @Override
                public String computeTopic(final EventFilter<String> eventFilter) {
                    // Retrieve your filter value using EventFilter.SINGLE_VALUE, since it's your only value
                    final String filter = (String) eventFilter.get(EventFilter.SINGLE_VALUE);
                    new AsyncTask<String, Void, MyCustomStingData>() {
                        @Override
                        protected MyCustomStingData doInBackground(String... aString) {
                            // Do something with the filter string (e.g. a network request)
                            return new MyCustomStingData(seeds(), "AnotherValue", 12L);
                        }
    
                        @Override
                        protected void onPostExecute(MyCustomStingData newData) {
                            super.onPostExecute(newData);
                            currentData = newData;
                            // Publish the results when needed to execute user callback
                            publish(MyCustomStingEvent.AREQUEST_COMPLETED, currentData, eventFilter);
                        }
                    }.execute(filter);
                    return MyCustomStingEvent.AREQUEST_COMPLETED.toString();
                }
    
                @Override
                public void discardFilter(EventFilter<String> eventFilter) {
                    // Remove any callback registration using current filter
                }
    
                @Override
                public void release() {
                    // Remove every callback registration
                    // And release every related objects
                }
            };
        }
    
        @Override
        protected Tokens.TokensListener<SomeSensorStatusFilter> initSomeSensorStatusListener() {
            return new Tokens.TokensListener<SomeSensorStatusFilter>() {
                @Override
                public void init() {
                    // Create everything needed to use this event.
                }
    
                @Override
                public String computeTopic(EventFilter<SomeSensorStatusFilter> eventFilter) {
                    // The generator will provide Enumerates for multi-values filters
                    final String aString = (String) eventFilter.get(SomeSensorStatusFilter.ASTRING);
                    final long aNumber = (Long) eventFilter.get(SomeSensorStatusFilter.ANUMBER);
                    // Do something with the filter and call publish when done
                    publish(MyCustomStingEvent.SOMESENSOR_STATUS, currentData, eventFilter);
                    return MyCustomStingEvent.SOMESENSOR_STATUS.toString();
                }
    
                @Override
                public void discardFilter(EventFilter<SomeSensorStatusFilter> eventFilter) {
                    // Remove any callback registration using current filter
                }
    
                @Override
                public void release() {
                    // Remove every callback registration
                    // And release every related objects
                }
            };
        }
    }


## Integrate it to the SDK

Create a class that extends `InjectedStingPackage` and initialize all your Stings in the method `getInstances`.
This method will give a `StingComponent` as argument, containing all the available injected values.

    import java.util.Arrays;
    import java.util.List;

    import io.apisense.sdk.core.sting.InjectedStingPackage;
    import io.apisense.sdk.core.sting.StingComponent;
    import io.apisense.sting.lib.Sting;

    public class EnvironmentStingModule extends InjectedStingPackage {
        @Override
        public List<Sting> getInstances(StingComponent component) {
            return Arrays.<Sting>asList(
                new MySting(component.bus(), component.promiseFactory()),
                new OtherStingWithContext(component.bus(), component.context())
            );
        }
    }
    
You will then only have to [provide your module to the SDK initialization](../../sdk/#configure-your-sdk).

</div>

<div id="show-ios" markdown="1"> 

Until further updates, to create a custom sting you'll just have to create a new file, you can call it whatever you want.

Example, CustomSting.swift

    import Apisense
    import JavaScriptCore
    import CocoaLumberjack

    @objc public protocol CustomStingExports: JSExport {
        func info(_ param: String)
    }

    class CustomSting: Sting, CustomStingExports {
        public func info(_ message: String) {
            DDLogInfo(message)
        }
    }

The protocol declare functions you want to expose in your javascript. In this example, we expose a function call `info` with one parameter called `message` which going to display this message (String) in the terminal.

Then we implement this function in `CustomSting`, note that you'll have to extend `Sting` and implement your protocol.

And that's it, once your `CustomSting` is pass to APISENSE during its initialization, you'll be able to execute crop using your own methods.
</div>
