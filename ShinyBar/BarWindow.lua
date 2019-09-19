BarWindow = class (Turbine.UI.Window)

function BarWindow:Constructor( tSettings )
    self.settings = tSettings
    Turbine.UI.Window.Constructor(self)
    self:SetPosition(self.settings.left,self.settings.top);
    self:SetSize(self.settings.width,self.settings.height);
    self:SetBackColor(self.settings.color);
    self:SetVisible(self.settings.visibility);
    self.MouseClick = function(sender, args)
        if (args.Button == Turbine.UI.MouseButton.Right) then
            self.Menu:ShowMenu();
        end
    end
    self.Menu = Turbine.UI.ContextMenu();
    newGeneralControl = Turbine.UI.MenuItem("New GeneralControl test");
    newGeneralControl.Click = function(sender, args)
        control = Settings.GetControlDefaults();
        control = GeneralControl(self);
        control:SetText("Test");
    end
    self.Menu:GetItems():Add(newGeneralControl);
end
