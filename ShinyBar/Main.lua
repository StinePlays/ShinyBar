import "Shiny.ShinyBar.BarWindow"
import "Shiny.ShinyBar.GeneralControl"
import "Shiny.ShinyBar.Settings"

local sbar = BarWindow(Settings.GetBarDefaults());

local control = GeneralControl(sbar);
control:SetText("Test");

