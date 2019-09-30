-- Shorthand for languages
local en = Turbine.Language.English;
local fr = Turbine.Language.French;
local de = Turbine.Language.German;
local ru = Turbine.Language.Russian;

local text = {};

text.ColorPicker = {};
text.ColorPicker.DefaultTitle = {
   [en] = "Select Colour";
   [de] = "Wählen Farbe";
   [fr] = "Sélectionnez couleur";
   [ru] = "Выберите цвет";
};
text.ColorPicker.Red = {
   [en] = "Red";
   [de] = "Rot";
   [fr] = "Rouge";
   [ru] = "Красный";
};
text.ColorPicker.Green = {
   [en] = "Green";
   [de] = "Grün";
   [fr] = "Vert";
   [ru] = "Зеленый";
};
text.ColorPicker.Blue = {
   [en] = "Blue";
   [de] = "Blau";
   [fr] = "Bleu";
   [ru] = "Синий";
};
text.ColorPicker.Hue = {
   [en] = "Hue";
   [de] = "Farbton";
   [fr] = "Teinte";
   [ru] = "Оттенок";
};
text.ColorPicker.Saturation = {
   [en] = "Saturation";
   [de] = "Sättigung";
   [fr] = "Saturation";
   [ru] = "Насыщен.";
};
text.ColorPicker.Value = {
   [en] = "Value";
   [de] = "Wert";
   [fr] = "Valeur";
   [ru] = "Значение";
};
text.ColorPicker.Opacity = {
   [en] = "Opacity";
   [de] = "Opazität";
   [fr] = "Opacité";
   [ru] = "помутнение";
};
text.ColorPicker.Ok = {
   [en] = "Ok";
   [de] = "Ok";
   [fr] = "Ok";
   [ru] = "Ok";
};
text.ColorPicker.StandardColors = {
   [en] = "Turbine Colours";
   [de] = "Turbine Farben";
   [fr] = "Couleurs Turbine";
   [ru] = "Встроенные цвета";
};
text.ColorPicker.RecentColors = {
   [en] = "Recent Colours";
   [de] = "Letzte Farben";
   [fr] = "Couleurs récents";
   [ru] = "Последние цвета";
};

text.ColorPicker.Colors = {};
text.ColorPicker.Colors.AliceBlue            = { [en] = "Alice Blue";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.AntiqueWhite         = { [en] = "Antique White";          [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Aqua                 = { [en] = "Aqua";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Aquamarine           = { [en] = "Aquamarine";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Azure                = { [en] = "Azure";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Beige                = { [en] = "Beige";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Bisque               = { [en] = "Bisque";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Black                = { [en] = "Black";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.BlanchedAlmond       = { [en] = "Blanched Almond";        [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Blue                 = { [en] = "Blue";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.BlueViolet           = { [en] = "Blue Violet";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Brown                = { [en] = "Brown";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.BurlyWood            = { [en] = "Burly Wood";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.CadetBlue            = { [en] = "Cadet Blue";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Chartreuse           = { [en] = "Chartreuse";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Chocolate            = { [en] = "Chocolate";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Coral                = { [en] = "Coral";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.CornflowerBlue       = { [en] = "Cornflower Blue";        [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Cornsilk             = { [en] = "Cornsilk";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Crimson              = { [en] = "Crimson";                [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Cyan                 = { [en] = "Cyan";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkBlue             = { [en] = "Dark Blue";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkCyan             = { [en] = "Dark Cyan";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkGoldenrod        = { [en] = "Dark Goldenrod";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkGray             = { [en] = "Dark Gray";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkGreen            = { [en] = "Dark Green";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkKhaki            = { [en] = "Dark Khaki";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkMagenta          = { [en] = "Dark Magenta";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkOliveGreen       = { [en] = "Dark Olive Green";       [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkOrange           = { [en] = "Dark Orange";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkOrchid           = { [en] = "Dark Orchid";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkRed              = { [en] = "Dark Red";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkSalmon           = { [en] = "Dark Salmon";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkSeaGreen         = { [en] = "Dark Sea Green";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkSlateBlue        = { [en] = "Dark Slate Blue";        [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkSlateGray        = { [en] = "Dark Slate Gray";        [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkTurquoise        = { [en] = "Dark Turquoise";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DarkViolet           = { [en] = "Dark Violet";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DeepPink             = { [en] = "Deep Pink";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DeepSkyBlue          = { [en] = "Deep Sky Blue";          [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DimGray              = { [en] = "Dim Gray";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.DodgerBlue           = { [en] = "Dodger Blue";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Firebrick            = { [en] = "Firebrick";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.FloralWhite          = { [en] = "Floral White";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.ForestGreen          = { [en] = "Forest Green";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Fuchsia              = { [en] = "Fuchsia";                [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Gainsboro            = { [en] = "Gainsboro";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.GhostWhite           = { [en] = "Ghost White";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Gold                 = { [en] = "Gold";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Goldenrod            = { [en] = "Goldenrod";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Gray                 = { [en] = "Gray";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Green                = { [en] = "Green";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.GreenYellow          = { [en] = "Green Yellow";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Honeydew             = { [en] = "Honeydew";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.HotPink              = { [en] = "Hot Pink";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.IndianRed            = { [en] = "Indian Red";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Indigo               = { [en] = "Indigo";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Ivory                = { [en] = "Ivory";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Khaki                = { [en] = "Khaki";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Lavender             = { [en] = "Lavender";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LavenderBlush        = { [en] = "Lavender Blush";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LawnGreen            = { [en] = "Lawn Green";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LemonChiffon         = { [en] = "Lemon Chiffon";          [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightBlue            = { [en] = "Light Blue";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightCoral           = { [en] = "Light Coral";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightCyan            = { [en] = "Light Cyan";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightGoldenrodYellow = { [en] = "Light Goldenrod Yellow"; [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightGray            = { [en] = "Light Gray";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightGreen           = { [en] = "Light Green";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightPink            = { [en] = "Light Pink";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightSalmon          = { [en] = "Light Salmon";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightSeaGreen        = { [en] = "Light Sea Green";        [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightSkyBlue         = { [en] = "Light Sky Blue";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightSlateGray       = { [en] = "Light Slate Gray";       [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightSteelBlue       = { [en] = "Light Steel Blue";       [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LightYellow          = { [en] = "Light Yellow";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Lime                 = { [en] = "Lime";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.LimeGreen            = { [en] = "Lime Green";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Linen                = { [en] = "Linen";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Magenta              = { [en] = "Magenta";                [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Maroon               = { [en] = "Maroon";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumAquamarine     = { [en] = "Medium Aquamarine";      [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumBlue           = { [en] = "Medium Blue";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumOrchid         = { [en] = "Medium Orchid";          [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumPurple         = { [en] = "Medium Purple";          [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumSeaGreen       = { [en] = "Medium Sea Green";       [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumSlateBlue      = { [en] = "Medium Slate Blue";      [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumSpringGreen    = { [en] = "Medium Spring Green";    [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumTurquoise      = { [en] = "Medium Turquoise";       [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MediumVioletRed      = { [en] = "Medium Violet Red";      [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MidnightBlue         = { [en] = "Midnight Blue";          [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MintCream            = { [en] = "Mint Cream";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.MistyRose            = { [en] = "Misty Rose";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Moccasin             = { [en] = "Moccasin";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.NavajoWhite          = { [en] = "Navajo White";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Navy                 = { [en] = "Navy";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.OldLace              = { [en] = "Old Lace";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Olive                = { [en] = "Olive";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.OliveDrab            = { [en] = "Olive Drab";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Orange               = { [en] = "Orange";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.OrangeRed            = { [en] = "Orange Red";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Orchid               = { [en] = "Orchid";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.PaleGoldenrod        = { [en] = "Pale Goldenrod";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.PaleGreen            = { [en] = "Pale Green";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.PaleTurquoise        = { [en] = "Pale Turquoise";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.PaleVioletRed        = { [en] = "Pale VioletRed";         [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.PapayaWhip           = { [en] = "Papaya Whip";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.PeachPuff            = { [en] = "Peach Puff";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Peru                 = { [en] = "Peru";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Pink                 = { [en] = "Pink";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Plum                 = { [en] = "Plum";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.PowderBlue           = { [en] = "Powder Blue";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Purple               = { [en] = "Purple";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Red                  = { [en] = "Red";                    [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.RosyBrown            = { [en] = "Rosy Brown";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.RoyalBlue            = { [en] = "Royal Blue";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SaddleBrown          = { [en] = "Saddle Brown";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Salmon               = { [en] = "Salmon";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SandyBrown           = { [en] = "Sandy Brown";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SeaGreen             = { [en] = "Sea Green";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SeaShell             = { [en] = "Sea Shell";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Sienna               = { [en] = "Sienna";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Silver               = { [en] = "Silver";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SkyBlue              = { [en] = "Sky Blue";               [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SlateBlue            = { [en] = "Slate Blue";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SlateGray            = { [en] = "Slate Gray";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Snow                 = { [en] = "Snow";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SpringGreen          = { [en] = "Spring Green";           [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.SteelBlue            = { [en] = "Steel Blue";             [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Tan                  = { [en] = "Tan";                    [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Teal                 = { [en] = "Teal";                   [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Thistle              = { [en] = "Thistle";                [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Tomato               = { [en] = "Tomato";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Turquoise            = { [en] = "Turquoise";              [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Violet               = { [en] = "Violet";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Wheat                = { [en] = "Wheat";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.White                = { [en] = "White";                  [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.WhiteSmoke           = { [en] = "White Smoke";            [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.Yellow               = { [en] = "Yellow";                 [de] = ""; [fr] = ""; [ru] = ""; };
text.ColorPicker.Colors.YellowGreen          = { [en] = "Yellow Green";           [de] = ""; [fr] = ""; [ru] = ""; };

-- Add translations to the global database
L:AddText(text);
