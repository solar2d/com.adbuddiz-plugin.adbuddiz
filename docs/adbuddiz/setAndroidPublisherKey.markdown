# adbuddiz.setAndroidPublisherKey()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, AdBuddiz, setAndroidPublisherKey
> __See also__          [adbuddiz.setIOSPublisherKey()][plugin.adbuddiz.setIOSPublisherKey]
>						[adbuddiz.*][plugin.adbuddiz]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Only needed if the app is published on Google Play.

Configures your Android app AdBuddiz publisher key. Publisher key is available on [adbuddiz.com](http://www.adbuddiz.com/?utm_source=corona&utm_medium=web&utm_campaign=corona) after signup.

Call before [adbuddiz.cacheAds()][plugin.adbuddiz.cacheAds].

## Syntax

	adbuddiz.setAndroidPublisherKey( publisherKey )

##### publisherKey ~^(required)^~
_[String][api.type.String]._ Unique identifier for the Android version of your app. Available on [adbuddiz.com](http://www.adbuddiz.com/?utm_source=corona&utm_medium=web&utm_campaign=corona) after signup.

## Example

``````lua
adbuddiz.setAndroidPublisherKey( "TEST_PUBLISHER_KEY" )
``````
