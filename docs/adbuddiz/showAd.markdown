# adbuddiz.showAd()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, AdBuddiz, showAd
> __See also__			[adbuddiz.isReadyToShowAd()][plugin.adbuddiz.isReadyToShowAd]
>						[adbuddiz.cacheAds()][plugin.adbuddiz.cacheAds]
>						[adbuddiz.*][plugin.adbuddiz]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Presents an ad on screen if one is available. You can use [adbuddiz.cacheAds()][plugin.adbuddiz.cacheAds] to cache ads and [adbuddiz.isReadyToShowAd()][plugin.adbuddiz.isReadyToShowAd] to determine if an ad is available.

## Syntax

	adbuddiz.showAd( [placement] )

##### placement ~^(optional)^~
_[String][api.type.String]._ The placement name.

## Example

``````lua
local function listener( event ) 
	if event.value == "didCacheAd" then
		print( "didCacheAd" )  -- An ad was cached
	end
	if event.value == "didShowAd" then
		print( "didShowAd" )  -- An ad was displayed
	end
	if event.value == "didClick" then
		print( "didClick" )  -- The ad was clicked
	end
	if event.value == "didHideAd" then
		print( "didHideAd" )  -- The ad was hidden
	end
	if event.value == "didFailToShowAd" then
		print( "didFailToShowAd - " .. event.detail )  -- No ad displayed; explanation available in 'event.detail'
	end
end
Runtime:addEventListener( "AdBuddizEvent", listener )

adbuddiz.showAd()
``````
