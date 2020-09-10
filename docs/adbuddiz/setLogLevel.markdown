# adbuddiz.setLogLevel()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, AdBuddiz, setLogLevel
> __See also__			[adbuddiz.*][plugin.adbuddiz]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Defines the SDK log level.

## Syntax

	adbuddiz.setLogLevel( level )

##### level ~^(required)^~
_[String][api.type.String]._ The following levels are supported:

* `"Info"` &mdash; Default log level.
* `"Error"` &mdash; Only errors are logged.
* `"Silent"` &mdash; No logs.

## Example

``````lua
adbuddiz.setLogLevel( "Info" )
``````
