app = require ("plugin.ui_framework")
app.init({
	enable = { -- each component you have to turn on manually. This is to prevent loading components which are not being used.
		masterTab = true, --required ui framework to work.
		api = true,
		strings = true,
	}
	})


app.goTo("moduleName", { effect = "none", params = "my params" })  -- (module  name, settings) 
-- settings = {effect = "none", "fade", nil = default/native}
-- settings = {params = "any params which will be passed to scene"}

app.goBack() -- goes bask to last scene
app.loadFragment("moduleName") -- loads dedicated fragment and returns it