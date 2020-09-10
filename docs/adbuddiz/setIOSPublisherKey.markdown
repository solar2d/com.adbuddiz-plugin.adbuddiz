# adbuddiz.setIOSPublisherKey()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, AdBuddiz, setIOSPublisherKey
> __See also__          [adbuddiz.setAndroidPublisherKey()][plugin.adbuddiz.setAndroidPublisherKey]
>						[adbuddiz.*][plugin.adbuddiz]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Only needed if the app is published on the Apple Store.

Configures your iOS app AdBuddiz publisher key. Publisher key is available on [adbuddiz.com](http://www.adbuddiz.com/?utm_source=corona&utm_medium=web&utm_campaign=corona) after signup.

Call before [adbuddiz.cacheAds()][plugin.adbuddiz.cacheAds].

## Syntax

	adbuddiz.setIOSPublisherKey( publisherKey )

##### publisherKey ~^(required)^~
_[String][api.type.String]._ unique identifier for the iOS version of your app. Available on [adbuddiz.com](http://www.adbuddiz.com/?utm_source=corona&utm_medium=web&utm_campaign=corona) after signup.

## Example

``````lua
adbuddiz.setIOSPublisherKey( "TEST_PUBLISHER_KEY" )
``````
