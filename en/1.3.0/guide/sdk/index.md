---
layout: page
---

<script type="text/javascript" src="../../../../scripts/get.js"></script>

# SDK

## What is it?

SDK stands for `Software Development Kit`. Basically it's some code we wrote so you can use our technology easily.

<hr/>

<div style="float:right">
<button onClick="displayAndroid()" type="button" class="btn btn-primary navbar-btn" id="android-btn">Android</button>
<button onClick="displayIOS()" type="button" class="btn btn-default navbar-btn" id="ios-btn">iOS</button>
</div>

<div id="show-android" markdown="1">

## Download: 

Get our [Android SDK here](../../get/apisense-android-sdk.tgz).

## Installation:

To install it with __Gradle__ all you have to do is:

- Extract the tarball inside a library folder, _libs_ for example.
- Add this folder as a maven repository in your main _build.gradle_:

        allprojects {
            repositories {
                maven {
                    url "libs"
                }
            }
        }

- Add the dependency on your project's _build.gradle_:

        dependencies {
            compile 'com.apisense.sdk:apisense-android-sdk:1.0.0'
        }

## permissions

We intend to give you a total control on your application permissions. Hence the SDK does not add permissions by default.

That being said, you may want to add those permissions in your _manifest.xml_:

- If you need to communicate with the apisense server __(most likely the case)__:
    - `<uses-permission android:name="android.permission.INTERNET"/>`
-  If you intend to use the [WifiSting]({{ "../../stings/wifi" }}):
    - `<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />`
    - `<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>`
- If you intend to use the [LocationSting]({{ "../../stings/location" }}):
    - `<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />`
    - `<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />`
    - `<uses-permission android:name="android.permission.ACCESS_COARSE_UPDATES" />`


## Usage

In your Application class, you can initialise the APISENSE SDK like this:
    import com.apisense.sdk.APISENSE;

    // Create the SDK instance
    APISENSE apisense = new APISENSE(application); // Standard config

    // Add optional configuration
    apisense.addStingsModules(new MyOwnStingModule()); // More Stings injected!

    // Create the Sdk singleton and use it
    APISENSE.Sdk sdk = apisense.getSdk(); // Initialisation
    APISENSE.Sdk sdk2 = apisense.getSdk(); // Same instance
    
## Add your private key

If you want to allow people to see your private collects, add the following line before creating the SDK singleton:

    apisense.useAccessKey(accessKey);

## Install a specific collect

You may want to install a specific collect, here is a sample to do so:

    // You can find this value at the end of the URL when looking at your collect on the Honeycomb server
    String cropIdentifier = "ZzQq5wW8zgIn3mJ3ylnw";

    // Log your _Bee_ user in.
    sdk.getSessionManager().login("my@email.com", "myPassword",  new APSCallback<Void>() {
      @Override
      public void onDone(Void aVoid) {
        installExperiment(); // You can now install the experiment.
      }

      @Override
      public void onError(Exception e) {
        e.printStackTrace();
      }
    });

    // Install and start the collect, using your accessKey if the access is private
    private void installExperiment() {
      sdk.getCropManager().installSpecific(cropIdentifier, new APSCallback<Crop>() {
        @Override
        public void onDone(final Crop crop) {
         // Crop Installed and started
        }

        @Override
        public void onError(Exception e) {
          e.printStackTrace();
        }
      }
    }

</div>

<div id="show-ios" markdown="1"> 

## Download: 

Get our [iOS SDK here](../../get/apisense-ios-sdk-release.zip).

## Installation:

It should take less than 5 minutes to configure your project to be able to use our SDK.

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
        pod 'Google/CloudMessaging', '~> 1.2.1'
        pod 'QuickDialog', '~> 1.1.0'

- Run `pod install`, close your project and open it again with the `*.sxworkspace` file.

## Usage

At this point, you should be able to create an instance of APISENSE SDK using:

	#import "apisense/APISENSE.h"
	APISENSE* sdk = [[APISENSE alloc] init]; // Standard initialization

- Run your application, if everything is ok you should see `[INFO]  11/30 11:38:04  APISENSE - SDK Initiliazed` in the log section.

## Add your private key

If you want to allow people to see your private collects, add the following line:

    [sdk useAccessKey:accessKey];

</div>

<div style="float:right">
<button onClick="displayAndroid()" type="button" class="btn btn-primary navbar-btn" id="android-btn">Android</button>
<button onClick="displayIOS()" type="button" class="btn btn-default navbar-btn" id="ios-btn">iOS</button>
</div>
