# adbuddiz.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__				[library][api.type.library]
> __Keywords__			ads, advertising, AdBuddiz
> __Platforms__			iOS, Android
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The AdBuddiz plugin allows for easy integration of AdBuddiz premium full-screen ads in your application.


## Registration

To use the AdBuddiz service, please [sign up](http://www.adbuddiz.com/?utm_source=corona&utm_medium=web&utm_campaign=corona) for an account.


## Syntax

	local adbuddiz = require( "plugin.adbuddiz" )


## Functions

#### [adbuddiz.setAndroidPublisherKey()][plugin.adbuddiz.setAndroidPublisherKey]

#### [adbuddiz.setIOSPublisherKey()][plugin.adbuddiz.setIOSPublisherKey]

#### [adbuddiz.setTestModeActive()][plugin.adbuddiz.setTestModeActive]

#### [adbuddiz.setLogLevel()][plugin.adbuddiz.setLogLevel]

#### [adbuddiz.cacheAds()][plugin.adbuddiz.cacheAds]

#### [adbuddiz.showAd()][plugin.adbuddiz.showAd]

#### [adbuddiz.isReadyToShowAd()][plugin.adbuddiz.isReadyToShowAd]

#### [adbuddiz.RewardedVideo_fetch()][plugin.adbuddiz.RewardedVideo_fetch]

#### [adbuddiz.RewardedVideo_show()][plugin.adbuddiz.RewardedVideo_show]

#### [adbuddiz.RewardedVideo_isReadyToShow()][plugin.adbuddiz.RewardedVideo_isReadyToShow]


## Project Settings

To use this plugin, add an entry into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

``````lua
settings =
{
	plugins =
	{
		["plugin.adbuddiz"] =
		{
			publisherId = "com.adbuddiz"
		},
	},		
}
``````


## Example

``````lua
-- This simple example displays AdBuddiz ads (interstitial + rewarded video) on request

display.setStatusBar( display.HiddenStatusBar )

local adbuddiz = require( "plugin.adbuddiz" )
local widget = require( "widget" )

adbuddiz.setLogLevel( "Info" )                           -- Log level
adbuddiz.setAndroidPublisherKey( "TEST_PUBLISHER_KEY" )  -- Replace with your Android app publisher key
adbuddiz.setIOSPublisherKey( "TEST_PUBLISHER_KEY" )      -- Replace with your iOS app publisher key
adbuddiz.setTestModeActive()                             -- Delete before submitting to store
adbuddiz.cacheAds()                                      -- Start caching ads

local function interstitial_showAdClick()
	adbuddiz.showAd()
end

local showAdButton = widget.newButton
{
	left = 20,
	top = 20,
	width = 120,
	height = 40,
	label = "Show Ad",
	onRelease = interstitial_showAdClick
}

local function rewardedVideo_fetchClick()
	adbuddiz.RewardedVideo_fetch()
end

local fetchButton = widget.newButton
{
	left = 20,
	top = 80, 
	width = 120,
	height = 40,
	label = "Fetch",
	onRelease = rewardedVideo_fetchClick
}

local function rewardedVideo_ShowClick()
	adbuddiz.RewardedVideo_show()
end

local showButton = widget.newButton
{
	left = 160,
	top = 80, 
	width = 120,
	height = 40,
	label = "Show",
	onRelease = rewardedVideo_ShowClick
}

-- Events (interstitial)
local function listener( event ) 
	if event.value == "didCacheAd" then
		print( "didCacheAd" )
	end
	if event.value == "didShowAd" then
		print( "didShowAd" )
	end
	if event.value == "didClick" then
		print( "didClick" )
	end
	if event.value == "didHideAd" then
		print( "didHideAd" )
	end
	if event.value == "didFailToShowAd" then
		print( "didFailToShowAd - " .. event.detail )
	end
end
Runtime:addEventListener( "AdBuddizEvent", listener )

-- Events (rewarded video)
local function listenerRewardedVideo( event ) 
	if event.value == "didFetch" then
		print( "didFetch" )
	end
	if event.value == "didComplete" then
		print( "didComplete" )
		-- Reward user here
	end
	if event.value == "didNotComplete" then
		print( "didNotComplete" )
	end
	if event.value == "didFail" then
		print( "didFail - " .. event.detail )
	end
end
Runtime:addEventListener( "AdBuddizRewardedVideoEvent", listenerRewardedVideo )
``````


## Support

More support is available from the AdBuddiz team:

* [support@adbuddiz.com](mailto://support@adbuddiz.com)
* [http://www.adbuddiz.com](http://www.adbuddiz.com/?utm_source=corona&utm_medium=web&utm_campaign=corona)
