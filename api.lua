app = require ("plugin.app_framework")
app.init({
	enable = { -- each component you have to turn on manually. This is to prevent loading components which are not being used.
		api = true,
	}
	})


app.api.setUp({
	apiPath = "app.data.custom_api" -- define path to custom_api.lua file
	})



-- call api method via app framework.

app.api.get({
	requestName = "getVod", -- name of the function from custom_api.lua file. 
	cacheTag = "getVod", -- if data should be saved so next time there will be no network request  but instead data will be returnes instantly, add unnique tag
	tag = "getVod", -- add tag to cancel request  if needed. It can be used  when chancging scenes but request have not finished yet.
	query = "sortByDate", -- parameter which should be passed to method in custom_api.lua
	onSuccess = function(results) -- callback on success
		
	end,
	onError = function() -- callback on error
		
	end})


-- cancel call

app.api.cancel("getVod") -- tag from api call


-- create seperate custom_api.lua document

local class = {}

local function getDataListener(e, a)
    if ( event.isError ) then
        print( "Network error: ", event.response )
        if a.onError then
        	a.onError()
        end
    else
    	local _result = json.decode( event.response ) -- convert string / json to lua table
        if a.onSuccess then
        	a.onSuccess(_result) -- return data to onSuccess callback function
        end    
    end
end
-- 
function class.getData(a) -- method has to be a key of returned table. In this example class table with "getData" key.
	-- a.query

	-- you have to return requestId to have ability to cancel request if needed.
	return network.request( "http://api_address"..a.query, "GET", 
		function(e) 
			getDataListener(e, a)
		end )
end

return class

------------------------