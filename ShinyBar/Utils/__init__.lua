--import "Turbine";
--import "Turbine.Gameplay";
--import "Turbine.UI";
--import "Turbine.UI.Lotro";

local importPath = getfenv(1)._.Name;
local commonPath = string.gsub(importPath, "%.Utils$", "");

import (commonPath .. ".Turbine");
import (commonPath .. ".Utils.Utils");
import (commonPath .. ".Utils.Locale");
import (commonPath .. ".Utils.Color");

--Shiny.ShinyBar.Utils = {};
Shiny = Shiny or {};
Shiny.ShinyBar = Shiny.ShinyBar or {};
Shiny.ShinyBar.Utils = Shiny.ShinyBar.Utils or {};
Shiny.ShinyBar.Utils.Locale = Locale;
Shiny.ShinyBar.Utils.Color = Color;
