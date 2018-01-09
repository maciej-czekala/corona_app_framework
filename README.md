# corona_ui_framework
documentation for corona ui framework plugin

Examples:

https://github.com/maciej-czekala/corona_business_app_base_template


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
app.init({
	enable = {
		masterTab = true, --required ui framework to work.
		api = true,
		strings = true,
	}
	})


app.goTo("moduleName")
app.goBack() -- goes  bask to last scene
app.loadFragment("moduleName") -- loads dedicated fragment and returns it

for k,v in pairs(app.deviceUtil) do
    print(k,v)
end


-- MODEL -- 
local my_model = app.Model({item1 = "string, item2 = "number", item3 = "boolean"})

my_model.setBinding("item1", -- fires callback when model value change
	function(value)
		print(value)
	end)

my_model.set("item1", "hello")
print( my_model.get("item1") )


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
