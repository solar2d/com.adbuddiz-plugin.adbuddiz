# adbuddiz.RewardedVideo_fetch()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, AdBuddiz, rewarded video, fetch
> __See also__			[adbuddiz.RewardedVideo_isReadyToShow()][plugin.adbuddiz.RewardedVideo_isReadyToShow]
>						[adbuddiz.RewardedVideo_show()][plugin.adbuddiz.RewardedVideo_show]
>						[adbuddiz.*][plugin.adbuddiz]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Fetches the next rewarded video ad. Should be called each time before calling [adbuddiz.RewardedVideo_show()][plugin.adbuddiz.RewardedVideo_show]. Notifies the rewarded video listener via the `"didFetch"` event value when the video is fetched.

## Syntax

	adbuddiz.RewardedVideo_fetch()

## Example

``````lua
local function listenerRewardedVideo( event ) 
	if event.value == "didFetch" then
		-- The video has been fetched
	end
end
Runtime:addEventListener( "AdBuddizRewardedVideoEvent", listenerRewardedVideo )

adbuddiz.RewardedVideo_fetch()
``````
