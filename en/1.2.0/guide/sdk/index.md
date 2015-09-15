---
layout: page
---

<script type="text/javascript" src="../../../../scripts/get.js"></script>

# SDK

## What is it ?

SDK stands for `Software Development Kit`. Basically it's some code we wrote for you so you can use our technology easily !

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


## Usage

In your Application class, you can initialise the APISENSE Sdk like this:
    import com.apisense.sdk.APISENSE;

    // Create the SDK instance
    APISENSE apisense = new APISENSE(); // Standard config

    // Add optional configuration
    apisense.addStingsModules(new MyOwnStingModule()); // More Stings injected!

    // Create the Sdk singleton and use it
    APISENSE.Sdk sdk = apisense.getSdk(); // Initialisation
    APISENSE.Sdk sdk2 = apisense.getSdk(); // Same instance
    
</div>

<div id="show-ios" markdown="1"> 

## Download: 

Get our [iOS SDK here](../../get/apisense-ios-sdk-release.zip).

## Installation:

It should take less than 5 minutes to configure your project be able to use our SDK.

- Extract the `zip` archive
- Drag &amp; drop `lib` and `apisense` folders inside your target application besides your sources. Check copy files if needed.
- In `Build settings` > `Header Search Path` add `$SOURCE_ROOT/apisense`
- In `Build Phases` check that you have our `apisense-android-sdk-release.a` file or add it.
- In `Build settings` > `Other Linker Flags` add `-ObjC`

Next, open a terminal and go to your project folder.

- Tap `pod init`
- You should have a file named `Podfile`, copy paste the following code in your first target block. These are the dependencies used in the APISENSE® project.

        pod 'AFNetworking', '~> 2.5.1'
        pod 'CocoaSecurity'
        pod 'Objection', '~> 1.4'
        pod 'Mantle', '~> 1.5.4'
        pod 'tolo', '~> 1.0.0'
        pod 'CocoaLumberjack', '~> 2.0.1'
        pod 'FTPManager', '~> 1.6.5'

- Run `pod install`, close your project and open it again with the `*.sxworkspace` file.

## Usage

At this point, you should be able to create an instance of Apisense SDK using:

	#import "apisense/APISENSE.h"
	APISENSE* sdk = [[APISENSE alloc] init];

- Run your application, if everything is ok you should see `[INFO]	APISENSE - SDK Initiliazed` in the log section.

</div>
