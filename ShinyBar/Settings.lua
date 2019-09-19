Settings = class();

function Settings:Constructor( reset )
	if ( reset ) then
		self:SetDefaults();
		self:Save();
	else
		self:_Load();
	end
end

function Settings:_Load()
	local fLoad = Turbine.PluginData.Load; -- VindarPatch may not touch me
	local tSettings = fLoad( Turbine.DataScope.Character, "ShinyBarSettings" );

	if ( type( tSettings ) ~= "table" ) then
		-- set defaults
		self:SetDefaults();
		self:Save();
	else
		tSettings = self:Decode( tSettings );

		for i,v in pairs( tSettings ) do
			if (i == "windows") then
				self.windows = {};
				local size = table.getn(v);
				for i = 1, size do
					self.windows[i] = v[i];
				end
			else
				self[i] = v;
			end
		end
	end
end

function Settings:_Save()
	local fSave = Turbine.PluginData.Save; -- VindarPatch may not touch me
	local tSettings = self:Encode( self );

	fSave( Turbine.DataScope.Character, "ShinyBarSettings", tSettings );
end

function Settings.GetControlDefaults()
	-- default control
	return {
		left = 0,
		top = 0,
		itemWidth = 200,
		itemHeight = 30,
		name = "NewControl",
	};
end

function Settings.GetBarDefaults()
   -- default bar
   width,_ = Turbine.UI.Display.GetSize();
   return {
     top = 0,
     left = 0,
     height = 30,
     width = width,
     visibility = true,
     color = Turbine.UI.Color.Transparent
   };
end

function Settings:SetDefaults()
	self.version = 1;
	self.bars = { Settings.GetBarDefaults() };
end

-- load the plugin settings
function Settings.Load()
	Settings.instance = Settings( false );
	--if ( not pcall( function() Settings.instance = Settings( false ); end ) ) then
	--	Settings.instance = Settings( true );
	--end
end

-- save the plugin settings
function Settings.Save()
	if ( Settings.instance ~= nil ) then
		Settings.instance:_Save();
	end
end

-- reset the settings
function Settings.Reset()
	Settings.instance = Settings( true );
end
