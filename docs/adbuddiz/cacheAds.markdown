# adbuddiz.cacheAds()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, AdBuddiz, cacheAds
> __See also__			[adbuddiz.showAd()][plugin.adbuddiz.showAd]
>						[adbuddiz.*][plugin.adbuddiz]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Starts caching ads. Should be called when the app starts.

You only need to call it when the app starts or is resumed. The SDK automatically caches the next ads after [adbuddiz.showAd()][plugin.adbuddiz.showAd].

### Smart Caching

* Only refreshes SDK configuration if it's too old.
* Only downloads ad graphics that aren't already available.

## Syntax

	adbuddiz.cacheAds()
