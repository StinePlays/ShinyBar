--import "Shiny.ShinyBar.ColorPicker.ColorPicker"; TODO
import "Thurallor.Common.UI.ColorPicker";

BarWindow = class (Turbine.UI.Window);

function BarWindow:Constructor( tSettings )
    self.settings = tSettings
    Turbine.UI.Window.Constructor(self)
    self:SetPosition(self.settings.left,self.settings.top);
    self:SetSize(self.settings.width,self.settings.height);
    self:SetBackColor(Turbine.UI.Color(self.settings.color.A, self.settings.color.R, self.settings.color.G, self.settings.color.B));
    self:SetVisible(self.settings.visibility);
    self.MouseClick = function(sender, args)
        if (args.Button == Turbine.UI.MouseButton.Right) then
            self.Menu:ShowMenu();
        end
    end

    self.Menu = Turbine.UI.ContextMenu();

    --New Control Test
    newGeneralControl = Turbine.UI.MenuItem("New GeneralControl test");
    newGeneralControl.Click = function(sender, args)
        control = Settings.GetControlDefaults();
        control = GeneralControl(self);
        control:SetText("Test");
    end
    self.Menu:GetItems():Add(newGeneralControl);

    --Change background color of bar
    changeBackgroundColor = Turbine.UI.MenuItem("Change background color");
    changeBackgroundColor.Click = function(sender, args)
        bgColor = Thurallor.UI.ColorPicker(self:GetBackColor());
        
        bgColor.ColorChanged = function(picker)
            local color = picker:GetColor();
            self:SetBackColor(color);
            self.settings.color = color;
            Settings.Save();
        end
    end
    self.Menu:GetItems():Add(changeBackgroundColor);
end
