import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";

local importPath = getfenv(1)._.Name;
local commonPath = string.gsub(importPath, "%.ColorPicker$", "");

import (commonPath);
import (commonPath .. ".RadioButton");
import (commonPath .. ".ColorPicker.Locale");
import (commonPath .. ".ColorPicker.Slider");
import (commonPath .. ".ColorPicker.Palette");
import (commonPath .. ".ColorPicker.SwatchBar");
import (commonPath .. ".ColorPicker.ColorPicker");

Shiny.ShinyBar.Utils.ColorPicker = ColorPicker;
