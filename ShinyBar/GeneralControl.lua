-------------------------------------------------------------------------------
--  GeneralControl class
--
--  * require FontMetric.lua by Garan
--  * Display icon with label
-------------------------------------------------------------------------------
import "Shiny.ShinyBar.Utils.FontMetric"

GeneralControl = class (Turbine.UI.Control)

function GeneralControl:Constructor(parent, tSettings)
    Turbine.UI.Control.Constructor(self)

    self.settings = tSettings;
    self:SetParent(parent);
    self:SetZOrder(2);
    self:SetBlendMode(Turbine.UI.BlendModeAlphaBlend);
    self:SetBackColor(Turbine.UI.Color(self.settings.color.A, self.settings.color.R, self.settings.color.G, self.settings.color.B));
    self:SetPosition(self.settings.left,self.settings.top);
    self:SetSize(60,30);

    self.Label = Turbine.UI.Label();
    self.Label:SetParent(self);
    self.Label:SetPosition(0,0);
    self.Label:SetMouseVisible(false);
    self.Label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
    self.Label:SetFontStyle(Turbine.UI.FontStyle.Outline);
    self.Label:SetFont(Turbine.UI.Lotro.Font.TrajanPro14);
    self.Label:SetSize(0,self:GetHeight());

    self.IconWindow = Turbine.UI.Control();
    self.IconWindow:SetSize(0,0);
    self.IconWindow:SetParent(self);
    self.IconWindow:SetMouseVisible(false);
    self.IconWindow:SetPosition(self.Label:GetLeft()+self.Label:GetWidth(),0);
    self.Icon = Turbine.UI.Control();
    self.Icon:SetParent(self.IconWindow);
    self.Icon:SetSize(0,0);
    self.Icon:SetMouseVisible(false);
    self.Icon:SetPosition(self.Label:GetLeft()+self.Label:GetWidth(),0);

    self.Menu = Turbine.UI.ContextMenu();

    self:SetText(self.settings.name);

    self.MouseMove = function(sender, args)
        if self.dragging ~= nil then
            self:MoveControl(args);
        end
    end
    self.MouseDown = function(sender, args)
        if (args.Button == Turbine.UI.MouseButton.Left) then
            self:SetZOrder(3);
            self.dragStartX = args.X;
            self.dragStartY = args.Y;
            self.dragging = true;
        end
    end
    self.MouseUp = function(sender, args)
        self:SetZOrder(2);
        self.dragging = nil;
    end
    self.MouseClick = function(sender, args)
        if (args.Button == Turbine.UI.MouseButton.Right) then
            self.Menu:ShowMenu();
        end
    end
    self.PositionChanged = function(sender, args)
        self.settings.left, self.settings.top = self:GetPosition();
    end

    changeBackgroundColor = Turbine.UI.MenuItem("Change background color");
    changeBackgroundColor.Click = function(sender, args)
        bgColor = Utils.ColorPicker(self:GetBackColor());

        bgColor.ColorChanged = function(picker)
            local color = picker:GetColor();
            self:SetBackColor(color);
            self.settings.color = color;
            Settings.Save();
        end
    end
    self.Menu:GetItems():Add(changeBackgroundColor);

    destroy = Turbine.UI.MenuItem("delete");
    destroy.Click = function(sender, args)
        table.foreach( parent.settings.controls, function( k, v ) if ( v == self.settings ) then table.remove( parent.settings.controls, k ) end end );
        self:SetParent(nil);
        self = nil
    end
    self.Menu:GetItems():Add(destroy);
end

function GeneralControl:MoveControl(args)
    self:SetPosition(self:GetLeft() + (args.X - self.dragStartX),
        self:GetTop() + (args.Y - self.dragStartY));
    self:Adjust();
end

function GeneralControl:Adjust()
    local ctrX = self:GetLeft();
    local ctrW = self:GetWidth();
    if ctrX < 0 then ctrX = 0;
    elseif ctrX + ctrW > self:GetParent():GetWidth() then
        ctrX = self:GetParent():GetWidth() - ctrW;
    end
    local ctrY = self:GetTop();
    local ctrH = self:GetHeight();
    if ctrY < 0 then ctrY = 0;
    elseif ctrY + ctrH > self:GetParent():GetHeight() then
        ctrY = self:GetParent():GetHeight() - ctrH;
    end
    self:SetPosition(ctrX,ctrY);
end

function GeneralControl:SetText(text)
    self.Label:SetText(text);
    local fontMetric = Utils.FontMetric();
    fontMetric:SetFont(self.Label:GetFont());
    self.Label:SetWidth(fontMetric:GetTextWidth(text)+10);
    self.IconWindow:SetPosition(self.Label:GetLeft()+self.Label:GetWidth(),0);
    self:SetWidth(self.Label:GetWidth()+self.IconWindow:GetWidth());
    self:Adjust()
end

function GeneralControl:SetIcon(icon)
    self.IconWindow:SetSize(self:GetHeight(), self:GetHeight());
    self.Icon:SetBackground(icon);
    self.Icon:SetStretchMode(2);
    self:SetWidth(self.Label:GetWidth()+self.IconWindow:GetWidth());
    self:Adjust()
end
