local base_frame = vgui.Create("DFrame")
    base_frame:SetSize(300, 300)
    base_frame:SetTitle("Backrooms Editor")
    
    base_frame:Center()
    base_frame:MakePopup()

    local base_panel = base_frame:Add("DPanel")
        base_panel:Dock(FILL)
        
        local max_props = GetConVar("sbox_maxprops"):GetInt()
        
        local numslider_minprops = base_panel:Add("DNumSlider")
            numslider_minprops:SetText("Min Rooms")
            numslider_minprops:SetMin(1)
            numslider_minprops:SetMax(max_props)
            numslider_minprops:SetValue(numslider_minprops:GetMin())
            numslider_minprops:SetDecimals(0)
            
            function numslider_minprops:Paint(width, height)
                surface.SetDrawColor(Color(119, 119, 153, 255))
                surface.DrawRect(0, 0, width, height)
            end
            
            numslider_minprops:Dock(TOP)
            
        local numslider_maxprops = base_panel:Add("DNumSlider")
            numslider_maxprops:SetText("Max Rooms")
            numslider_maxprops:SetMin(1)
            numslider_maxprops:SetMax(max_props)
            numslider_maxprops:SetValue(numslider_minprops:GetMax())
            numslider_maxprops:SetDecimals(0)
            
            function numslider_maxprops:Paint(width, height)
                surface.SetDrawColor(Color(102, 102, 136, 255))
                surface.DrawRect(0, 0, width, height)
            end
            
            numslider_maxprops:Dock(TOP)
            
        function numslider_minprops:OnValueChanged(v)
            if v > numslider_maxprops:GetValue() then numslider_maxprops:SetValue(v) end
        end
            
        function numslider_maxprops:OnValueChanged(v)
            if v < numslider_minprops:GetValue() then numslider_minprops:SetValue(v) end
        end
        
        local numslider_minfloors = base_panel:Add("DNumSlider")
            numslider_minfloors:SetText("Min Floors")
            numslider_minfloors:SetDecimals(0)
            numslider_minfloors:SetMin(1)
            numslider_minfloors:SetMax(4)
            numslider_minfloors:SetValue(1)
            
            function numslider_minfloors:Paint(width, height)
                surface.SetDrawColor(Color(136, 102, 68, 255))
                surface.DrawRect(0, 0, width, height)
            end
            
            numslider_minfloors:Dock(TOP)
            
        local numslider_maxfloors = base_panel:Add("DNumSlider")
            numslider_maxfloors:SetText("Max Floors")
            numslider_maxfloors:SetDecimals(0)
            numslider_maxfloors:SetMin(1)
            numslider_maxfloors:SetMax(4)
            numslider_maxfloors:SetValue(4)
            
            function numslider_maxfloors:Paint(width, height)
                surface.SetDrawColor(Color(119, 85, 51, 255))
                surface.DrawRect(0, 0, width, height)
            end
            
            numslider_maxfloors:Dock(TOP)
            
        function numslider_minfloors:OnValueChanged(v)
            if v > numslider_maxfloors:GetValue() then numslider_maxfloors:SetValue(v) end
        end
            
        function numslider_maxfloors:OnValueChanged(v)
            if v < numslider_minfloors:GetValue() then numslider_minfloors:SetValue(v) end
        end
        
        local label_enable_disable = base_panel:Add("DLabel")
            label_enable_disable:SetText("Toggleables")
            label_enable_disable:SetTextColor(color_black)
            label_enable_disable:Dock(TOP)
        
        local checkboxlabel_hallways = base_panel:Add("DCheckBoxLabel")
            checkboxlabel_hallways:SetText("Enable small hallways")
            checkboxlabel_hallways:SetTextColor(color_black)
            checkboxlabel_hallways:SetChecked(true)
            checkboxlabel_hallways:Dock(TOP)
        
        local checkboxlabel_rooms = base_panel:Add("DCheckBoxLabel")
            checkboxlabel_rooms:SetText("Enable small rooms")
            checkboxlabel_rooms:SetTextColor(color_black)
            checkboxlabel_rooms:SetChecked(true)
            checkboxlabel_rooms:Dock(TOP)
            
        local checkboxlabel_sewers = base_panel:Add("DCheckBoxLabel")
            checkboxlabel_sewers:SetText("Enable sewer system")
            checkboxlabel_sewers:SetTextColor(color_black)
            checkboxlabel_sewers:SetChecked(true)
            checkboxlabel_sewers:Dock(TOP)
        
        local label_misc = base_panel:Add("DLabel")
            label_misc:SetText("Miscellaneous Options")
            label_misc:SetTextColor(color_black)
            label_misc:Dock(TOP)
        
        local checkboxlabel_theming = base_panel:Add("DCheckBoxLabel")
            checkboxlabel_theming:SetText("Use unique theming for each floor")
            checkboxlabel_theming:SetTextColor(color_black)
            checkboxlabel_theming:Dock(TOP)
            
        local button_generator = base_panel:Add("DButton")
            button_generator:SetText("Generate Map!")
            button_generator:Dock(BOTTOM)
            
        local numslider_value = 3
            
        function checkboxlabel_rooms:OnChange(v)
            numslider_value = (v and numslider_value + 1 or numslider_value - 1)
            if numslider_value == 0 then
                button_generator:SetEnabled(false)
            else
                if not button_generator:IsEnabled() then
                    button_generator:SetEnabled(true)
                end
            end
        end
        
        function checkboxlabel_hallways:OnChange(v)
            numslider_value = (v and numslider_value + 1 or numslider_value - 1)
            if numslider_value == 0 then
                button_generator:SetEnabled(false)
            else
                if not button_generator:IsEnabled() then
                    button_generator:SetEnabled(true)
                end
            end
        end
        
        function checkboxlabel_sewers:OnChange(v)
            numslider_value = (v and numslider_value + 1 or numslider_value - 1)
            if numslider_value == 0 then
                button_generator:SetEnabled(false)
            else
                if not button_generator:IsEnabled() then
                    button_generator:SetEnabled(true)
                end
            end
        end
