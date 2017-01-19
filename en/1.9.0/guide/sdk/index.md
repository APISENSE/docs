---
layout: page
title: SDK
---

<script type="text/javascript" src="../../../../scripts/get.js"></script>

## What is it ?

SDK stands for `Software Development Kit`. Basically it's some code we wrote for you so you can use our technology easily !

<hr/>

<div style="float:right">
<button onClick="displayAndroid()" type="button" class="btn btn-primary navbar-btn" id="android-btn">Android</button>
<button onClick="displayIOS()" type="button" class="btn btn-default navbar-btn" id="ios-btn">iOS</button>
</div>

<div id="show-android" markdown="1">

## Installation:

Since version 1.8, you can use maven central repository to retrieve the dependency:

- Add the dependency on your project's _build.gradle_:

        dependencies {
            compile 'io.apisense.sdk:apisense-android-sdk:1.8.0'
        }


## Add Manifest permissions

We intend to let you a total control on your application permissions so the SDK does not add permissions by default.

That being said, you may want to add those permisions in your _manifest.xml_:

- If you need to communicate with the apisense server __(most likely the case)__:
    - `<uses-permission android:name="android.permission.INTERNET"/>`
-  If you intend to use the [WifiSting]({{ "../../stings/wifi" }}):
    - `<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />`
    - `<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>`
- If you intend to use the [LocationSting]({{ "../../stings/location" }}):
    - `<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />`
    - `<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />`
    - `<uses-permission android:name="android.permission.ACCESS_COARSE_UPDATES" />`
- If you intend to capture media with the [FormSting]({{ "../../stings/form" }}):

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
- If you intend to use the [CallSting]({{ "../../stings/call" }}):
  - `<uses-permission android:name="android.permission.READ_PHONE_STATE" />`
- If you intend to retrieve the foreground application with [SystemSting]({{ "../../stings/system" }}):
  - `<uses-permission android:name="android.permission.GET_TASKS"/>`, under API 22.
  - `<uses-permission android:name="android.permission.PACKAGE_USAGE_STATS" tools:ignore="ProtectedPermissions"/>`, from API 22.

    <div class="alert alert-warning" role="alert">
      This authorization must be explicitly given by the user in the parameters (<b>Parameters > Security > Access to usage info for Apps > *Authorize the app*</b>)
    </div>

    <div class="alert alert-info" role="alert">
      Note: This step is not necessary if you are using an <b>AccessibilityService</b> (see below).
    </div>
- If you intend to monitor the current application on foreground with [SystemSting]({{ "../../stings/system" }}):

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
        sdk.getSessionManager().login("my@email.com", "myPassword",  new SimpleAPSCallback<Void>() {
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

</div>

<div id="show-ios" markdown="1"> 

## Download: 

Get our [iOS SDK here](../../get/apisense-ios-sdk-release.zip).

## Installation:

It should take less than 5 minutes to configure your project be able to use our SDK.

- Extract the `zip` archive
- Drag &amp; drop `lib` and `apisense` folders inside your target application besides your sources. Check copy files if needed.
- In `Build Phases` check that you have our `lib/apisense-android-sdk-release.a` file in `link binary with libraries` section.

Next, open a terminal and go to your project folder.

- Tap `pod init`
- You should have a file named `Podfile`, copy paste the following code in your first target block. These are the dependencies used in the APISENSE® project.

        pod 'AFNetworking', '~> 2.6.1'
        pod 'CocoaSecurity', '~> 1.2.4'
        pod 'Objection', '~> 1.6.1'
        pod 'Mantle', '~> 2.0.6'
        pod 'tolo', '~> 1.0.0'
        pod 'CocoaLumberjack', '~> 2.2.0'
        pod 'FTPManager', '~> 1.6.5'
        pod 'QuickDialog', '~> 1.1.0'
        pod 'UzysAssetsPickerController', '~> 0.9.9'
        pod 'YLProgressBar', '~> 3.8.0'

- Run `pod install`, close your project and open it again with the `*.sxworkspace` file.

## Usage

At this point, you should be able to create an instance of Apisense SDK using:

	#import "apisense/APISENSE.h"
	APISENSE* sdk = apisense = [[[[[APISENSE alloc] init]
                                                    useAccessKey:accessKey] // To see private collects
                                                    useSdkKey:sdkKey] // To contact our server
                                                    getSdk];

- Run your application, if everything is ok you should see `[INFO]  11/30 11:38:04  APISENSE - SDK Initiliazed` in the log section.

## Add your sdk key

To be able to use our SDK, you have to set the sdkKey, otherwise every request will fail.

    [sdk useSdkKey:sdkKey];

## Add your private key

If you want to allow people to see your private collects, add the following line:

    [sdk useAccessKey:accessKey];         

</div>
