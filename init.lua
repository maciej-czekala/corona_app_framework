app = require ("plugin.ui_framework")
app.init({
	enable = { -- each component you have to turn on manually. This is to prevent loading components which are not being used.
		masterTab = true, --required ui framework to work.
		api = true,
		strings = true,
	}
	})