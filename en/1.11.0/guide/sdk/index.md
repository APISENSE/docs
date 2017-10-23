---
layout: page
title: SDK
---

<script type="text/javascript" src="../../../../scripts/get.js"></script>

## What is it ?

SDK stands for `Software Development Kit`. Basically it's some code we wrote for you so you can use our technology easily !

<hr/>

<button onClick="displayAndroid()" type="button" class="btn btn-primary navbar-btn" id="android-btn">Android</button>
<button onClick="displayIOS()" type="button" class="btn btn-default navbar-btn" id="ios-btn">iOS</button>

<div id="show-android" markdown="1">

## Installation:

Since version 1.8, you can use maven central repository to retrieve the dependency:

- Add the dependency on your project's _build.gradle_:

        dependencies {
            compile 'io.apisense.sdk:apisense-android-sdk:1.11.0'

            # If you want to be able import more stings in APISENSE
            compile 'io.apisense.sdk:stings-network:1.11.0'
            compile 'io.apisense.sdk:stings-phone:1.11.0'
            compile 'io.apisense.sdk:stings-environment:1.11.0'
            compile 'io.apisense.sdk:stings-motion:1.11.0'
            compile 'io.apisense.sdk:stings-visualization:1.11.0'
        }

## Add Manifest permissions

We intend to let you a total control on your application permissions so the SDK does not add permissions by default.

That being said, you may want to add those permisions in your _manifest.xml_:

- If you need to communicate with the apisense server __(most likely the case)__:
    - `<uses-permission android:name="android.permission.INTERNET"/>`
-  If you intend to use the [WifiSting]({{ "../../stings/sdk/wifi" }}):
    - `<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />`
    - `<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>`
- If you intend to use the [LocationSting]({{ "../../stings/sdk/location" }}):
    - `<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />`
    - `<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />`
    - `<uses-permission android:name="android.permission.ACCESS_COARSE_UPDATES" />`
- If you intend to capture media with the [FormSting]({{ "../../stings/sdk/form" }}):

        <!-- only needed for sound capture -->
        <uses-permission android:name="android.permission.RECORD_AUDIO" />

         <!-- for any kind of media -->
        <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" android:maxSdkVersion="18" />
        <application ...>
            <!--[...]-->
            <!-- applicationId is the package of your application,
            this variable is automatically set when building with gradle -->
            <provider
                android:name="android.support.v4.content.FileProvider"
                android:authorities="${applicationId}.APSFileProvider"
                android:exported="false"
                android:grantUriPermissions="true" >
                <meta-data
                    android:name="android.support.FILE_PROVIDER_PATHS"
                    android:resource="@xml/aps_media_path"
                />
            </provider>
            <!--[...]-->
        </application>
- If you intend to use the [CallSting]({{ "../../stings/stings-phone/call" }}):
  - `<uses-permission android:name="android.permission.READ_PHONE_STATE" />`
- If you intend to retrieve the foreground application with [SystemSting]({{ "../../stings/stings-phone/system" }}):
  - `<uses-permission android:name="android.permission.GET_TASKS"/>`, under API 22.
  - `<uses-permission android:name="android.permission.PACKAGE_USAGE_STATS" tools:ignore="ProtectedPermissions"/>`, from API 22.

    <div class="alert alert-warning" role="alert">
      This authorization must be explicitly given by the user in the parameters (<b>Parameters > Security > Access to usage info for Apps > *Authorize the app*</b>)
    </div>

    <div class="alert alert-info" role="alert">
      Note: This step is not necessary if you are using an <b>AccessibilityService</b> (see below).
    </div>
- If you intend to monitor the current application on foreground with [SystemSting]({{ "../../stings/stings-phone/system" }}):

        <!-- Declare an AccessibilityService to monitor the current foreground App -->
        <service
            android:label="@string/accessibility_service_name"
            android:name="io.apisense.sting.phone.system.WindowChangeDetectingService"
            android:permission="android.permission.BIND_ACCESSIBILITY_SERVICE">
            <intent-filter>
                <action android:name="android.accessibilityservice.AccessibilityService"/>
            </intent-filter>
            <meta-data
                android:name="android.accessibilityservice"
                android:resource="@xml/accessibility_service_config"/>
        </service>

        <!-- Put this configuration in res/xml/accessibility_service_config.xml -->
        <accessibility-service
            xmlns:android="http://schemas.android.com/apk/res/android"
            android:accessibilityEventTypes="typeWindowStateChanged"
            android:accessibilityFeedbackType="feedbackGeneric"
            android:accessibilityFlags="flagIncludeNotImportantViews"
            android:description="@string/accessibility_service_description"/>

    <div class="alert alert-warning" role="alert">
      The AccessibilityService must be authorized by the user (<b>Parameters > Accessibility > *Activate service*</b>) before being able to monitor your device
    </div>

## Initialize

In your Application class, you can initialise the APISENSE Sdk like this:

    import io.apisense.sdk.APISENSE;

    // Create the SDK instance
    APISENSE apisense = new APISENSE(application); // Standard config

### Authorize your SDK

Your sdk instance need to be authorized to contact our server, to do so you will have to call the following method:

    apisense.useSdkKey("mySdkKey"); // Authorize your SDK to contact the server

### Handle private crops

If you want to allow people to see your private crops, add the following line before creating the Sdk singleton:

    apisense.useAccessKey("accessKey"); // Authorize the SDK to see your private crops

### Configure your SDK

You can add custom Sting implementations using [Dagger](http://square.github.io/dagger/) modules:

    apisense.addStingsModules(new MyOwnStingModule()); // More Stings injected!
    apisense.addStingsModules(new PhoneStingModule(), new NetworkStingModule())

### Instanciate the SDK

When done with the configuration, you will have to call the method `getSdk()` at least one to initialize it, then the method will return the same instance at each call.

    // Create the Sdk singleton and use it
    APISENSE.Sdk sdk = apisense.getSdk(); // Initialisation
    APISENSE.Sdk sdk2 = apisense.getSdk(); // Same instance as sdk


## Install and start a specific crop

You may want to install a specific crop, here is a sample to do so:

    // You can find this value by looking at your crop details menu on apisense.io
    String cropIdentifier = "ZzQq5wW8zgIn3mJ3ylnw";

    // Log your Bee user in if no session available.
    if (sdk.getSessionManager().isConnected()) {
        installExperiment();
    } else {
        sdk.getSessionManager().applicationLogin(new SimpleAPSCallback<Void>() {
            @Override
            public void onDone(Void aVoid) {
                installExperiment(); // You can now install the experiment.
            }
        });
    }


    // Install and start the collect, using your accessKey if the access is private
    private void installExperiment() {
        sdk.getCropManager().installOrUpdate(cropIdentifier,  new SimpleAPSCallback<Crop>() {
            @Override
            public void onDone(Crop crop) {
                // Crop Installed, ready to be started.
                sdk.getCropManager().start(crop, new SimpleAPSCallback<Crop>() {
                    @Override
                    public void onDone(Crop crop) {
                        // Crop finally started.
                    }
                });
            }
        });
    }

### Handle Runtime permissions

Android 6 comes with the support of [permissions at runtime](http://developer.android.com/training/permissions/requesting.html).

The permissions needed by a crop depends on the Stings used by your script, and this may change at runtime, after a crop update for instance).

To help you handle needed permissions on crop startup, the SDK provide 2 methods:

    sdk.getCropManager().neededPermissions(crop);
    sdk.getCropManager().deniedPermissions(crop);

So, before starting a crop, you may want to check for permissions:

    private void start(Crop crop) {
        Set<String> deniedPermissions = sdk.getCropManager().deniedPermissions(crop);
        if (deniedPermissions.isEmpty()) {
            sdk.getCropManager().start(crop, callback);
        } else {
            // Request missing permissions before starting the crop
        }
    }

The permissions needed at runtime are checked before usage on the official Stings,
so if you don't check for permissions, your application will not crash because of a `SecurityException` 
but you crop will not have the expected behavior.

## Use a service to gather data

You can use an [Android Service](https://developer.android.com/reference/android/app/Service.html) to avoid collect interruption when your application is shut down.

### Configure the service

To use this feature, you will have to activate if in the SDK configuration:

    apisense.useScriptExecutionService(true)

Then your Application class should extend our _io.apisense.sdk.APSApplication_ class __or__ implement the dagger interface [HasDispatchingServiceInjector](https://google.github.io/dagger/api/2.10-rc4/dagger/android/HasDispatchingServiceInjector.html) as follow:

    package io.apisense.sdk;

    import android.app.Application;
    import android.app.Service;
    import dagger.android.HasDispatchingServiceInjector;
    import io.apisense.sdk.APISENSE;

    public class MyApplication extends Application implements HasDispatchingServiceInjector {
        private APISENSE.Sdk sdk;

        public APISENSE.Sdk getSdk() {
            return sdk;
        }

        @Override
        public void onCreate() {
            super.onCreate();
            sdk = new APISENSE(this)
                .useSdkKey("mySdkKey")
                .useScriptExecutionService(true)
                .getSdk();
        }

        @Override
        public dagger.android.DispatchingAndroidInjector<Service> serviceInjector() {
            return sdk.serviceInjector();
        }
    }

### Customize your service notification

The service being run in foreground in order to not being [killed by Android O](https://developer.android.com/preview/features/background.html),
we will display a notification for your application.

You can customize the content of this notification by overriding the following resources:
  - In _res/values/strings.xml_:
     - **aps_execution_service_name**: Notification title
     - **aps_execution_service_description**: Notification content
  - In _res/drawable-{hdpi,mdpi,xhdpi,xxhdpi}{,-v9,-v11}_:
    - **aps_service_notification.png**: Notification icon.

</div>

<div id="show-ios" markdown="1"> 

## Download: 

You need to create a `Podfile`, just run `pod init` in a terminal if you don't already have one.
Then you just add `Apisense` to it. The file should looks like:

    source 'https://github.com/APISENSE/ios-sdk-specs' # Our private repo
    source 'https://github.com/CocoaPods/Specs.git'

    platform :ios, '9.3'
    use_frameworks!

    target 'yourTarget' do
        pod 'Apisense', '~> 1.0.0' # Current version released
    end

Then run `pod install`. This will download it.

## Usage

At this point, you should be able to create an instance of Apisense SDK using:

	import Apisense

    let custom = Sensor(name: "Custom", stingName: "custom", description: "Custom sting", iconID: "path/to/resources")
    let newSensors = Set([custom])
    let mapping = [ custom.getStingName() : CustomSting.self ]

    sdk = APISENSE.sharedInstance
            .useAccessKey(key: accessKey) // Optional: Authorize the SDK to see your private crops
            .useSdkKey(key: sdkKey) // Required: Authorize your SDK to contact the server
            .addStings(sensors: newSensors, mapping: mapping) // Optional: Add custom stings
            .getSdk() // Required: Initialization

Note that everytime you'll call `APISENSE.sharedInstance.getSdk()` you'll get the same instance.

Run your application, if everything is ok you should see in the log section:

    [Info]: APISENSE® SDK initialized

</div>
