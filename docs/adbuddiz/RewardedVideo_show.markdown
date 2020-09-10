# adbuddiz.RewardedVideo_show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, AdBuddiz, rewarded video, show
> __See also__			[adbuddiz.RewardedVideo_isReadyToShow()][plugin.adbuddiz.RewardedVideo_isReadyToShow]
>						[adbuddiz.RewardedVideo_fetch()][plugin.adbuddiz.RewardedVideo_fetch]
>						[adbuddiz.*][plugin.adbuddiz]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Shows a rewarded video ad. Notifies the rewarded video listener via the `"didComplete"` event value when the video is completed &mdash; at this point you should give the user an associated reward.

## Syntax

	adbuddiz.RewardedVideo_show()

## Example

``````lua
local function listenerRewardedVideo( event )
	if event.value == "didComplete" then
		-- Reward user here
	end
end
Runtime:addEventListener( "AdBuddizRewardedVideoEvent", listenerRewardedVideo )

adbuddiz.RewardedVideo_fetch()
``````
