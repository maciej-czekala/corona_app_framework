# corona_ui_framework
documentation for corona ui framework plugin

How To:

-- build.settings
``````lua
plugins = {  
        ['plugin.app_framework'] = {publisherId = 'maciej.czekala'}
    }
``````

-- main.lua
``````lua
display.setDefault( "background", 1, 1, 1 )
-- Load plugin library
app = require ("plugin.ui_framework")
app:init()


app:goTo("moduleName")
app:goBack() -- goes  bask to last scene
app:loadFragment("moduleName") -- loads dedicated fragment and returns it

for k,v in pairs(app.deviceUtil) do
    print(k,v)
end

app:Model({item1 = "string, item2 = "number", item3 = "boolean"})

``````

-- config.lua
``````lua
application = 
{
	content = 
	{
		scale = "adaptive",
		fps = 60,
		imageSuffix =
		{
			["@2x"] = 1.3,
			["@3x"] = 2.6,
		}
	},
}
``````
