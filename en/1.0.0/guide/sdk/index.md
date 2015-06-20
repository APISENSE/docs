---
layout: post
---

SDK
===

What is it ?
------------

SDK stands for `Software Development Kit`. Basically it's some code we wrote for you so you can use our technology easily !

Android
-------

- __Download__: 

Our SDK is not available on official repository so at this point, you have to download it manually. Get our [Android SDK here]({{ "get/apisense-android-sdk-release.aar" | prepend: site.url }}).

- __Installation__: 

All you have to do is to put inside you lib/ directory and play with it !

iOS
---

- __Download__: 

Get our [iOS SDK here]({{ "get/apisense-ios-sdk-release.zip" | prepend: site.url }}).

- __Installation__:

It should take less than 5 minutes to configure your project be able to use our SDK.

- Extract the `zip` archive
- Drag & drop `lib` and `apisense` folders inside your target application besides your sources. Check copy files if needed.
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
		pod 'Reachability', '~> 3.2'

- Run `pod install`, close your project and open it again with the `*.sxworkspace` file.

	At this point, you should be able to create an instance of Apisense SDK using:

		#import "apisense/APISENSE.h"
		APISENSE* sdk = [[APISENSE alloc] init];

- Run your application, if everything is ok you should see `[INFO]	APISENSE - Initiliazed` in the log section.