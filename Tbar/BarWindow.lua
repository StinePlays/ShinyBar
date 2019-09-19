BarWindow = class (Turbine.UI.Window)

function BarWindow:Constructor()
    Turbine.UI.Window.Constructor(self)
    self:SetPosition(0,0);
    screenW,_ = Turbine.UI.Display.GetSize();
    self:SetSize(screenW,30);
    self:SetBackColor(Turbine.UI.Color.Transparent);
    self:SetVisible(true);
    self.MouseClick = function(sender, args)
        if (args.Button == Turbine.UI.MouseButton.Right) then
            self.Menu:ShowMenu();
        end
    end
    self.Menu = Turbine.UI.ContextMenu();
    newGeneralControl = Turbine.UI.MenuItem("New GeneralControl test");
    newGeneralControl.Click = function(sender, args)
        control = GeneralControl(self);
        control:SetText("Test");
    end
    self.Menu:GetItems():Add(newGeneralControl);
end


