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


Please find all related information is specyfic lua files.

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


for k,v in pairs(app.deviceUtil) do
    print(k,v)
end



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
