app = require ("plugin.ui_framework")
app.init({
	enable = { -- each component you have to turn on manually. This is to prevent loading components which are not being used.
		masterTab = true, --required ui framework to work.
		api = true,
		strings = true,
	}
	})


local my_model = app.Model({
	item1 = "string", 
	item2 = "number", 
	item3 = "boolean"
})

my_model.setBinding("item1", -- fires callback when model value change
	function(value)
		print(value)
	end)

my_model.set("item1", "hello")
print( my_model.get("item1") )

my_model.removeBinding("item1")

my_model.set("item1", "hello2")