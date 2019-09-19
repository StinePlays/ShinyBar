import "Drono.ShinyBar.BarWindow"
import "Drono.ShinyBar.GeneralControl"
import "Drono.ShinyBar.Settings"

Settings.Load();

function ResetWindows()
	local i;
  local j;
	bars = {};
	for i = 1, table.getn(Settings.instance.bars) do
		if (Settings.instance.bars[i].visibility) then
			bar = BarWindow( Settings.instance.bars[i] );
		end
	end
end

ResetWindows()

-- plugin unload event
plugin.Unload = function()
	Settings.Save();
end
