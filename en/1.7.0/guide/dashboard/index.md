---
layout: post
title: Dashboard
---

What is it ?
------------

The [dashboard](https://apisense.io/) is the main management interface for all users collecting data.
Using it will enable you to [create crops](#manage-crops) and manage your [custom applications](#manage-own-applications), [honeycomb servers](#add-a-custom-backend), and [sting documentation](#document-a-custom-sting).


## Manage crops

### Create

While creating a crop, you will have to provide some configuration:

- _Define_ your crop by providing a name, description and optionaly your associated website,
- Set the crop _visibility_, if you intend to use our mobile application [Bee](../bee), your crop should be either _Public_ or _Unlisted_, enabling anybody will to contribute from the application. A _Private_ crop will only be visible using an [SDK instance with a provided access key](../sdk#add-your-private-key),
- Choose a backend server from the official ones, or one of your [own instance](#add-a-custom-backend).
- Configure the _data access policy_. You can limit the access to produced data [only to authorized api key](../honeycomb#access-private-data).


<div class="alert alert-info" role="alert">INFO: Your crop will remain invisible while not deployed, giving you all the time you need to configure your crop behavior.</div>
<div class="alert alert-warning" role="alert">WARN: Be wary that your data are configured as open to anybody by default.</div>

### Code it

You can then use the editor to write your crop's script using every [Sting](../../stings) you need.
It should be quite easy and user friendly but if you're in trouble, you can contact us at [contact@apisense.io](contact@apisense.io)

### Publish it

When ready to start collecting data, press the _deploy_ button on the editor.
Your crop will be activated and published on the store, waiting for users to subscribe to it.

## Manage own applications

When creating a custom application using APISENSE, you will need to [provide an access key to your SDK](../sdk#authorize-your-sdk).
This key will be generated when adding the application on the [dashboard interface](https://apisense.io/settings/apps).

This will also enable you to use [GCM messaging](../advanced/gcm) on your application.

## Add a custom backend

If you want to keep your data under control, you can deploy your own [Honeycomb server](../honeycomb).

To use it on a crop, you will have to [add the server to your account](https://apisense.io/settings/backends), also providing the API key to use on the honeycomb configuration.

## Document a custom sting

You are using a custom Sting and want to use the editor auto-completion?
Add a tern compatible documentation on [your settings](https://apisense.io/settings/libs), and the Sting will be added to your library.
