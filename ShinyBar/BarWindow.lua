BarWindow = class (Turbine.UI.Window)

function BarWindow:Constructor( tSettings )
    self.settings = tSettings
    Turbine.UI.Window.Constructor(self)
    self:SetPosition(self.settings.left,self.settings.top);
    self:SetSize(self.settings.width,self.settings.height);
    self:SetBackColor(Turbine.UI.Color(self.settings.color.A, self.settings.color.R, self.settings.color.G, self.settings.color.B));
    self:SetVisible(self.settings.visibility);

    for i = 1, #self.settings.controls do
        control = GeneralControl(self, self.settings.controls[i]);
    end
    self.MouseClick = function(sender, args)
        if (args.Button == Turbine.UI.MouseButton.Right) then
            self.Menu:ShowMenu();
        end
    end
    self.Menu = Turbine.UI.ContextMenu();
    newGeneralControl = Turbine.UI.MenuItem("New GeneralControl test");
    newGeneralControl.Click = function(sender, args)
        self:AddGeneralControl();
    end
    self.Menu:GetItems():Add(newGeneralControl);
end

function BarWindow:AddGeneralControl(cSettings)
    if (cSettings == nil) then
        table.insert(self.settings.controls, Settings.GetControlDefaults());
        cSettings = self.settings.controls[#self.settings.controls];
    end
    control = GeneralControl(self, cSettings);
end
