local Library = require "CoronaLibrary"

local AdBuddiz = Library:new{ name='plugin.adbuddiz', publisherId='com.adbuddiz' }

AdBuddiz.setLogLevel = function()
	print( 'setLogLevel invoked.' )
end

AdBuddiz.setAndroidPublisherKey = function()
	print( 'setAndroidPublisherKey invoked.' )
end

AdBuddiz.setIOSPublisherKey = function()
	print( 'setIOSPublisherKey invoked.' )
end

AdBuddiz.setTestModeActive = function()
	print( 'setTestModeActive invoked.' )
end

AdBuddiz.cacheAds = function()
	print( 'cacheAds invoked.' )
end

AdBuddiz.showAd = function()
	print( 'showAd invoked.' )
	native.showAlert( 'Error', 'showAd() only works on real device!', { 'OK' } )
end

AdBuddiz.isReadyToShowAd = function()
	print( 'isReadyToShowAd invoked.' )
	return false
end

AdBuddiz.RewardedVideo_fetch = function()
	print( 'RewardedVideo_fetch invoked.' )
end

AdBuddiz.RewardedVideo_show = function()
	print( 'RewardedVideo_show invoked.' )
	native.showAlert( 'Error', 'RewardedVideo_show() only works on real device!', { 'OK' } )
end

AdBuddiz.RewardedVideo_isReadyToShow = function()
	print( 'RewardedVideo_isReadyToShow invoked.' )
	return false
end

AdBuddiz.RewardedVideo_setUserId = function()
	print( 'RewardedVideo_setUserId invoked.' )
end

return AdBuddiz