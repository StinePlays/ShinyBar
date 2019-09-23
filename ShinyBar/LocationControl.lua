-------------------------------------------------------------------------------
--  LocationControl class
--
--  * Display icon with label
-------------------------------------------------------------------------------

LocationControl = class (Turbine.UI.Control)
LocationControl.__index = LocationControl

function LocationControl:Constructor(parent, tSettings)    
    local self = setmetatable(GeneralControl:Constructor(parent, tSettings), LocationControl)
    self:Update(self.settings.name)
    self:LocationChanged()
end

function LocationControl:Update(loc)
    fontMetric = Utils.FontMetric();
    fontMetric:SetFont(self.Label:GetFont())
    self.Label:SetText(loc)
    self.Label:SetSize(fontMetric:GetTextWidth(loc), self:GetHeight())
    self:SetSize(self.Label:GetSize())
    self.settings.name = loc
end

function LocationControl:LocationChanged()
    self.settings.callback = AddCallback(Turbine.Chat, "Received",
        function(sende, args)
            if args.ChatType == Turbine.ChatType.Standard then
                message = args.Message;
                if message ~= nil then
                    pattern = "Entered the ([%a%p%u%l%s]*) %-";
                    local loc = string.match(message, pattern)
                    if loc ~= nil then
                        self:Update(loc)
                    end
                end
            end
        end);
end
