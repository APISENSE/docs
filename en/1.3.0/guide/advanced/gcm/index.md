---
layout: post
title: GCM
---

The **G**oogle **C**loud **M**essaging enables to command the collect installed on your mobile applications from the web dashboard.


<div class="alert alert-info" role="alert">
     INFO: At the moment, GCM will only automatically update your collects when you deploy them.
</div>


## Enables GCM on Android

To use GCM on an Android application, you have to :

 1. Create a GCM project [here](https://developers.google.com/mobile/add)
 2. The [installation instructions](https://developers.google.com/cloud-messaging/android/client) are slightly changed. You'll have to:
    1. Copy the generated `google-services.json` to your project's `app` folder.
    2. Add the _GCM_ plugin (which will use the previous file) to your _gradle_ configuration:
       1. In your `buildscript.dependencies`, add `classpath 'com.google.gms:google-services:1.3.0-beta1'`
       2. Apply the plugin: `apply plugin: 'com.google.gms.google-services'`
    3. Add the following permissions to your `AndroidManifest.xml`:

       ~~~ xml
       <uses-permission android:name="android.permission.WAKE_LOCK" />
       <uses-permission android:name="com.google.android.c2dm.permission.RECEIVE" />
       <permission android:name="your.registered.package.permission.C2D_MESSAGE"
         android:protectionLevel="signature" />
       <uses-permission android:name="your.registered.package.permission.C2D_MESSAGE" />
       ~~~
    4. Register the following receivers and services into your `AndroidManifest.xml`:

       ~~~ xml
       <receiver
           android:name="com.google.android.gms.gcm.GcmReceiver"
           android:exported="true"
           android:permission="com.google.android.c2dm.permission.SEND" >
           <intent-filter>
               <action android:name="com.google.android.c2dm.intent.RECEIVE" />
               <category android:name="your.registered.package" />
           </intent-filter>
       </receiver>

       <service
           android:name="com.apisense.sdk.push.APSGcmListenerService"
           android:exported="false" >
           <intent-filter>
               <action android:name="com.google.android.c2dm.intent.RECEIVE" />
           </intent-filter>
       </service>

       <service
           android:name="com.apisense.sdk.push.APSInstanceIDListenerService"
           android:exported="false">
           <intent-filter>
               <action android:name="com.google.android.gms.iid.InstanceID"/>
           </intent-filter>
       </service>

       <activity
           android:name="com.apisense.sdk.push.APSGcmNotificationHandlerActivity">
           <intent-filter>
               <action android:name="HANDLE_APISENSE_PUSH" />
               <category android:name="android.intent.category.DEFAULT" />
           </intent-filter>
       </activity>
       ~~~
    5. Set your `senderID` into _APISENSE_:

       ~~~ android
       APISENSE apisense = new APISENSE(application).enableGCM(getString(R.string.gcm_defaultSenderId));
       ~~~


## Enables GCM notifications on the dashboard

Once you have prepared your application to receive _GCM_ notification from APISENSE,
you will have to activate the feature on the dashboard:

1. On your home page, click on `edit Profile`
2. Go to the section `Mobile Applications`
3. Fill in the form with:
    - Your application name, which is only a reminder for you.
    - The server GCM key that APISENSE can use to send notifications.
    - In case of a notification, set the values you want to use on it.
4. Confirm the form, your collects can now be remotely controlled.
