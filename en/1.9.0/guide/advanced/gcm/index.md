---
layout: post
title: GCM
---

The **G**oogle **C**loud **M**essaging enables you to command the collect installed on your mobile applications from the web dashboard.


<div class="alert alert-info" role="alert">
     INFO: On top of enabling remote control, GCM will automatically update your collects when you deploy them.
</div>


## Enables GCM on Android

To use GCM on an Android application, you have to :

 1. Create a GCM project [here](https://developers.google.com/mobile/add)
 2. The [installation instructions](https://firebase.google.com/docs/cloud-messaging/) are slightly changed. You'll have to:
    1. Copy the generated `google-services.json` to your project's `app` folder.
    2. Add the _GCM_ plugin (which will use the previous file) to your _gradle_ configuration:
       1. In your `buildscript.dependencies`, add `classpath 'com.google.gms:google-services:3.0.0'`
       2. Apply the plugin: `apply plugin: 'com.google.gms.google-services'`
    3. Register the following receivers and services into your `AndroidManifest.xml`:

       ~~~ xml
       <service
            android:name="com.apisense.sdk.push.APSGcmListenerService">
            <intent-filter>
                <action android:name="com.google.firebase.MESSAGING_EVENT" />
            </intent-filter>
        </service>

        <service
            android:name="com.apisense.sdk.push.RegistrationIntentService"
            android:exported="false">
            <intent-filter>
                <action android:name="com.apisense.sdk.gcm.register"/>
                <action android:name="com.apisense.sdk.gcm.pubsub.register"/>
                <action android:name="com.apisense.sdk.gcm.pubsub.unsubscribe"/>

                <category android:name="com.apisense.sdk.push"/>
            </intent-filter>
        </service>

        <activity android:name="com.apisense.sdk.push.APSGcmNotificationHandlerActivity">
            <intent-filter>
                <action android:name="HANDLE_APISENSE_PUSH" />
                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
        </activity>
       ~~~

## Enables GCM notifications on the dashboard

Once you prepared your application to receive _GCM_ notification from APISENSE,
you will have to activate the feature on the dashboard:

1. On your home page, click on `edit Profile`
2. Go to the section `Mobile Applications`
3. Fill in the form with:
    - Your application name, which is only a reminder for you.
    - The server GCM key that APISENSE can use to send notifications.
    - In case of a notification, set the values you want to use on it.
4. Confirm the form, your collects can now be remote controlled.
