-------------------------------------------------------------------------------
--  LocationControl class
--
--  * Display icon with label
-------------------------------------------------------------------------------

LocationControl = class (Turbine.UI.Control)
LocationControl.__index = LocationControl

function LocationControl:Constructor(parent, tSettings)
    local self = setmetatable(GeneralControl:Constructor(parent, tSettings), LocationControl)
    self:SetText(self.settings.name)

    self.LocationChanged = function(sender,args)
        if args.ChatType == Turbine.ChatType.Standard then
            message = args.Message;
            if message ~= nil then
                pattern = "Entered the ([%a%p%u%l%s]*) %-";
                local loc = string.match(message, pattern)
                if loc ~= nil then
                    self:SetText(loc)
                end
            end
        end
    end
    AddCallback(Turbine.Chat, "Received", self.LocationChanged);
---[[Testing purpose for callback removing
    self.callback = true
    self.ToggleCallback = function()
        self.callback = not self.callback;
        if self.callback then
            AddCallback(Turbine.Chat, "Received", self.LocationChanged);
            Turbine.Shell.WriteLine("callback added");
        else
            RemoveCallback(Turbine.Chat, "Received", self.LocationChanged);
            Turbine.Shell.WriteLine("callback removed");
        end
    end

    toggle = Turbine.UI.MenuItem("toggle callback");
    toggle.Click = self.ToggleCallback
    self.Menu:GetItems():Add(toggle);
--]]
    self.Destroy = function()
        RemoveCallback(Turbine.Chat, "Received", self.LocationChanged);
    end
end

