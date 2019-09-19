import "Shiny.ShinyBar.BarWindow"
import "Shiny.ShinyBar.GeneralControl"

local sbar = BarWindow();

local control = GeneralControl(sbar);
control:SetText("Test");

