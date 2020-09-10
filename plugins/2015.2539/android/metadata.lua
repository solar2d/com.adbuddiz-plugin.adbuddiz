local metadata =
{
	plugin =
	{
		format = 'jar',
		manifest = 
		{
			permissions = {},
			usesPermissions =
			{
				"android.permission.INTERNET",
				"android.permission.ACCESS_NETWORK_STATE",
			},
			usesFeatures = {},
			applicationChildElements =
			{
				[[<activity android:name="com.purplebrain.adbuddiz.sdk.AdBuddizActivity"
                	     android:theme="@android:style/Theme.Translucent" />]]
			},
		},
	},
}

return metadata