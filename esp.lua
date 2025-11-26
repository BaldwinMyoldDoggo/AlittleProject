-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

local v0 = game:GetService("RunService"):IsStudio() or false;
local l_Keybinds_0 = require(script:WaitForChild("Keybinds"));
local l_LocalPlayer_0 = game.Players.LocalPlayer;
local l_CreateHitEffect_0 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("CreateHitEffect");
local _ = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("Projectile"));
local _ = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("EffectReplication"));
local l_DamageCalculation_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("DamageCalculation"));
local l_PropDamage_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("PropDamage"));
local _ = require(game:GetService("ReplicatedStorage"):WaitForChild("SkinService"));
local l_CharInfo_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("SkinService"):WaitForChild("CharacterCustomization"):WaitForChild("CharInfo"));
local v10 = game:GetService("ReplicatedStorage"):FindFirstChild("SkinService") and require(game:GetService("ReplicatedStorage"):FindFirstChild("SkinService"));
local l_VignetteService_0 = require(l_LocalPlayer_0:WaitForChild("PlayerScripts"):WaitForChild("SPS_Package"):WaitForChild("ClientUtils"):WaitForChild("VignetteService"));
local v12 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("GetCharacterData"):InvokeServer();
local v13 = {
    82817861, 
    5283599, 
    16682398, 
    24421684, 
    46834375, 
    14551764
};
local v14 = false;
local l_status_0, l_result_0 = pcall(function() --[[ Line: 28 ]]
    -- upvalues: v13 (copy)
    if game.Players.LocalPlayer:GetRoleInGroup(8918098) == "Developer" then
        table.insert(v13, game.Players.LocalPlayer.UserId);
    end;
end);
l_status_0 = 0;
l_result_0 = 0;
local v17 = 0;
local v18 = nil;
local v19 = false;
local v20 = false;
local v21 = false;
local l_GameSettings_0 = UserSettings().GameSettings;
local v23 = false;
local v24 = false;
local v25 = {};
local v26 = {};
local v27 = {};
local v28 = {};
local v29 = {};
local v30 = {};
local _ = {};
local v32 = {
    2088934656, 
    1549086835, 
    1419274802
};
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Health, false);
local l_new_0 = CFrame.new;
local l_Angles_0 = CFrame.Angles;
local l_new_1 = Vector3.new;
local l_rad_0 = math.rad;
local l_sin_0 = math.sin;
local l_cos_0 = math.cos;
local l_asin_0 = math.asin;
local l_acos_0 = math.acos;
local v41 = false;
local v42 = false;
local v43 = false;
local v44 = true;
local l_UserInputService_0 = game:GetService("UserInputService");
local l_RunService_0 = game:GetService("RunService");
local _ = game:GetService("ContentProvider");
local _ = game:GetService("ContextActionService");
local l_TweenService_0 = game:GetService("TweenService");
local l_l_UserInputService_0_GamepadConnected_0 = l_UserInputService_0:GetGamepadConnected(Enum.UserInputType.Gamepad1);
local v51 = false;
local function _(v52) --[[ Line: 109 ]] --[[ Name: inputChanged ]]
    -- upvalues: l_l_UserInputService_0_GamepadConnected_0 (ref)
    if v52 == Enum.UserInputType.Gamepad1 then
        l_l_UserInputService_0_GamepadConnected_0 = true;
        return;
    else
        if v52 == Enum.UserInputType.MouseMovement or v52 == Enum.UserInputType.Keyboard then
            l_l_UserInputService_0_GamepadConnected_0 = false;
        end;
        return;
    end;
end;
l_UserInputService_0.LastInputTypeChanged:connect(function(v54) --[[ Line: 116 ]]
    -- upvalues: l_l_UserInputService_0_GamepadConnected_0 (ref)
    if v54 == Enum.UserInputType.Gamepad1 then
        l_l_UserInputService_0_GamepadConnected_0 = true;
        return;
    else
        if v54 == Enum.UserInputType.MouseMovement or v54 == Enum.UserInputType.Keyboard then
            l_l_UserInputService_0_GamepadConnected_0 = false;
        end;
        return;
    end;
end);
local l_l_UserInputService_0_LastInputType_0 = l_UserInputService_0:GetLastInputType();
if l_l_UserInputService_0_LastInputType_0 == Enum.UserInputType.Gamepad1 then
    l_l_UserInputService_0_GamepadConnected_0 = true;
elseif l_l_UserInputService_0_LastInputType_0 == Enum.UserInputType.MouseMovement or l_l_UserInputService_0_LastInputType_0 == Enum.UserInputType.Keyboard then
    l_l_UserInputService_0_GamepadConnected_0 = false;
end;
l_UserInputService_0.GamepadConnected:connect(function(_) --[[ Line: 122 ]]
    -- upvalues: l_l_UserInputService_0_GamepadConnected_0 (ref)
    l_l_UserInputService_0_GamepadConnected_0 = true;
end);
l_UserInputService_0.GamepadDisconnected:connect(function(_) --[[ Line: 126 ]]
    -- upvalues: l_l_UserInputService_0_GamepadConnected_0 (ref)
    l_l_UserInputService_0_GamepadConnected_0 = false;
end);
local l_ChatInputBarConfiguration_0 = game:GetService("TextChatService"):FindFirstChildOfClass("ChatInputBarConfiguration");
l_ChatInputBarConfiguration_0:GetPropertyChangedSignal("IsFocused"):Connect(function() --[[ Line: 133 ]]
    -- upvalues: l_ChatInputBarConfiguration_0 (copy), v51 (ref)
    if l_ChatInputBarConfiguration_0.IsFocused then
        v51 = true;
        return;
    else
        v51 = false;
        return;
    end;
end);
l_UserInputService_0.TextBoxFocused:Connect(function() --[[ Line: 141 ]]
    -- upvalues: v51 (ref)
    v51 = true;
end);
l_UserInputService_0.TextBoxFocusReleased:Connect(function() --[[ Line: 145 ]]
    -- upvalues: v51 (ref)
    v51 = false;
end);
local v59 = game:GetService("ReplicatedStorage"):WaitForChild("PlayerData"):WaitForChild(l_LocalPlayer_0.Name):WaitForChild(l_LocalPlayer_0.Name .. "'s Data");
local v60 = nil;
local l_Backpack_0 = l_LocalPlayer_0:WaitForChild("Backpack");
local l_PlayerGui_0 = l_LocalPlayer_0:WaitForChild("PlayerGui");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_RS_Package_0 = l_ReplicatedStorage_0:WaitForChild("RS_Package");
local l_ActiveMutators_0 = l_ReplicatedStorage_0:WaitForChild("RS_Package"):WaitForChild("ActiveMutators");
local l_GunInfo_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("GunInfo"));
local _ = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedScripts"):WaitForChild("SoundSystem3D"));
local l_DecalService_0 = require(l_RS_Package_0:WaitForChild("Assets"):WaitForChild("Effects"):WaitForChild("DecalService"));
repeat
    wait();
until l_LocalPlayer_0.Character ~= nil;
local l_Character_0 = l_LocalPlayer_0.Character;
local l_HumanoidRootPart_0 = l_Character_0:WaitForChild("HumanoidRootPart");
local l_Humanoid_0 = l_Character_0:WaitForChild("Humanoid");
l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
local l_Head_0 = l_Character_0:WaitForChild("Head");
local l_Stamina_0 = l_Character_0:FindFirstChild("Stamina");
local l_MaxStamina_0 = l_Character_0:FindFirstChild("MaxStamina");
if l_Stamina_0 == nil then
    local v75 = nil;
    do
        local l_v75_0 = v75;
        l_v75_0 = l_Character_0.ChildAdded:connect(function(v77) --[[ Line: 195 ]]
            -- upvalues: l_Stamina_0 (ref), l_v75_0 (ref)
            if v77.Name == "Stamina" then
                l_Stamina_0 = v77;
                l_v75_0:Disconnect();
            end;
        end);
    end;
end;
if l_MaxStamina_0 == nil then
    local v78 = nil;
    do
        local l_v78_0 = v78;
        l_v78_0 = l_Character_0.ChildAdded:connect(function(v80) --[[ Line: 204 ]]
            -- upvalues: l_MaxStamina_0 (ref), l_v78_0 (ref)
            if v80.Name == "MaxStamina" then
                l_MaxStamina_0 = v80;
                l_v78_0:Disconnect();
            end;
        end);
    end;
end;
local function v86(v81, v82) --[[ Line: 223 ]] --[[ Name: hasSkill ]]
    -- upvalues: l_LocalPlayer_0 (copy)
    local v83 = game:GetService("ReplicatedStorage").PlayerData:WaitForChild(l_LocalPlayer_0.Name):WaitForChild(l_LocalPlayer_0.Name .. "'s Data");
    if v83 then
        local l_Using_0 = v83:WaitForChild("Classes"):FindFirstChild("Using");
        if l_Using_0 then
            local l_l_Using_0_FirstChild_0 = l_Using_0:FindFirstChild(v81 .. "Tree");
            if l_l_Using_0_FirstChild_0 and l_l_Using_0_FirstChild_0.Value:find(v82) then
                return true;
            end;
        end;
    end;
    return false;
end;
local l_CurrentCamera_0 = workspace.CurrentCamera;
local l_l_LocalPlayer_0_Mouse_0 = l_LocalPlayer_0:GetMouse();
local _ = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("Caught");
local l_Assets_0 = game.ReplicatedStorage:WaitForChild("RS_Package"):WaitForChild("Assets");
local l_Remotes_0 = l_Assets_0.Remotes;
local l_Damage_0 = l_Remotes_0.Damage;
l_Damage_0:FireServer("SendKey", (tostring(math.random(1, 100000000))));
local v93 = Instance.new("ScreenGui", l_PlayerGui_0);
v93.Name = "MouceIcon";
v93.Enabled = false;
local v94 = Instance.new("ImageLabel", v93);
v94.Name = "Icon";
v94.BackgroundTransparency = 1;
v94.Size = UDim2.new(0, 10, 0, 10);
v94.Position = UDim2.new(0.5, -v94.Size.X.Offset / 2, 0.5, -v94.Size.Y.Offset / 2);
v94.Image = "";
local v95 = Instance.new("Model", l_CurrentCamera_0);
v95.Name = "CameraModel";
local l_Options_0 = game:GetService("ReplicatedStorage"):WaitForChild("PlayerData"):WaitForChild(l_LocalPlayer_0.Name):WaitForChild(l_LocalPlayer_0.Name .. "'s Data"):WaitForChild("Options");
local v97 = l_Options_0:WaitForChild("KeybindsController", 5);
local l_HitEvent_0 = script:WaitForChild("HitEvent");
local l_Value_0 = l_Options_0:WaitForChild("Graphics"):WaitForChild("HitIndicators").Value;
local l_Value_1 = l_Options_0:WaitForChild("Graphics"):WaitForChild("Hitmarker").Value;
local l_Value_2 = l_Options_0:WaitForChild("Graphics"):WaitForChild("Effects").Value;
local l_Value_3 = l_Options_0:WaitForChild("Graphics"):WaitForChild("Blood").Value;
local l_AkimboMode_0 = l_Options_0:WaitForChild("Gameplay"):WaitForChild("AkimboMode");
_G.BloodEnabled = l_Value_3 or 0;
local v104 = {};
local v105 = {};
local l_SFX_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("SFX");
local l_Hitmark_0 = l_SFX_0:WaitForChild("Hitmark");
local l_MobileUI_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("MobileUI");
local l_HeartWatch_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("HeartWatch");
local l_dot_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_crosshairs"):WaitForChild("dot");
local v111 = l_dot_0 and l_dot_0:FindFirstChild("UIStroke");
local l_Value_4 = l_Options_0:WaitForChild("Gameplay"):WaitForChild("Crosshair").Value;
local l_hitmark_0 = l_dot_0.Parent:WaitForChild("hitmark");
local function v122(v114, v115) --[[ Line: 295 ]] --[[ Name: hitmarkanim ]]
    -- upvalues: l_hitmark_0 (copy), l_TweenService_0 (copy), l_Hitmark_0 (ref), l_SFX_0 (copy), l_dot_0 (copy)
    local v116 = l_hitmark_0:Clone();
    v116.Parent = l_hitmark_0.Parent;
    v116.Size = UDim2.new(0, 0, 0, 0);
    v116.Rotation = 45 + math.random(-2, 2) * 25;
    v116.ZIndex = v116.ZIndex + (v115 and 2 or 0);
    l_TweenService_0:Create(v116, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, true), {
        Size = UDim2.new(0, v115 and 45 or 40, 0, v115 and 45 or 40), 
        Rotation = 45 + math.random(-2, 2)
    }):Play();
    for _, v118 in v116:GetChildren() do
        for _, v120 in v118:GetChildren() do
            v120.BackgroundTransparency = 0;
            if v114 then
                v120.BackgroundColor3 = v114;
            end;
            l_TweenService_0:Create(v120, TweenInfo.new(v115 and 0.3 or 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0.1), {
                BackgroundTransparency = 1
            }):Play();
        end;
    end;
    l_Hitmark_0 = v115 and l_SFX_0:FindFirstChild("CritHitmark") or l_SFX_0:FindFirstChild("Hitmark");
    if l_Hitmark_0 then
        local v121 = l_Hitmark_0:Clone();
        v121.Parent = l_dot_0;
        v121.PlaybackSpeed = v121.PlaybackSpeed + math.random(95, 110) / 100;
        v121.PlayOnRemove = true;
        game.Debris:AddItem(v121, l_Hitmark_0:GetAttribute("Delay") or 0);
    end;
    game.Debris:AddItem(v116, 0.4);
end;
local function v126(v123, v124, v125) --[[ Line: 347 ]] --[[ Name: updateCrosshair ]]
    -- upvalues: l_dot_0 (copy), l_TweenService_0 (copy), l_Value_1 (copy), v122 (copy)
    l_dot_0.BackgroundColor3 = v123;
    l_TweenService_0:Create(l_dot_0, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.new(1, 1, 1)
    }):Play();
    if v124 and l_Value_1 then
        v122(v123, v125);
    end;
end;
local function v129(v127, v128) --[[ Line: 358 ]] --[[ Name: fadeCrosshair ]]
    -- upvalues: l_TweenService_0 (copy), l_dot_0 (copy), v111 (copy)
    l_TweenService_0:Create(l_dot_0, TweenInfo.new(v128, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
        BackgroundTransparency = v127
    }):Play();
    if v111 then
        l_TweenService_0:Create(v111, TweenInfo.new(v128, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            Transparency = math.clamp(v127, 0.5, 1)
        }):Play();
    end;
end;
if not l_Value_4 then
    l_dot_0.Visible = false;
end;
game.ReplicatedStorage:WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("ShowYellResult").OnClientEvent:Connect(function() --[[ Line: 371 ]]
    -- upvalues: v126 (copy)
    v126(Color3.fromRGB(0, 255, 0));
end);
l_LocalPlayer_0:GetAttributeChangedSignal("Freecam"):Connect(function() --[[ Line: 375 ]]
    -- upvalues: l_Humanoid_0 (ref), v14 (ref), l_LocalPlayer_0 (copy), v18 (ref), v27 (copy)
    l_Humanoid_0:UnequipTools();
    v14 = l_LocalPlayer_0:GetAttribute("Freecam");
    if v14 then
        l_Humanoid_0:UnequipTools();
    elseif v18 then
        l_Humanoid_0:EquipTool(v18);
    end;
    v27:SetLocalTransparency(1, nil, true);
end);
lerp = function(v130, v131, v132) --[[ Line: 389 ]] --[[ Name: lerp ]]
    return v130 + (v131 - v130) * v132;
end;
MatchKeys = function(v133, v134) --[[ Line: 393 ]] --[[ Name: MatchKeys ]]
    for _, v136 in pairs(v134) do
        if v136 and (v133.KeyCode == v136 or v133.UserInputType == v136) then
            return true;
        end;
    end;
    return false;
end;
local v137 = {};
IsKeyDown = function(v138) --[[ Line: 406 ]] --[[ Name: IsKeyDown ]]
    -- upvalues: v137 (copy)
    for _, v140 in pairs(v138) do
        if v140 and v137[v140] then
            return true;
        end;
    end;
    return false;
end;
l_UserInputService_0.InputBegan:Connect(function(v141, _) --[[ Line: 418 ]]
    -- upvalues: v51 (ref), v137 (copy)
    if v51 then
        return;
    else
        v137[v141.KeyCode] = v141;
        return;
    end;
end);
l_UserInputService_0.InputEnded:Connect(function(v143, _) --[[ Line: 423 ]]
    -- upvalues: v137 (copy)
    v137[v143.KeyCode] = false;
end);
v25.Spring = {};
v25.Spring = {};
v25.Spring.new = function(v145) --[[ Line: 435 ]] --[[ Name: new ]]
    -- upvalues: l_cos_0 (copy), l_sin_0 (copy)
    local v146 = tick();
    local v147 = v145 or 0;
    local v148 = v145 and 0 * v145 or 0;
    local v149 = v145 or 0;
    local v150 = 1;
    local v151 = 1;
    local function v162(v152) --[[ Line: 443 ]] --[[ Name: positionvelocity ]]
        -- upvalues: v146 (ref), v147 (ref), v149 (ref), v151 (ref), v150 (ref), v148 (ref), l_cos_0 (ref), l_sin_0 (ref)
        local v153 = v152 - v146;
        local v154 = v147 - v149;
        if v151 == 0 then
            return v147, 0;
        elseif v150 < 1 then
            local v155 = (1 - v150 * v150) ^ 0.5;
            local v156 = (v148 / v151 + v150 * v154) / v155;
            local v157 = l_cos_0(v155 * v151 * v153);
            local v158 = l_sin_0(v155 * v151 * v153);
            local v159 = 2.718281828459045 ^ (v150 * v151 * v153);
            return v149 + (v154 * v157 + v156 * v158) / v159, v151 * ((v155 * v156 - v150 * v154) * v157 - (v155 * v154 + v150 * v156) * v158) / v159;
        else
            local v160 = v148 / v151 + v154;
            local v161 = 2.718281828459045 ^ (v151 * v153);
            return v149 + (v154 + v160 * v151 * v153) / v161, v151 * (v160 - v154 - v160 * v151 * v153) / v161;
        end;
    end;
    return (setmetatable({
        accelerate = function(_, v164) --[[ Line: 465 ]] --[[ Name: accelerate ]]
            -- upvalues: v162 (copy), v147 (ref), v148 (ref), v146 (ref)
            local v165 = tick();
            local v166, v167 = v162(v165);
            v147 = v166;
            v148 = v167 + v164;
            v146 = v165;
        end
    }, {
        __index = function(_, v169) --[[ Line: 473 ]] --[[ Name: __index ]]
            -- upvalues: v162 (copy), v146 (ref), v147 (ref), v149 (ref), v151 (ref), v150 (ref), v148 (ref), l_cos_0 (ref), l_sin_0 (ref)
            if v169 == "value" or v169 == "position" or v169 == "p" then
                local v170, _ = v162(tick());
                return v170;
            elseif v169 == "velocity" or v169 == "v" then
                local _, v173 = v162(tick());
                return v173;
            elseif v169 == "acceleration" or v169 == "a" then
                local v174 = tick() - v146;
                local v175 = v147 - v149;
                if v151 == 0 then
                    return 0;
                elseif v150 < 1 then
                    local v176 = (1 - v150 * v150) ^ 0.5;
                    local v177 = (v148 / v151 + v150 * v175) / v176;
                    return v151 * v151 * ((v150 * v150 * v175 - v176 * 2 * v150 * v177 - v176 * v176 * v175) * l_cos_0(v176 * v151 * v174) + (v150 * v150 * v177 + v176 * 2 * v150 * v175 - v176 * v176 * v177) * l_sin_0(v176 * v151 * v174)) / 2.718281828459045 ^ (v150 * v151 * v174);
                else
                    local v178 = v148 / v151 + v175;
                    return v151 * v151 * (v175 - 2 * v178 + v178 * v151 * v174) / 2.718281828459045 ^ (v151 * v174);
                end;
            elseif v169 == "target" or v169 == "t" then
                return v149;
            elseif v169 == "damper" or v169 == "d" then
                return v150;
            elseif v169 == "speed" or v169 == "s" then
                return v151;
            else
                error(v169 .. " is not a valid member of spring", 0);
                return;
            end;
        end, 
        __newindex = function(_, v180, v181) --[[ Line: 506 ]] --[[ Name: __newindex ]]
            -- upvalues: v162 (copy), v147 (ref), v148 (ref), v149 (ref), v150 (ref), v151 (ref), v146 (ref)
            local v182 = tick();
            if v180 == "value" or v180 == "position" or v180 == "p" then
                local _, v184 = v162(v182);
                v147 = v181;
                v148 = v184;
            elseif v180 == "velocity" or v180 == "v" then
                local v185, _ = v162(v182);
                v147 = v185;
                v148 = v181;
            elseif v180 == "acceleration" or v180 == "a" then
                local v187, v188 = v162(v182);
                local v189 = v188 + v181;
                v147 = v187;
                v148 = v189;
            elseif v180 == "target" or v180 == "t" then
                local v190, v191 = v162(v182);
                v147 = v190;
                v148 = v191;
                v149 = v181;
            elseif v180 == "damper" or v180 == "d" then
                local v192, v193 = v162(v182);
                v147 = v192;
                v148 = v193;
                v150 = v181 < 0 and 0 or v181 < 1 and v181 or 1;
            elseif v180 == "speed" or v180 == "s" then
                local v194, v195 = v162(v182);
                v147 = v194;
                v148 = v195;
                v151 = v181 < 0 and 0 or v181;
            else
                error(v180 .. " is not a valid member of spring", 0);
            end;
            v146 = v182;
        end
    }));
end;
local v196 = v25.Spring.new(Vector2.new());
v196.d = 1;
v196.s = 20;
local v197 = v25.Spring.new(Vector2.new());
v197.d = 3.5;
v197.s = 20;
v26.BindModel = function(v198, v199) --[[ Line: 546 ]] --[[ Name: BindModel ]]
    -- upvalues: l_new_0 (copy)
    if not v199 or not v198 then
        return;
    else
        local v200 = v199.CFrame or v199:GetModelCFrame();
        for _, v202 in pairs(v198:GetChildren()) do
            if v202:IsA("BasePart") then
                local v203 = v202:FindFirstChild("Weld") or v202:FindFirstChildOfClass("Motor6D");
                if v203 then
                    v203:Destroy();
                end;
                local v204 = Instance.new("Motor6D", v199);
                v204.Name = v202.Name .. "Weld";
                v204.Part0 = v199;
                v204.Part1 = v202;
                v204.C0 = l_new_0().toObjectSpace(v200, v202.CFrame);
                v202.CanCollide = false;
                v202.Anchored = false;
            elseif v202:IsA("Model") or v202:IsA("Folder") then

            end;
        end;
        return;
    end;
end;
v26.GroupParts = function(_, v206, v207) --[[ Line: 573 ]] --[[ Name: GroupParts ]]
    local l_Model_0 = Instance.new("Model");
    l_Model_0.Parent = v207 or nil;
    l_Model_0.Name = "Model";
    for _, v210 in pairs(v206) do
        if v210 then
            v210:Clone().Parent = l_Model_0;
        end;
    end;
    return l_Model_0;
end;
v27.DefaultWalkSpeed = 12;
if v86("G", "j") then
    v27.DefaultWalkSpeed = v27.DefaultWalkSpeed * 1.1;
end;
v27.RunSpeed = v27.DefaultWalkSpeed * 5 / 3;
v27.CrouchSpeed = v27.DefaultWalkSpeed * 0.5;
if v86("G", "F") then
    v27.RunSpeed = v27.RunSpeed * 1.25;
end;
v27.JumpPower = 35;
v27.Crouching = false;
local v211 = v25.Spring.new((l_new_1()));
local v212 = v25.Spring.new(0);
local v213 = v25.Spring.new(v27.DefaultWalkSpeed);
local v214 = v25.Spring.new(0);
v211.s = 8.5;
v212.s = 6;
v213.s = 12;
v214.s = 16;
v211.d = 0.6;
v212.d = 0.65;
v213.d = 0.8;
v214.d = 0.8;
local v215 = 0;
local l_v213_0 = v213 --[[ copy: 108 -> 159 ]];
local function v217() --[[ Line: 624 ]] --[[ Name: updateBaseSpeed ]]
    -- upvalues: v27 (copy), l_Character_0 (ref), v86 (copy), l_v213_0 (copy)
    v27.DefaultWalkSpeed = l_Character_0:FindFirstChild("BaseSpeed") and l_Character_0:FindFirstChild("BaseSpeed").Value or 12;
    v27.RunSpeed = v27.DefaultWalkSpeed * 1.66;
    v27.CrouchSpeed = v27.DefaultWalkSpeed * 0.5;
    if v86("G", "F") then
        v27.RunSpeed = v27.RunSpeed * 1.25;
    end;
    l_v213_0.t = v27.DefaultWalkSpeed;
    print("Walkspeed is now " .. v27.DefaultWalkSpeed);
    print("Runspeed is now " .. v27.RunSpeed);
end;
local l_BaseSpeed_0 = l_Character_0:FindFirstChild("BaseSpeed");
if l_BaseSpeed_0 then
    v217();
    local l_v217_0 = v217 --[[ copy: 111 -> 210 ]];
    l_BaseSpeed_0.Changed:Connect(function() --[[ Line: 641 ]]
        -- upvalues: l_v217_0 (copy)
        l_v217_0();
    end);
else
    local l_v217_1 = v217 --[[ copy: 111 -> 160 ]];
    spawn(function() --[[ Line: 645 ]]
        -- upvalues: l_Character_0 (ref), l_v217_1 (copy)
        repeat
            wait();
        until l_Character_0:FindFirstChild("BaseSpeed");
        l_v217_1();
        l_Character_0:FindFirstChild("BaseSpeed").Changed:Connect(function() --[[ Line: 648 ]]
            -- upvalues: l_v217_1 (ref)
            l_v217_1();
        end);
    end);
end;
v27.Distance = 0;
v27.Speed = 0;
v27.Sprint = 0;
v27.ViewmodelSprint = v25.Spring.new(0);
v27.ViewmodelSprint.s = 16;
v27.ViewmodelSprint.d = 0.8;
v27.Velocity = l_new_1();
v27.Sprinting = false;
v27.ResetWalkSpeed = function(_) --[[ Line: 668 ]] --[[ Name: ResetWalkSpeed ]]
    -- upvalues: l_Character_0 (ref), v27 (copy)
    local l_Value_5 = l_Character_0:WaitForChild("BagSpeed").Value;
    local v223 = (v27.Sprinting and v27.RunSpeed * (v27.Sliding and 1.4 or 1) or v27.DefaultWalkSpeed) * l_Value_5;
    if v27.Crouching and not v27.Sliding then
        v223 = (v27.DefaultWalkSpeed - v27.CrouchSpeed) * l_Value_5;
    end;
    if not v27.Sliding and l_Character_0:GetAttribute("SniperSlowed") then
        v223 = v223 * 0.3;
    end;
    v27:SetWalkSpeed(v223);
end;
local l_v213_1 = v213 --[[ copy: 108 -> 161 ]];
do
    local l_v215_0 = v215;
    v27.SetWalkSpeed = function(_, v227) --[[ Line: 684 ]] --[[ Name: SetWalkSpeed ]]
        -- upvalues: v86 (copy), v30 (copy), l_v213_1 (copy), l_v215_0 (ref)
        local v228 = v86("E", "l") and v30.Current and v30.Current.data and (v30.Current.data.WeaponType == "Melee" or v30.Current.data.FireMode:match("Saw")) and 1.1 or 1;
        local v229 = v30.Current and v30.Current.shieldDeployed and 0.8 or 1;
        l_v213_1.t = v227 * v228 * v229 + 0 + l_v215_0;
    end;
    v27.SetLocalTransparency = function(_, v231, v232, v233) --[[ Line: 696 ]] --[[ Name: SetLocalTransparency ]]
        -- upvalues: l_Character_0 (ref), v14 (ref)
        local v234 = v232 or l_Character_0;
        local l_v234_Attribute_0 = v234:GetAttribute("LocalTransparency");
        l_v234_Attribute_0 = v234:IsA("Model") and v234.PrimaryPart and v234.PrimaryPart.LocalTransparencyModifier or v234:IsA("BasePart") and v234.LocalTransparencyModifier or l_v234_Attribute_0;
        if not v233 and l_v234_Attribute_0 and l_v234_Attribute_0 == v231 and not v14 then
            return;
        else
            for _, v237 in pairs(v234:GetDescendants()) do
                if v237 and (v237:IsA("BasePart") or v237:IsA("Decal") or v237:IsA("Texture")) and v237.LocalTransparencyModifier ~= v231 then
                    v237.LocalTransparencyModifier = v231;
                end;
            end;
            v234:SetAttribute("LocalTransparency", v231);
            return;
        end;
    end;
    local v238 = false;
    local v239 = 0;
    local v240 = tick();
    local v241 = tick();
    v27.IsOnGround = function(_) --[[ Line: 727 ]] --[[ Name: IsOnGround ]]
        -- upvalues: l_HumanoidRootPart_0 (ref), l_Humanoid_0 (ref), l_Character_0 (ref), l_new_1 (copy), v238 (ref), v239 (ref), v241 (ref)
        if l_HumanoidRootPart_0.Velocity.Y > l_Humanoid_0.JumpPower / 2 then
            return false;
        elseif l_Humanoid_0.FloorMaterial == Enum.Material.Air then
            return false;
        else
            local v243 = {
                workspace:FindFirstChild("MapZones"), 
                l_Character_0 or game.Players.LocalPlayer.Character, 
                workspace:FindFirstChild("Bodies"), 
                workspace:FindFirstChild("Tracers"), 
                workspace:FindFirstChild("Bags"), 
                workspace:FindFirstChild("Criminals"), 
                workspace:FindFirstChild("Citizens")
            };
            local l_CFrame_0 = l_HumanoidRootPart_0.CFrame;
            local v245 = l_new_1(0, -(3 + l_Humanoid_0.HipHeight), 0);
            local v246 = nil;
            local l_p_0 = l_CFrame_0.p;
            while true do
                local _ = l_p_0;
                local l_workspace_PartOnRayWithIgnoreList_0, v250 = workspace:FindPartOnRayWithIgnoreList(Ray.new(l_p_0 - Vector3.new(0, 0.05000000074505806, 0, 0), v245), v243);
                v246 = l_workspace_PartOnRayWithIgnoreList_0;
                l_p_0 = v250;
                if v246 then
                    if v246.CanCollide == false then
                        l_workspace_PartOnRayWithIgnoreList_0 = (l_CFrame_0.p - l_p_0).Magnitude;
                        v245 = l_new_1(0, -math.max(3 + l_Humanoid_0.HipHeight + l_workspace_PartOnRayWithIgnoreList_0, 0.05), 0);
                        v246 = nil;
                    end;
                    if v246 then
                        break;
                    end;
                else
                    break;
                end;
            end;
            if v246 then
                if v238 then
                    v238 = false;
                    v239 = 0;
                    v241 = tick();
                end;
                return true, v246.Material;
            else
                return false;
            end;
        end;
    end;
    local v251 = false;
    local v252 = false;
    local l_BarFlash_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("PlayerStats"):WaitForChild("LocalPlayerStats"):WaitForChild("info_stamina"):WaitForChild("BarFlash");
    local l_l_BarFlash_0_0 = l_BarFlash_0 --[[ copy: 120 -> 162 ]];
    playStaminaWarning = function(v255) --[[ Line: 785 ]] --[[ Name: playStaminaWarning ]]
        -- upvalues: v252 (ref), l_PlayerGui_0 (ref), v251 (ref), l_l_BarFlash_0_0 (copy), l_TweenService_0 (copy)
        if v255 and not v252 then
            v252 = true;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events").CasingError:Fire("You don't have enough stamina to slide!");
            task.delay(1, function() --[[ Line: 789 ]]
                -- upvalues: v252 (ref)
                v252 = false;
            end);
        end;
        if not v251 then
            v251 = true;
            task.spawn(function() --[[ Line: 796 ]]
                -- upvalues: l_l_BarFlash_0_0 (ref), l_TweenService_0 (ref), v255 (copy), v251 (ref)
                l_l_BarFlash_0_0.ImageTransparency = 1;
                l_TweenService_0:Create(l_l_BarFlash_0_0, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, v255 and 3 or 1, true), {
                    ImageTransparency = 0.2
                }):Play();
                task.wait(1);
                v251 = false;
            end);
        end;
    end;
    v27.StopSliding = function(_, v257) --[[ Line: 806 ]] --[[ Name: StopSliding ]]
        -- upvalues: v27 (copy), l_Character_0 (ref)
        if v257 or v27.Sprinting then
            v27.Sliding = false;
            l_Character_0.Crouching.Value = false;
        else
            v27.Sliding = false;
        end;
        if v27.SlidingCooldown then
            local v258 = 3;
            local v259 = os.clock() + v258;
            l_Character_0:SetAttribute("IsSliding", false);
            l_Character_0:SetAttribute("Sliding", v258);
            do
                local l_v258_0 = v258;
                task.spawn(function() --[[ Line: 821 ]]
                    -- upvalues: l_v258_0 (ref), v259 (copy), l_Character_0 (ref), v27 (ref)
                    while l_v258_0 and os.clock() < v259 do
                        l_v258_0 = l_v258_0 - task.wait() * 1;
                        l_v258_0 = math.max(0, l_v258_0);
                        l_Character_0:SetAttribute("Sliding", l_v258_0 * 1);
                    end;
                    l_Character_0:SetAttribute("Sliding", nil);
                    v27.SlidingCooldown = false;
                    l_v258_0 = nil;
                end);
            end;
        end;
    end;
    v27.SetSlide = function(_, v262) --[[ Line: 838 ]] --[[ Name: SetSlide ]]
        -- upvalues: v41 (ref), l_PlayerGui_0 (ref), l_Humanoid_0 (ref), l_Character_0 (ref), v27 (copy), l_Stamina_0 (ref), l_LocalPlayer_0 (copy), l_RS_Package_0 (copy), l_CurrentCamera_0 (copy)
        if not v41 then
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events").CasingError:Fire("You cannot slide while in casing mode");
            return;
        else
            if not (l_Humanoid_0.FloorMaterial ~= Enum.Material.Air) then
                local v263;
                repeat
                    v263 = l_Humanoid_0.FloorMaterial ~= Enum.Material.Air;
                    task.wait();
                until v263 or not l_Character_0.Crouching.Value or not v27.Sprinting;
                if not v263 or not l_Character_0.Crouching.Value or not v27.Sprinting then
                    return;
                end;
            end;
            if l_Stamina_0 and l_Character_0:FindFirstChild("INFSTAM") == nil then
                if l_Stamina_0.Value < 0 then
                    playStaminaWarning(true);
                    return;
                else
                    l_Stamina_0.Value = math.max(0, l_Stamina_0.Value - 0);
                end;
            end;
            if v262 and not v27.Sliding then
                v27.SlidingCooldown = true;
                local v264 = script.Sounds.Slide:Clone();
                v264.Parent = l_LocalPlayer_0.Character.PrimaryPart;
                v264:Play();
                task.delay(v264.TimeLength + 1, function() --[[ Line: 881 ]]
                    -- upvalues: v264 (copy)
                    v264:Destroy();
                end);
                v27.MovementState = "Accelerating";
                l_Character_0:SetAttribute("IsSliding", true);
                l_Character_0:SetAttribute("Sliding", 1);
                l_RS_Package_0.Remotes.SetSliding:FireServer();
                local l_LookVector_0 = l_CurrentCamera_0.CFrame.LookVector;
                v27.MovementDirection = Vector3.new(l_LookVector_0.X, 0, l_LookVector_0.Z);
                v27.MovementSpeed = l_LocalPlayer_0.Character.Humanoid.WalkSpeed;
                v27.LastCharacterPosition = l_LocalPlayer_0.Character.HumanoidRootPart.Position;
                v27.Sliding = true;
                task.wait(0.3);
                if v27.Sliding then
                    v27:StopSliding();
                end;
            end;
            return;
        end;
    end;
    local l_MovementConfig_0 = require(script:WaitForChild("MovementConfig"));
    v27.isMoving = function(_, v268, v269) --[[ Line: 928 ]] --[[ Name: isMoving ]]
        -- upvalues: l_LocalPlayer_0 (copy)
        v268 = v268 or true;
        v269 = v269 or 4;
        local l_Character_1 = l_LocalPlayer_0.Character;
        local l_AssemblyLinearVelocity_0 = (l_Character_1 and l_Character_1:FindFirstChild("HumanoidRootPart")).AssemblyLinearVelocity;
        if v268 then
            l_AssemblyLinearVelocity_0 = Vector3.new(l_AssemblyLinearVelocity_0.X, 0, l_AssemblyLinearVelocity_0.Z);
        end;
        if v269 < l_AssemblyLinearVelocity_0.Magnitude then
            return true;
        else
            return false;
        end;
    end;
    v27.detectCollisions = function(_, v273) --[[ Line: 958 ]] --[[ Name: detectCollisions ]]
        -- upvalues: l_LocalPlayer_0 (copy)
        local v274 = RaycastParams.new();
        v274.FilterDescendantsInstances = {
            workspace.CurrentCamera, 
            l_LocalPlayer_0.Character, 
            workspace:FindFirstChild("Police"), 
            workspace:FindFirstChild("Criminals"), 
            workspace:FindFirstChild("Citizens"), 
            workspace:FindFirstChild("Bags"), 
            workspace:FindFirstChild("Tracers"), 
            workspace:FindFirstChild("ShatteredGlass")
        };
        v274.FilterType = Enum.RaycastFilterType.Exclude;
        v274.RespectCanCollide = true;
        local v275 = workspace:Raycast(l_LocalPlayer_0.Character.HumanoidRootPart.Position, v273, v274);
        if not v275 then
            return nil;
        else
            return v275.Instance, v275.Position, v275.Normal;
        end;
    end;
    local l_l_MovementConfig_0_0 = l_MovementConfig_0 --[[ copy: 121 -> 163 ]];
    v27.updateSliding = function(v277, v278) --[[ Line: 991 ]] --[[ Name: updateSliding ]]
        -- upvalues: l_LocalPlayer_0 (copy), l_l_MovementConfig_0_0 (copy), v27 (copy), l_Keybinds_0 (copy), l_Character_0 (ref)
        local l_Position_0 = l_LocalPlayer_0.Character.HumanoidRootPart.Position;
        local v280 = l_Position_0 - v277.LastCharacterPosition;
        if v280.Y > l_l_MovementConfig_0_0.SLIDE_UPHILL_FACTOR then
            v27:StopSliding();
            return;
        else
            if IsKeyDown(l_Keybinds_0.JumpKeys) or not l_Character_0.Crouching.Value then
                v27:StopSliding(true);
            end;
            v277.LastCharacterPosition = l_Position_0;
            l_LocalPlayer_0.Character.Humanoid:Move(v277.MovementDirection * 5);
            if v277:detectCollisions(v277.MovementDirection * 5) then
                v27:StopSliding();
                return;
            else
                if v277.MovementState == "Accelerating" then
                    v277.MovementSpeed = v277.MovementSpeed + l_l_MovementConfig_0_0.SLIDE_ACCELERATION * v278 * 60;
                    if v277.MovementSpeed >= l_l_MovementConfig_0_0.SLIDE_APEX_SPEED and v280.Y > l_l_MovementConfig_0_0.SLIDE_DOWNHILL_FACTOR then
                        v277.MovementState = "Decelerating";
                    end;
                else
                    v277.MovementSpeed = v277.MovementSpeed + l_l_MovementConfig_0_0.SLIDE_DECELERATION * v278 * 60;
                    if v280.Y < l_l_MovementConfig_0_0.SLIDE_DOWNHILL_FACTOR then
                        v277.MovementState = "Accelerating";
                    end;
                end;
                v277.MovementSpeed = math.min(v277.MovementSpeed, l_l_MovementConfig_0_0.SLIDE_APEX_SPEED);
                if v277.MovementSpeed <= l_l_MovementConfig_0_0.SLIDE_STOP_SPEED then
                    v27:StopSliding();
                    return;
                else
                    return;
                end;
            end;
        end;
    end;
    v27.SetSprint = function(_, v282) --[[ Line: 1068 ]] --[[ Name: SetSprint ]]
        -- upvalues: v30 (copy), v27 (copy), v41 (ref), l_PlayerGui_0 (ref), l_Character_0 (ref), l_Stamina_0 (ref), l_MaxStamina_0 (ref), v86 (copy)
        if not v30.Current then
            if v27.Sprinting then
                v27.Sprinting = false;
                v27:ResetWalkSpeed();
            end;
            return;
        elseif not v41 then
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events").CasingError:Fire("You cannot sprint while in casing mode");
            return;
        else
            local l_Value_6 = l_Character_0:WaitForChild("BagSpeed").Value;
            if l_Stamina_0 and l_Stamina_0.Value / l_MaxStamina_0.Value < 0.25 then
                v282 = false;
                playStaminaWarning();
            end;
            v282 = v282 and not v30.Current.aiming and (not v30.Current.reloading or v86("G", "J"));
            local _ = v282;
            v282 = v282 and not v27.Crouching;
            if not v27.Sprinting and v282 then
                game:GetService("ReplicatedStorage"):WaitForChild("RS_Package").Remotes.RunController:FireServer(v282, true);
            elseif v27.Sprinting and not v282 then
                game:GetService("ReplicatedStorage"):WaitForChild("RS_Package").Remotes.RunController:FireServer(v282, true);
            end;
            if v282 then
                v27.Sprinting = true;
                v27:SetWalkSpeed(v27.RunSpeed * l_Value_6);
                return;
            else
                v27.Sprinting = false;
                if not v30.Current.aiming then

                end;
                if not v27.Crouching then
                    v27:SetWalkSpeed(v27.DefaultWalkSpeed * l_Value_6);
                    return;
                else
                    v27:SetWalkSpeed((v27.DefaultWalkSpeed - v27.CrouchSpeed) * l_Value_6);
                    return;
                end;
            end;
        end;
    end;
    v27.Jump = function(_) --[[ Line: 1114 ]] --[[ Name: Jump ]]
        -- upvalues: v41 (ref), l_PlayerGui_0 (ref), l_Humanoid_0 (ref), v27 (copy), v241 (ref), v238 (ref), l_HumanoidRootPart_0 (ref), l_new_1 (copy), v240 (ref)
        if not v41 then
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events").CasingError:Fire("You cannot jump while in casing mode");
            return;
        elseif l_Humanoid_0.Sit then
            l_Humanoid_0:ChangeState(Enum.HumanoidStateType.Jumping);
            return;
        else
            if v27:IsOnGround() and tick() - v241 >= 0.1 then
                v238 = true;
                l_HumanoidRootPart_0.Velocity = l_new_1(0, v27.JumpPower * 1.2, 0);
                v240 = tick();
            end;
            return;
        end;
    end;
    local v286 = false;
    local l_Value_7 = l_Options_0:WaitForChild("Gameplay"):WaitForChild("ToggleSprint").Value;
    local v288 = workspace:GetAttribute("CHEATS_ENABLED") or false;
    for _, v290 in pairs(v13) do
        if v290 == l_LocalPlayer_0.UserId then
            v288 = true;
        end;
    end;
    local function v293() --[[ Line: 1145 ]] --[[ Name: becomeGuard ]]
        -- upvalues: v23 (ref), v27 (copy), l_PlayerGui_0 (ref), l_TweenService_0 (copy), v30 (copy), l_Humanoid_0 (ref)
        v23 = true;
        v27:SetSprint(false);
        v27:SetWalkSpeed(0);
        local l_Frame_0 = Instance.new("Frame");
        l_Frame_0.BackgroundColor3 = Color3.new(0, 0, 0);
        l_Frame_0.BorderSizePixel = 0;
        l_Frame_0.Size = UDim2.new(1, 0, 1, 0);
        l_Frame_0.BackgroundTransparency = 1;
        l_Frame_0.Parent = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui");
        l_TweenService_0:Create(l_Frame_0, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0
        }):Play();
        local v292 = 6;
        if v30.Current then
            if v30.Current.reloading then
                v30.CancelReload = true;
                task.wait(0.5);
                v292 = 5.5;
            end;
            v30.Current:putAway(true);
        end;
        task.wait(v292);
        l_TweenService_0:Create(l_Frame_0, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            BackgroundTransparency = 1
        }):Play();
        if v30.Current then
            v30.Current:unequip();
        end;
        l_Humanoid_0:UnequipTools();
        v27:ResetWalkSpeed();
    end;
    local l_v293_0 = v293 --[[ copy: 125 -> 164 ]];
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("BecomeGuard").OnClientEvent:Connect(function() --[[ Line: 1176 ]]
        -- upvalues: l_v293_0 (copy)
        l_v293_0();
    end);
    local v295 = false;
    l_UserInputService_0.JumpRequest:Connect(function() --[[ Line: 1181 ]]
        -- upvalues: l_Keybinds_0 (copy), v295 (ref), v286 (ref), v27 (copy)
        if l_Keybinds_0.JumpKeys[2] == Enum.KeyCode.ButtonA and v295 then
            v286 = true;
            while v286 do
                v27:Jump();
                wait();
            end;
        end;
    end);
    local l_l_Value_7_0 = l_Value_7 --[[ copy: 123 -> 165 ]];
    l_UserInputService_0.InputBegan:Connect(function(v297, v298) --[[ Line: 1192 ]]
        -- upvalues: v51 (ref), l_Keybinds_0 (copy), v295 (ref), l_l_Value_7_0 (copy), v27 (copy), l_l_UserInputService_0_GamepadConnected_0 (ref), v286 (ref), v30 (copy), v288 (ref)
        if v51 then
            return;
        else
            if v297.KeyCode == l_Keybinds_0.JumpKeys[2] then
                v295 = true;
            end;
            if v298 then
                return;
            else
                if MatchKeys(v297, l_Keybinds_0.SprintKeys) then
                    if l_l_Value_7_0 then
                        v27:SetSprint(not v27.Sprinting);
                    else
                        v27:SetSprint(true);
                    end;
                end;
                local v299 = l_l_UserInputService_0_GamepadConnected_0 and game:GetService("GuiService").GuiNavigationEnabled;
                if MatchKeys(v297, l_Keybinds_0.JumpKeys) and not v299 then
                    v286 = true;
                    while v286 do
                        v27:Jump();
                        wait();
                    end;
                end;
                if MatchKeys(v297, l_Keybinds_0.ReloadKeys) and v30.Current then
                    local v300 = nil;
                    local v301 = nil;
                    local v302 = nil;
                    local v303 = nil;
                    if v30.Current.getAmmo then
                        local v304 = v30.Current:getAmmo() or {};
                        v300 = v304.Ammo;
                        v301 = v304.Spare;
                        v302 = v304.AmmoCapacity;
                        v303 = v304.SecondaryAmmo;
                    end;
                    local v305 = v303 and v303 < v302 or v300 and v300 < v302;
                    if (v30.Current.data.WeaponType == "Gun" or v30.Current.data.WeaponType == "Gadget") and (not l_l_UserInputService_0_GamepadConnected_0 or v305) then
                        v30.Current:setreloading(true);
                    else
                        v30.Current:setinspecting(true);
                    end;
                end;
                if MatchKeys(v297, l_Keybinds_0.AltAimKeys) and v30.Current and v30.Current.data.WeaponType == "Gun" then
                    v30.Current.altaim = not v30.Current.altaim;
                    if v30.Current.aiming and v30.Current.altaimpart then
                        v30.Current:setaim(true, true);
                    end;
                end;
                if not v288 and not workspace:GetAttribute("CHEATS_ENABLED") or not MatchKeys(v297, l_Keybinds_0.camModeKeys) or not v298 then

                end;
                return;
            end;
        end;
    end);
    l_UserInputService_0.InputEnded:Connect(function(v306, _) --[[ Line: 1260 ]]
        -- upvalues: v51 (ref), l_l_UserInputService_0_GamepadConnected_0 (ref), l_Keybinds_0 (copy), v30 (copy), l_l_Value_7_0 (copy), v27 (copy), v286 (ref)
        if v51 then
            return;
        else
            local v308 = l_l_UserInputService_0_GamepadConnected_0 and (IsKeyDown(l_Keybinds_0.AimKeys) or v30.Current and v30.Current.aiming);
            if not l_l_Value_7_0 and MatchKeys(v306, l_Keybinds_0.SprintKeys) and not v308 then
                v27:SetSprint(false);
            end;
            if MatchKeys(v306, l_Keybinds_0.JumpKeys) then
                v286 = false;
            end;
            return;
        end;
    end);
    local v309 = 15;
    if v86("G", "f") then
        v309 = v309 * 1.25;
    end;
    spawn(function() --[[ Line: 1279 ]]
        -- upvalues: l_Character_0 (ref), v86 (copy), l_v215_0 (ref), v27 (copy)
        repeat
            task.wait();
        until l_Character_0:FindFirstChild("Armor");
        local l_Armor_0 = l_Character_0:WaitForChild("Armor");
        local v311 = v86("G", "b");
        local v312 = v86("G", "B");
        local v313 = 3;
        if v312 then
            v313 = 5;
        end;
        local v314 = false;
        l_Character_0:GetAttributeChangedSignal("SecondWind"):Connect(function() --[[ Line: 1289 ]]
            -- upvalues: l_Character_0 (ref), v314 (ref), l_v215_0 (ref), v313 (ref), v27 (ref)
            local v315 = l_Character_0:GetAttribute("SecondWind") or false;
            if v315 and not v314 then
                v314 = true;
                l_v215_0 = v313;
                v27:ResetWalkSpeed();
                game.Players.LocalPlayer.PlayerGui:WaitForChild("SG_Package").SFX.SecondWind:Play();
                return;
            else
                if not v315 and v314 then
                    v314 = false;
                    l_v215_0 = 0;
                    v27:ResetWalkSpeed();
                end;
                return;
            end;
        end);
        l_Armor_0.Changed:connect(function(v316) --[[ Line: 1303 ]]
            -- upvalues: v311 (copy), l_Character_0 (ref)
            if v316 == 0 and v311 then
                l_Character_0:SetAttribute("SecondWind", 5);
            end;
        end);
    end);
    local v317 = false;
    local function v320(v318) --[[ Line: 1312 ]] --[[ Name: charismaBoost ]]
        -- upvalues: l_Character_0 (ref), v317 (ref), l_v215_0 (ref), v27 (copy)
        local v319 = l_Character_0:GetAttribute("CHARISMA") or false;
        if v319 and not v317 then
            v317 = true;
            l_v215_0 = v318;
            v27:ResetWalkSpeed();
            game.Players.LocalPlayer.PlayerGui:WaitForChild("SG_Package").SFX.SecondWind:Play();
            return;
        else
            if not v319 and v317 then
                v317 = false;
                l_v215_0 = 0;
                v27:ResetWalkSpeed();
            end;
            return;
        end;
    end;
    local l_v320_0 = v320 --[[ copy: 129 -> 166 ]];
    l_Character_0:GetAttributeChangedSignal("charisma"):Connect(function() --[[ Line: 1326 ]]
        -- upvalues: l_v320_0 (copy)
        l_v320_0(3);
    end);
    l_Character_0:GetAttributeChangedSignal("charisma"):Connect(function() --[[ Line: 1329 ]]
        -- upvalues: l_v320_0 (copy)
        l_v320_0(5);
    end);
    local v322 = tick();
    local l_v213_2 = v213 --[[ copy: 108 -> 167 ]];
    local l_v211_0 = v211 --[[ copy: 106 -> 168 ]];
    local l_v214_0 = v214 --[[ copy: 109 -> 169 ]];
    local l_v212_0 = v212 --[[ copy: 107 -> 170 ]];
    Step = function(v327) --[[ Line: 1334 ]] --[[ Name: Step ]]
        -- upvalues: v30 (copy), v27 (copy), l_new_0 (copy), l_HumanoidRootPart_0 (ref), l_v213_2 (copy), l_v211_0 (copy), l_new_1 (copy), l_Humanoid_0 (ref), v238 (ref), l_PlayerGui_0 (ref), l_v214_0 (copy), l_Character_0 (ref), l_v212_0 (copy), l_Stamina_0 (ref), l_MaxStamina_0 (ref), v309 (ref), v28 (copy), l_Angles_0 (copy), v44 (ref), l_LocalPlayer_0 (copy), v95 (copy), l_CurrentCamera_0 (copy), v322 (ref)
        if v30.Current then
            v27:ResetWalkSpeed();
        end;
        local v328 = Vector3.new(1, 0, 1, 0) * l_new_0().vectorToObjectSpace(l_HumanoidRootPart_0.CFrame, l_HumanoidRootPart_0.Velocity);
        if v328.Magnitude > l_v213_2.t then
            l_v211_0.t = l_new_1();
        else
            l_v211_0.t = v328;
        end;
        if l_Humanoid_0.Sit or v238 then

        end;
        if v27.Sliding then
            v27.updateSliding(v27, v327);
        end;
        local l_Attribute_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):GetAttribute("InDialog");
        local v330 = v30.Current and v30.Current.LastShot;
        if v330 and v330 + 1 > os.clock() and not l_Attribute_0 then
            l_v214_0.p = 0;
            l_v214_0.t = 0;
        else
            l_v214_0.t = (not (not not l_Attribute_0 or v27.Sprinting) or l_Character_0:GetAttribute("CarryingBody") or v30.Current and v30.Current.reloading) and 0 or 1;
        end;
        if l_Character_0:GetAttribute("CarryingBody") and v27.Sprinting then
            l_v214_0.t = 0;
            v27:SetSprint(false);
        end;
        if v27:IsOnGround() then
            l_v212_0.t = v328.magnitude;
        else
            l_v212_0.t = 0;
        end;
        if l_Character_0:FindFirstChild("Health") and l_Character_0:FindFirstChild("Health").Value <= 0 or l_Character_0.Parent == nil then
            l_v211_0.t = l_new_1();
            l_v212_0.t = 0;
        end;
        if l_Stamina_0 and l_Character_0:FindFirstChild("INFSTAM") == nil then
            if v27.Sprinting and l_Stamina_0.Value > 0 and v328.Magnitude > l_v213_2.t / 2 then
                l_Stamina_0.Value = l_Stamina_0.Value - 25 * v327;
            elseif v27.Sprinting and l_Stamina_0.Value <= 0 then
                l_Stamina_0.Value = 0;
                v27:SetSprint(false);
            elseif l_Stamina_0.Value < l_MaxStamina_0.Value and not v27.Sliding then
                l_Stamina_0.Value = math.min(l_Stamina_0.Value + v309 * v327, l_MaxStamina_0.Value);
            end;
        end;
        v27.Velocity = l_v211_0.p;
        v27.Speed = l_v212_0.p;
        v27.Distance = v27.Distance + v327 * v27.Speed;
        l_Humanoid_0.WalkSpeed = l_v213_2.p;
        if v27.Sliding then

        end;
        v27.Sprint = l_v214_0.p;
        if v28.Mode == "FirstPerson" and not l_Humanoid_0.Sit then
            local l_v28_CameraHeading_0, _ = v28:GetCameraHeading();
            l_HumanoidRootPart_0.CFrame = l_Angles_0(0, l_v28_CameraHeading_0, 0) + l_HumanoidRootPart_0.Position;
        end;
        if not v44 and l_LocalPlayer_0.Character and l_LocalPlayer_0.Character.Parent ~= nil then
            v95.Parent = l_CurrentCamera_0;
            v44 = true;
        elseif v44 and (l_LocalPlayer_0.Character == nil or l_LocalPlayer_0.Character.Parent == nil) then
            v95.Parent = game:GetService("ReplicatedStorage");
            v44 = false;
        end;
        if tick() >= v322 then
            v322 = tick() + 0.125;
            local l_Position_1 = (l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -200)).Position;
            local v334 = v28.LeanValue or 0;
            game.ReplicatedStorage.RS_Package.Remotes.LookVector:FireServer(l_Position_1, v334);
        end;
    end;
    table.insert(v105, Step);
end;
v211 = l_new_0();
v212 = require(l_LocalPlayer_0:WaitForChild("PlayerScripts"):WaitForChild("CameraShaker"));
do
    local l_v211_1, l_v215_1, l_v217_2 = v211, v215, v217;
    v213 = v212.new(Enum.RenderPriority.Camera.Value, function(v338, v339) --[[ Line: 1448 ]]
        -- upvalues: l_v211_1 (ref)
        v339 = v339 or 0.016666666666666666;
        l_v211_1 = l_v211_1:Lerp(v338, 60 * v339);
    end);
    v213:Start();
    v28.Mode = "Normal";
    v28.LookDelta = l_new_1();
    v28.ThumbstickDelta = l_new_1();
    v28.SwayDelta = l_new_1();
    v28.DefaultXSensitivity = 1;
    v28.DefaultYSensitivity = 1;
    v28.XSensitivity = v28.DefaultXSensitivity;
    v28.YSensitivity = v28.DefaultYSensitivity;
    v28.SniperAimSensitivityMultiplier = 0.075;
    v28.StandardAimSensitivityMultiplier = 0.75;
    v28.Offset = Vector3.new(0.75, 0.800000011920929, 0, 0);
    v28.Distance = 6;
    v214 = -1.4835298641951802;
    l_v215_1 = 1.4835298641951802;
    v28.LookMin = v214;
    v28.LookMax = l_v215_1;
    v28.AimScale = 0.4;
    v28.DefaultFOV = 90;
    v28.YInvertValue = UserSettings().GameSettings:GetCameraYInvertValue() or 1;
    v28.TaseActive = false;
    v214 = workspace:FindFirstChild("SpawnLocation");
    if v214 then
        l_v215_1 = v214.Orientation.Y;
        v28.LookDelta = l_new_1() + Vector3.new(math.rad(l_v215_1), 0, 0);
    end;
    l_v215_1 = true;
    l_v217_2 = true;
    l_BaseSpeed_0 = v25.Spring.new(v28.DefaultFOV);
    l_BaseSpeed_0.s = 18;
    l_BaseSpeed_0.d = 0.9;
    local v340 = v25.Spring.new(v28.Distance);
    v340.s = 18;
    v340.d = 0.9;
    local v341 = v25.Spring.new(0);
    v341.s = 15;
    v341.d = 1;
    local v342 = v25.Spring.new(0);
    v342.s = 8;
    v342.d = 1;
    v342.t = 0;
    CheckIfCanLean = function() --[[ Line: 1501 ]] --[[ Name: CheckIfCanLean ]]
        -- upvalues: l_v215_1 (ref)
        return l_v215_1;
    end;
    v28.ResetSensitivity = function(_) --[[ Line: 1505 ]] --[[ Name: ResetSensitivity ]]
        -- upvalues: v28 (copy)
        v28:SetSensitivity(1, 1);
    end;
    v28.SetSensitivity = function(_, v345, v346) --[[ Line: 1510 ]] --[[ Name: SetSensitivity ]]
        -- upvalues: v28 (copy)
        v28.XSensitivity = v345 or v28.XSensitivity;
        v28.YSensitivity = v346 or v28.YSensitivity;
    end;
    v28.GetCameraHeading = function(_) --[[ Line: 1515 ]] --[[ Name: GetCameraHeading ]]
        -- upvalues: l_CurrentCamera_0 (copy), l_asin_0 (copy)
        local l_lookVector_0 = l_CurrentCamera_0.CFrame.lookVector;
        return math.atan2(-l_lookVector_0.x, -l_lookVector_0.z), (l_asin_0((l_CurrentCamera_0.CoordinateFrame.p - l_CurrentCamera_0.Focus.p).Unit.Y));
    end;
    v28.SwapMode = function(_) --[[ Line: 1520 ]] --[[ Name: SwapMode ]]
        -- upvalues: v28 (copy)
        if v28.Mode == "Normal" then
            return;
        elseif v28.Mode == "FirstPerson" then
            v28.Mode = "Shoulder";
            return;
        elseif v28.Mode == "Shoulder" then
            v28.Mode = "FirstPerson";
            return;
        else
            v28.Mode = "Shoulder";
            return;
        end;
    end;
    local l_v341_0 = v341 --[[ copy: 114 -> 171 ]];
    v28.Lean = function(v351, v352) --[[ Line: 1531 ]] --[[ Name: Lean ]]
        -- upvalues: l_v341_0 (copy), l_v215_1 (ref)
        l_v341_0.t = v352;
        l_v215_1 = v352 < 0.1;
        v351.LeanValue = v352;
    end;
    local l_v213_3 = v213 --[[ copy: 108 -> 172 ]];
    v28.SetShake = function(_, v355, v356, v357, v358, v359, v360) --[[ Line: 1538 ]] --[[ Name: SetShake ]]
        -- upvalues: l_v213_3 (copy)
        l_v213_3:ShakeOnce(v355, v356, v357, v358, v359, v360);
    end;
    l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("CameraShake").Event:Connect(function(...) --[[ Line: 1542 ]]
        -- upvalues: v28 (copy)
        v28:SetShake(...);
    end);
    local v361 = nil;
    local v362 = nil;
    local l_l_VignetteService_0_Vignette_0 = l_VignetteService_0:CreateVignette(l_LocalPlayer_0:WaitForChild("PlayerScripts"):WaitForChild("SPS_Package"):WaitForChild("VignetteEffects"):WaitForChild("Tase"):GetChildren());
    l_l_VignetteService_0_Vignette_0:SetDistance(2);
    local l_v212_1 = v212 --[[ copy: 107 -> 173 ]];
    local l_l_l_VignetteService_0_Vignette_0_0 = l_l_VignetteService_0_Vignette_0 --[[ copy: 118 -> 174 ]];
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("TazeChanged").OnClientEvent:Connect(function(v366) --[[ Line: 1550 ]]
        -- upvalues: v361 (ref), l_v213_3 (copy), l_v212_1 (copy), l_l_l_VignetteService_0_Vignette_0_0 (copy), v28 (copy), v362 (ref), l_RunService_0 (copy), v30 (copy)
        if v366 and v361 == nil then
            v361 = l_v213_3:ShakeSustain(l_v212_1.Presets.Earthquake);
            l_l_l_VignetteService_0_Vignette_0_0:Enabled(true);
            v28.TaseActive = true;
            local v367 = math.random(10, 120) / 100;
            v362 = l_RunService_0.RenderStepped:Connect(function(v368) --[[ Line: 1557 ]]
                -- upvalues: v28 (ref), v367 (ref), v30 (ref)
                local l_v28_0 = v28;
                l_v28_0.SwayDelta = l_v28_0.SwayDelta + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)) * v368;
                l_v28_0 = v28;
                l_v28_0.LookDelta = l_v28_0.LookDelta + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)) * v368;
                v367 = v367 - v368;
                if v367 <= 0 then
                    v367 = math.random(10, 120) / 100;
                    if v30.Current and v30.Current.data and v30.Current.data.WeaponType == "Gun" then
                        if v30.Current.data.FireMode == "Semi" then
                            v30.Current:setshooting(true);
                            return;
                        else
                            v30.Current:setshooting(true);
                            task.delay(0.1, function() --[[ Line: 1569 ]]
                                -- upvalues: v30 (ref)
                                v30.Current:setshooting(false);
                            end);
                        end;
                    end;
                end;
            end);
            return;
        else
            if not v366 and v361 then
                if v30.Current then
                    v30.Current:setshooting(false);
                end;
                l_l_l_VignetteService_0_Vignette_0_0:Enabled(false);
                v362:Disconnect();
                v361:StartFadeOut(1);
                v361 = nil;
                v28.TaseActive = false;
            end;
            return;
        end;
    end);
    local v370 = false;
    local function _() --[[ Line: 1610 ]] --[[ Name: OnDynamicThumbstickEnabled ]]
        -- upvalues: l_UserInputService_0 (copy), v370 (ref)
        if l_UserInputService_0.TouchEnabled then
            v370 = true;
        end;
    end;
    local function _() --[[ Line: 1616 ]] --[[ Name: OnDynamicThumbstickDisabled ]]
        -- upvalues: v370 (ref)
        v370 = false;
    end;
    local function _() --[[ Line: 1620 ]] --[[ Name: OnGameSettingsTouchMovementModeChanged ]]
        -- upvalues: l_LocalPlayer_0 (copy), l_GameSettings_0 (copy), l_UserInputService_0 (copy), v370 (ref)
        if l_LocalPlayer_0.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
            if l_GameSettings_0.TouchMovementMode.Name == "DynamicThumbstick" then
                if l_UserInputService_0.TouchEnabled then
                    v370 = true;
                    return;
                end;
            else
                v370 = false;
            end;
        end;
    end;
    local function _() --[[ Line: 1630 ]] --[[ Name: OnDevTouchMovementModeChanged ]]
        -- upvalues: l_LocalPlayer_0 (copy), l_UserInputService_0 (copy), v370 (ref), l_GameSettings_0 (copy)
        if l_LocalPlayer_0.DevTouchMovementMode.Name == "DynamicThumbstick" then
            if l_UserInputService_0.TouchEnabled then
                v370 = true;
                return;
            end;
        elseif l_LocalPlayer_0.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
            if l_GameSettings_0.TouchMovementMode.Name == "DynamicThumbstick" then
                if l_UserInputService_0.TouchEnabled then
                    v370 = true;
                    return;
                end;
            else
                v370 = false;
            end;
        end;
    end;
    l_GameSettings_0.Changed:Connect(function(v375) --[[ Line: 1639 ]]
        -- upvalues: l_LocalPlayer_0 (copy), l_GameSettings_0 (copy), l_UserInputService_0 (copy), v370 (ref)
        if v375 == "TouchMovementMode" and l_LocalPlayer_0.DevTouchMovementMode == Enum.DevTouchMovementMode.UserChoice then
            if l_GameSettings_0.TouchMovementMode.Name == "DynamicThumbstick" then
                if l_UserInputService_0.TouchEnabled then
                    v370 = true;
                    return;
                end;
            else
                v370 = false;
            end;
        end;
    end);
    local v376 = nil;
    local v377 = nil;
    local v378 = nil;
    local function _() --[[ Line: 1652 ]] --[[ Name: getDynamicThumbstickFrame ]]
        -- upvalues: v376 (ref), l_PlayerGui_0 (ref)
        if v376 and v376:IsDescendantOf(game) then
            return v376;
        else
            local l_TouchGui_0 = l_PlayerGui_0:FindFirstChild("TouchGui");
            if not l_TouchGui_0 then
                return nil;
            else
                local l_TouchControlFrame_0 = l_TouchGui_0:FindFirstChild("TouchControlFrame");
                if not l_TouchControlFrame_0 then
                    return nil;
                else
                    v376 = l_TouchControlFrame_0:FindFirstChild("DynamicThumbstickFrame");
                    return v376;
                end;
            end;
        end;
    end;
    local v382 = Vector2.new(12.566370614359172, 5.969026041820607);
    local v383 = Vector2.new(7.0685834705770345, 6.283185307179586);
    ViewSizeX = function() --[[ Line: 1671 ]] --[[ Name: ViewSizeX ]]
        local v384 = 1024;
        local l_CurrentCamera_1 = workspace.CurrentCamera;
        if l_CurrentCamera_1 then
            v384 = l_CurrentCamera_1.ViewportSize.X;
        end;
        return v384;
    end;
    ViewSizeY = function() --[[ Line: 1680 ]] --[[ Name: ViewSizeY ]]
        local v386 = 768;
        local l_CurrentCamera_2 = workspace.CurrentCamera;
        if l_CurrentCamera_2 then
            v386 = l_CurrentCamera_2.ViewportSize.Y;
        end;
        return v386;
    end;
    local function _(v388) --[[ Line: 1689 ]] --[[ Name: mouseTranslationToAngle ]]
        local v389 = v388.x / 1920;
        local v390 = v388.y / 1200;
        return Vector2.new(v389, v390);
    end;
    screenTranslationToAngle = function(v392) --[[ Line: 1694 ]] --[[ Name: screenTranslationToAngle ]]
        local v393 = ViewSizeX();
        local v394 = ViewSizeY();
        local v395 = v392.x / v393;
        local v396 = v392.y / v394;
        return Vector2.new(v395, v396);
    end;
    local l_CameraScript_0 = l_LocalPlayer_0:WaitForChild("PlayerScripts"):WaitForChild("CameraScript");
    local v398 = false;
    local l_GameStarted_0 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted");
    local v400 = {};
    local l_l_GameStarted_0_0 = l_GameStarted_0 --[[ copy: 133 -> 175 ]];
    local l_v400_0 = v400 --[[ copy: 134 -> 176 ]];
    l_UserInputService_0.InputBegan:Connect(function(v403, v404) --[[ Line: 1710 ]]
        -- upvalues: v24 (ref), l_MobileUI_0 (ref), l_l_GameStarted_0_0 (copy), v376 (ref), l_PlayerGui_0 (ref), v398 (ref), l_v400_0 (copy)
        if v403.UserInputType == Enum.UserInputType.Touch then
            v24 = true;
        end;
        l_MobileUI_0.Visible = l_l_GameStarted_0_0.Value and v24;
        if v24 then
            local v405;
            if v376 and v376:IsDescendantOf(game) then
                v405 = v376;
            else
                local l_TouchGui_1 = l_PlayerGui_0:FindFirstChild("TouchGui");
                if not l_TouchGui_1 then
                    v405 = nil;
                else
                    local l_TouchControlFrame_1 = l_TouchGui_1:FindFirstChild("TouchControlFrame");
                    if not l_TouchControlFrame_1 then
                        v405 = nil;
                    else
                        v376 = l_TouchControlFrame_1:FindFirstChild("DynamicThumbstickFrame");
                        v405 = v376;
                    end;
                end;
            end;
            v376 = v405;
            if v376 and v376:IsDescendantOf(game) then
                v405 = v376;
            else
                local l_TouchGui_2 = l_PlayerGui_0:FindFirstChild("TouchGui");
                if not l_TouchGui_2 then
                    v405 = nil;
                else
                    local l_TouchControlFrame_2 = l_TouchGui_2:FindFirstChild("TouchControlFrame");
                    if not l_TouchControlFrame_2 then
                        v405 = nil;
                    else
                        v376 = l_TouchControlFrame_2:FindFirstChild("DynamicThumbstickFrame");
                        v405 = v376;
                    end;
                end;
            end;
            local v410 = false;
            v398 = v410;
            if not v410 then
                l_v400_0[v403] = v404;
            end;
        end;
    end);
    local l_Police_0 = workspace:FindFirstChild("Police");
    local v412 = nil;
    local v413 = RaycastParams.new();
    v413.FilterDescendantsInstances = {
        workspace:FindFirstChild("Map")
    };
    local l_AimAssistMode_0 = l_Options_0:WaitForChild("Gameplay"):FindFirstChild("AimAssistMode");
    local l_AimAssistStrength_0 = l_Options_0:WaitForChild("Gameplay"):FindFirstChild("AimAssistStrength");
    local l_TouchSensitivity_0 = l_Options_0:WaitForChild("Gameplay"):FindFirstChild("TouchSensitivity");
    local l_TouchAimSensitivity_0 = l_Options_0:WaitForChild("Gameplay"):FindFirstChild("TouchAimSensitivity");
    local l_l_Police_0_0 = l_Police_0 --[[ copy: 135 -> 177 ]];
    local l_v413_0 = v413 --[[ copy: 137 -> 178 ]];
    local function v429() --[[ Line: 1761 ]] --[[ Name: getAssistFocus ]]
        -- upvalues: l_l_Police_0_0 (copy), l_CurrentCamera_0 (copy), l_acos_0 (copy), l_v413_0 (copy)
        local v420 = nil;
        local v421 = 999;
        local v422 = 999;
        for _, v424 in l_l_Police_0_0:GetChildren() do
            local v425 = v424:FindFirstChild("Head") or v424.PrimaryPart;
            if v425 then
                local l_Magnitude_0 = (v425.Position - l_CurrentCamera_0.CFrame.Position).Magnitude;
                local v427 = l_acos_0((math.clamp(l_CurrentCamera_0.CFrame.LookVector:Dot((v425.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1)));
                if v427 <= 0.17453292519943295 and v427 < v421 and l_Magnitude_0 < v422 then
                    l_v413_0.FilterDescendantsInstances = {
                        workspace:FindFirstChild("Map"), 
                        l_l_Police_0_0
                    };
                    l_v413_0.FilterType = Enum.RaycastFilterType.Include;
                    local v428 = workspace:Raycast(l_CurrentCamera_0.CFrame.Position, (v425.Position - l_CurrentCamera_0.CFrame.Position).unit * (l_Magnitude_0 + 2), l_v413_0) or {};
                    if v428 and v428.Instance:IsDescendantOf(v424) then
                        v420 = v425;
                        v421 = v427;
                        v422 = l_Magnitude_0;
                    end;
                end;
            end;
        end;
        return v420, v422, v421;
    end;
    local l_l_CameraScript_0_0 = l_CameraScript_0 --[[ copy: 131 -> 179 ]];
    local l_v383_0 = v383 --[[ copy: 129 -> 180 ]];
    local l_v382_0 = v382 --[[ copy: 128 -> 181 ]];
    local l_l_AimAssistMode_0_0 = l_AimAssistMode_0 --[[ copy: 138 -> 182 ]];
    local l_v429_0 = v429 --[[ copy: 142 -> 183 ]];
    local l_l_AimAssistStrength_0_0 = l_AimAssistStrength_0 --[[ copy: 139 -> 184 ]];
    local l_l_TouchAimSensitivity_0_0 = l_TouchAimSensitivity_0 --[[ copy: 141 -> 185 ]];
    local l_l_TouchSensitivity_0_0 = l_TouchSensitivity_0 --[[ copy: 140 -> 186 ]];
    l_UserInputService_0.InputChanged:Connect(function(v438, v439) --[[ Line: 1807 ]]
        -- upvalues: v24 (ref), l_l_UserInputService_0_GamepadConnected_0 (ref), l_LocalPlayer_0 (copy), l_v400_0 (copy), l_v217_2 (ref), v376 (ref), l_PlayerGui_0 (ref), l_l_CameraScript_0_0 (copy), v398 (ref), l_v383_0 (copy), l_v382_0 (copy), v30 (copy), l_l_AimAssistMode_0_0 (copy), l_v429_0 (copy), l_l_AimAssistStrength_0_0 (copy), v28 (copy), l_new_1 (copy), l_l_TouchAimSensitivity_0_0 (copy), l_l_TouchSensitivity_0_0 (copy), l_GameSettings_0 (copy), v412 (ref)
        local v440 = false;
        if v438.UserInputType == Enum.UserInputType.Touch then
            v24 = true;
        else
            v24 = false;
        end;
        if v439 and not l_l_UserInputService_0_GamepadConnected_0 and not v24 then
            return;
        elseif l_LocalPlayer_0:GetAttribute("CameraLocked") and not l_l_UserInputService_0_GamepadConnected_0 then
            return;
        else
            if l_v400_0[v438] == nil and v24 then
                l_v400_0[v438] = v439;
            end;
            if not l_v217_2 then
                return;
            else
                if v24 then
                    local v441;
                    if v376 and v376:IsDescendantOf(game) then
                        v441 = v376;
                    else
                        local l_TouchGui_3 = l_PlayerGui_0:FindFirstChild("TouchGui");
                        if not l_TouchGui_3 then
                            v441 = nil;
                        else
                            local l_TouchControlFrame_3 = l_TouchGui_3:FindFirstChild("TouchControlFrame");
                            if not l_TouchControlFrame_3 then
                                v441 = nil;
                            else
                                v376 = l_TouchControlFrame_3:FindFirstChild("DynamicThumbstickFrame");
                                v441 = v376;
                            end;
                        end;
                    end;
                    v376 = v441;
                    if v376 and v376:IsDescendantOf(game) then
                        v441 = v376;
                    else
                        local l_TouchGui_4 = l_PlayerGui_0:FindFirstChild("TouchGui");
                        if not l_TouchGui_4 then
                            v441 = nil;
                        else
                            local l_TouchControlFrame_4 = l_TouchGui_4:FindFirstChild("TouchControlFrame");
                            if not l_TouchControlFrame_4 then
                                v441 = nil;
                            else
                                v376 = l_TouchControlFrame_4:FindFirstChild("DynamicThumbstickFrame");
                                v441 = v376;
                            end;
                        end;
                    end;
                    local v446 = false;
                    local l_ControlScript_0 = l_l_CameraScript_0_0.Parent:FindFirstChild("ControlScript");
                    if l_ControlScript_0 then
                        local l_MasterControl_0 = l_ControlScript_0:FindFirstChild("MasterControl");
                        if l_MasterControl_0 then
                            local l_DynamicThumbstick_0 = l_MasterControl_0:FindFirstChild("DynamicThumbstick");
                            if l_DynamicThumbstick_0 then
                                v446 = require(l_DynamicThumbstick_0):GetInputObject() == v438;
                            end;
                        end;
                    end;
                    v398 = v446;
                end;
                if v398 then
                    return;
                else
                    local v450 = v24 and l_v383_0 or l_v382_0;
                    local v451 = 1;
                    local v452 = nil;
                    local v453 = nil;
                    local v454 = nil;
                    local v455 = v30.Current and v30.Current.aiming;
                    if l_l_AimAssistMode_0_0 and (l_l_AimAssistMode_0_0.Value == 1 and v455 or l_l_AimAssistMode_0_0.Value >= 2) then
                        local v456, v457, v458 = l_v429_0();
                        v452 = v456;
                        v453 = v457;
                        v454 = v458;
                        if v452 and (v453 < 50 or v455) then
                            v451 = math.clamp((math.deg(v454) + 1) / 11, 0.5, 1) * 1;
                        end;
                        v451 = math.lerp(v451, 1, 1 - (l_l_AimAssistStrength_0_0 and l_l_AimAssistStrength_0_0.Value or 0.2));
                    end;
                    v451 = (not (v438.UserInputType ~= Enum.UserInputType.Touch) or v438.UserInputType == Enum.UserInputType.Gamepad1) and v451 or 1;
                    if v438.UserInputType == Enum.UserInputType.MouseMovement or v438.UserInputType == Enum.UserInputType.Touch and l_v400_0[v438] == false then
                        local l_Delta_0 = v438.Delta;
                        local v460, v461, v462;
                        if v24 then
                            v462 = screenTranslationToAngle(l_Delta_0 * 2);
                            v440 = v462;
                        end;
                        if not v440 then
                            v460 = l_Delta_0.x / 1920;
                            v461 = l_Delta_0.y / 1200;
                            v462 = Vector2.new(v460, v461);
                        end;
                        v440 = false;
                        local v463 = v462 * v450;
                        v462 = l_new_1(v28.XSensitivity, v28.YSensitivity, 1);
                        if v24 then
                            v462 = v462 * (v455 and l_l_TouchAimSensitivity_0_0 and l_l_TouchAimSensitivity_0_0.Value or l_l_TouchSensitivity_0_0 and l_l_TouchSensitivity_0_0.Value or 0.5);
                        end;
                        if v452 then
                            v462 = v462 * v451;
                        end;
                        v460 = l_new_1(-v463.X, -v463.Y * l_GameSettings_0:GetCameraYInvertValue(), v438.Delta.Z) * v462;
                        v461 = v28;
                        v461.SwayDelta = v461.SwayDelta + v460;
                        v461 = v28;
                        v461.LookDelta = v461.LookDelta + v460;
                    end;
                    if v438.UserInputType == Enum.UserInputType.Gamepad1 and v438.KeyCode == Enum.KeyCode.Thumbstick2 then
                        local l_Position_2 = v438.Position;
                        if l_Position_2.magnitude > 0.2 then
                            local _ = v30.Current and v30.Current.aiming == true or false;
                            local l_GamepadCameraSensitivity_0 = UserSettings():GetService("UserGameSettings").GamepadCameraSensitivity;
                            if v452 then
                                l_GamepadCameraSensitivity_0 = l_GamepadCameraSensitivity_0 * 0.8;
                            end;
                            local _ = l_Position_2;
                            l_Position_2 = l_Position_2.Unit * ((l_Position_2.magnitude - 0.2) / 0.8);
                            local _ = l_new_1(-l_Position_2.x * (v28.XSensitivity * l_GamepadCameraSensitivity_0), l_Position_2.y * (v28.YSensitivity * l_GamepadCameraSensitivity_0), l_Position_2.z);
                            v28.ThumbstickDelta = l_new_1(-l_Position_2.x, l_Position_2.y * l_GameSettings_0:GetCameraYInvertValue(), l_Position_2.z);
                            return;
                        elseif l_Position_2.magnitude > 0 then
                            v412 = nil;
                            v28.ThumbstickDelta = l_new_1();
                        end;
                    end;
                    return;
                end;
            end;
        end;
    end);
    l_UserInputService_0.InputEnded:Connect(function(v469, _) --[[ Line: 1955 ]]
        -- upvalues: v377 (ref), v378 (ref), v412 (ref), v28 (copy), l_new_1 (copy)
        if v469.UserInputType == Enum.UserInputType.Touch then
            v377 = nil;
            v378 = nil;
            return;
        else
            if v469.UserInputType == Enum.UserInputType.Gamepad1 and v469.KeyCode == Enum.KeyCode.Thumbstick2 then
                v412 = nil;
                v28.ThumbstickDelta = l_new_1();
            end;
            return;
        end;
    end);
    local l_Value_8 = l_Options_0:WaitForChild("Gameplay"):WaitForChild("ToggleLean").Value;
    local l_l_Value_8_0 = l_Value_8 --[[ copy: 143 -> 187 ]];
    l_UserInputService_0.InputBegan:Connect(function(v473, v474) --[[ Line: 1972 ]]
        -- upvalues: l_l_UserInputService_0_GamepadConnected_0 (ref), l_Keybinds_0 (copy), v30 (copy), l_l_Value_8_0 (copy), v17 (ref), v28 (copy)
        if v474 and v473.KeyCode ~= Enum.KeyCode.ButtonR3 then
            return;
        else
            local v475 = not l_l_UserInputService_0_GamepadConnected_0 or IsKeyDown(l_Keybinds_0.AimKeys) or v30.Current and v30.Current.aiming;
            if MatchKeys(v473, l_Keybinds_0.LeanRightKeys) and v475 then
                if not l_l_Value_8_0 and CheckIfCanLean() then
                    v17 = -1;
                    v28:Lean(-0.65);
                elseif l_l_Value_8_0 then
                    if v17 == -1 then
                        v17 = 0;
                        v28:Lean(0);
                    else
                        v17 = -1;
                        v28:Lean(-0.65);
                    end;
                end;
            end;
            if MatchKeys(v473, l_Keybinds_0.LeanLeftKeys) and v475 then
                if not l_l_Value_8_0 and CheckIfCanLean() then
                    v17 = 1;
                    v28:Lean(0.65);
                    return;
                elseif l_l_Value_8_0 then
                    if v17 == 1 then
                        v17 = 0;
                        v28:Lean(0);
                        return;
                    else
                        v17 = 1;
                        v28:Lean(0.65);
                    end;
                end;
            end;
            return;
        end;
    end);
    if not l_Value_8 then
        l_UserInputService_0.InputEnded:Connect(function(v476) --[[ Line: 2011 ]]
            -- upvalues: l_Keybinds_0 (copy), v28 (copy)
            if MatchKeys(v476, l_Keybinds_0.LeanRightKeys) then
                v28:Lean(0);
            end;
            if MatchKeys(v476, l_Keybinds_0.LeanLeftKeys) then
                v28:Lean(0);
            end;
        end);
    end;
    l_GameSettings_0.Changed:Connect(function(v477) --[[ Line: 2023 ]] --[[ Name: onGameSettingChanged ]]
        -- upvalues: l_GameSettings_0 (copy), v28 (copy)
        local l_status_1, l_result_1 = pcall(function() --[[ Line: 2026 ]]
            -- upvalues: l_GameSettings_0 (ref), v477 (copy)
            return l_GameSettings_0[v477];
        end);
        v28.YInvertValue = UserSettings().GameSettings:GetCameraYInvertValue();
        if l_status_1 then
            print("Your " .. v477 .. " has changed to: " .. tostring(l_result_1));
            if v477 == "MouseSensitivity" then
                v28.DefaultXSensitivity = 1;
                v28.DefaultYSensitivity = 1;
                v28:ResetSensitivity();
            end;
        end;
    end);
    local l_GameStarted_1 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted");
    local l_l_GameStarted_1_0 = l_GameStarted_1 --[[ copy: 145 -> 188 ]];
    HStep = function(_) --[[ Line: 2050 ]] --[[ Name: HStep ]]
        -- upvalues: v14 (ref), l_l_GameStarted_1_0 (copy), v28 (copy), l_Humanoid_0 (ref), l_CurrentCamera_0 (copy), l_UserInputService_0 (copy), v94 (ref), v24 (ref), l_LocalPlayer_0 (copy)
        if v14 or l_l_GameStarted_1_0.Value == false then
            return;
        else
            if v28.Mode == "Normal" then
                l_Humanoid_0.AutoRotate = true;
                l_CurrentCamera_0.CameraType = Enum.CameraType.Fixed;
                l_UserInputService_0.MouseBehavior = Enum.MouseBehavior.Default;
                if l_UserInputService_0.MouseIconEnabled ~= true then
                    l_UserInputService_0.MouseIconEnabled = true;
                    print("Enabled Mouse");
                    return;
                end;
            elseif v28.Mode == "Shoulder" then
                l_Humanoid_0.AutoRotate = false;
                if v94.Image ~= "http://www.roblox.com/asset/?id=" then
                    v94.Image = "http://www.roblox.com/asset/?id=";
                    v94.Size = UDim2.new(0, 20, 0, 20);
                    v94.Position = UDim2.new(0.5, -v94.AbsoluteSize.X / 2, 0.5, -v94.AbsoluteSize.Y / 2 - 15);
                end;
                l_CurrentCamera_0.CameraType = Enum.CameraType.Scriptable;
                l_UserInputService_0.MouseBehavior = Enum.MouseBehavior.LockCenter;
                return;
            elseif v28.Mode == "FirstPerson" then
                l_Humanoid_0.AutoRotate = false;
                if v94.Image ~= "rbxassetid://1673060051" then
                    v94.Image = "rbxassetid://1673060051";
                    v94.Size = UDim2.new(0, 40, 0, 40);
                    v94.Position = UDim2.new(0.5, -v94.AbsoluteSize.X / 2, 0.5, -v94.AbsoluteSize.Y / 2 - 15);
                end;
                l_CurrentCamera_0.CameraType = Enum.CameraType.Scriptable;
                l_UserInputService_0.MouseBehavior = v24 and Enum.MouseBehavior.Default or Enum.MouseBehavior.LockCenter;
                return;
            elseif v28.Mode == "Custody" then
                l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
                l_LocalPlayer_0.CameraMode = Enum.CameraMode.Classic;
                l_LocalPlayer_0.CameraMinZoomDistance = 6;
                l_LocalPlayer_0.CameraMaxZoomDistance = 6;
            end;
            return;
        end;
    end;
    v28.GetCameraCollision = function(_, v484) --[[ Line: 2091 ]] --[[ Name: GetCameraCollision ]]
        -- upvalues: l_HumanoidRootPart_0 (ref), v28 (copy), l_Character_0 (ref)
        local v485 = l_HumanoidRootPart_0.CFrame.p + v28.Offset;
        local v486 = v484.p - v485;
        local v487 = Ray.new(v485, v486);
        local l_workspace_PartOnRayWithIgnoreList_1, v489 = workspace:FindPartOnRayWithIgnoreList(v487, {
            l_Character_0
        });
        if l_workspace_PartOnRayWithIgnoreList_1 == nil or l_workspace_PartOnRayWithIgnoreList_1.CanCollide == false or l_workspace_PartOnRayWithIgnoreList_1.Name ~= "Terrain" and l_workspace_PartOnRayWithIgnoreList_1.Locked == true then
            return v484;
        else
            return v484 - v484.p + v489 - v486.Unit * 0.2;
        end;
    end;
    local l_l_BaseSpeed_0_0 = l_BaseSpeed_0 --[[ copy: 112 -> 189 ]];
    v28.ResetFOV = function(_) --[[ Line: 2104 ]] --[[ Name: ResetFOV ]]
        -- upvalues: l_l_BaseSpeed_0_0 (copy), v28 (copy)
        l_l_BaseSpeed_0_0.t = v28.DefaultFOV;
    end;
    v28.SetFOV = function(_, v493) --[[ Line: 2108 ]] --[[ Name: SetFOV ]]
        -- upvalues: l_l_BaseSpeed_0_0 (copy)
        l_l_BaseSpeed_0_0.t = v493;
    end;
    v28.UpdateSensitivity = function(_, v495) --[[ Line: 2114 ]] --[[ Name: UpdateSensitivity ]]
        -- upvalues: v28 (copy)
        local v496 = math.clamp((v495 or 90) / v28.DefaultFOV or 90, 0.1, 1);
        local v497 = v28.DefaultXSensitivity * v496;
        local v498 = v28.DefaultYSensitivity * v496;
        v28:SetSensitivity(v497, v498);
    end;
    v28.LookDelta2 = v28.LookDelta;
    v28.Distance2 = v28.Distance;
    v28.Offset2 = v28.Offset;
    v28.GetShoulderCFrame = function(_) --[[ Line: 2134 ]] --[[ Name: GetShoulderCFrame ]]
        -- upvalues: l_Angles_0 (copy), v28 (copy), l_new_0 (copy)
        return l_Angles_0(0, v28.LookDelta2.X, 0) * l_new_0(v28.Offset2) * l_Angles_0(v28.LookDelta2.y, 0, 0) * l_new_0(0, 0, v28.Distance2);
    end;
    v28.GetFirstPersonCFrame = function(_) --[[ Line: 2138 ]] --[[ Name: GetFirstPersonCFrame ]]
        -- upvalues: l_Angles_0 (copy), v28 (copy)
        return l_Angles_0(0, v28.LookDelta2.X, 0) * l_Angles_0(v28.LookDelta2.y, 0, 0) + Vector3.new(0, 2, 0, 0);
    end;
    local v501 = l_new_0();
    local v502 = l_new_0();
    local v503 = nil;
    local l_rad_1 = math.rad;
    local l_l_rad_1_0 = l_rad_1 --[[ copy: 149 -> 190 ]];
    local function _(v506) --[[ Line: 2151 ]] --[[ Name: clampOrientation ]]
        -- upvalues: l_l_rad_1_0 (copy)
        local v507 = math.deg(v506);
        if v507 >= 180 then
            v507 = -180 - (180 - v507);
        elseif v507 <= 180 then
            v507 = v507 + 180 + 180;
        end;
        return (l_l_rad_1_0(v507));
    end;
    local v509 = RaycastParams.new();
    v509.FilterDescendantsInstances = {
        workspace:FindFirstChild("Map")
    };
    local _ = {
        workspace.Citizens, 
        workspace.Police, 
        workspace.Criminals, 
        workspace.Tracers, 
        workspace.Bodies, 
        workspace.Bags
    };
    v509.FilterType = Enum.RaycastFilterType.Include;
    local _ = false;
    local l_CameraMotion_0 = l_Options_0:WaitForChild("Gameplay"):FindFirstChild("CameraMotion");
    local l_TouchCameraMotion_0 = l_Options_0:WaitForChild("Gameplay"):FindFirstChild("TouchCameraMotion");
    local l_v340_0 = v340 --[[ copy: 113 -> 191 ]];
    local l_v341_1 = v341 --[[ copy: 114 -> 192 ]];
    local l_v342_0 = v342 --[[ copy: 115 -> 193 ]];
    local l_l_CameraMotion_0_0 = l_CameraMotion_0 --[[ copy: 154 -> 194 ]];
    Step = function(v518) --[[ Line: 2178 ]] --[[ Name: Step ]]
        -- upvalues: v14 (ref), l_l_GameStarted_1_0 (copy), v28 (copy), l_new_1 (copy), l_l_UserInputService_0_GamepadConnected_0 (ref), v30 (copy), v24 (ref), l_GameSettings_0 (copy), l_v340_0 (copy), l_CurrentCamera_0 (copy), l_l_BaseSpeed_0_0 (copy), v27 (copy), l_new_0 (copy), l_HumanoidRootPart_0 (ref), l_Angles_0 (copy), l_v341_1 (copy), l_l_rad_1_0 (copy), l_Character_0 (ref), v501 (ref), v60 (ref), v503 (ref), v502 (ref), v412 (ref), l_v217_2 (ref), l_v342_0 (copy), v197 (copy), l_v211_1 (ref), l_UserInputService_0 (copy), l_TouchCameraMotion_0 (copy), l_l_CameraMotion_0_0 (copy)
        if v14 or l_l_GameStarted_1_0.Value == false then
            return;
        else
            local v519 = v518 * 5;
            v28.LookDelta = l_new_1(v28.LookDelta.X, math.clamp(v28.LookDelta.y, v28.LookMin, v28.LookMax), v28.LookDelta.z);
            v28.ThumbstickDelta = l_new_1(v28.ThumbstickDelta.x, math.clamp(v28.ThumbstickDelta.y, v28.LookMin, v28.LookMax), v28.ThumbstickDelta.z);
            if not l_l_UserInputService_0_GamepadConnected_0 then
                v28.LookDelta2 = v28.LookDelta2:Lerp(v28.LookDelta, 1);
            else
                local v520 = 1;
                if v30.Current and v30.Current.aiming and (l_l_UserInputService_0_GamepadConnected_0 or v24) then
                    v520 = 0.5;
                end;
                v520 = l_GameSettings_0.GamepadCameraSensitivity * v520;
                local v521 = v28.ThumbstickDelta * l_new_1(v28.XSensitivity * v520, v28.YSensitivity * v520, 1) * v519;
                v521 = v28.LookDelta2 + v521;
                v521 = l_new_1(v521.X, math.clamp(v521.Y, v28.LookMin, v28.LookMax), v521.Z);
                v28.LookDelta2 = v28.LookDelta2:Lerp(v521, 1);
                v28.SwayDelta = v28.LookDelta2;
            end;
            l_v340_0.t = v28.Distance;
            v28.Distance2 = l_v340_0.p;
            v28.Offset2 = lerp(v28.Offset2, v28.Offset, v518 * 20);
            l_CurrentCamera_0.FieldOfView = l_l_BaseSpeed_0_0.p;
            if v28.Mode == "Normal" then
                return;
            elseif v28.Mode == "Shoulder" then
                v27:SetLocalTransparency(0);
                local v522 = l_new_0(l_HumanoidRootPart_0.CFrame.p) * v28:GetShoulderCFrame();
                l_CurrentCamera_0.CFrame = v28:GetCameraCollision(v522);
                return;
            elseif v28.Mode == "FirstPerson" then
                v27:SetLocalTransparency(1);
                local v523 = false;
                if v30.Equipped and v30.Current then
                    v523 = v30.Current.aiming;
                end;
                if not v27.Sliding then

                end;
                local v524 = l_Angles_0(0, 0, l_l_rad_1_0(l_v341_1.p) * 40) * l_new_0(-l_v341_1.p * 1, math.abs(-l_v341_1.p / 2), 0);
                local v525 = l_new_0(0, v27.Crouching and -1.5, 0);
                if l_Character_0:FindFirstChild("Health") and l_Character_0:FindFirstChild("Health").Value <= 0 then
                    v525 = l_new_0(0, -2.5, 0);
                end;
                if v27.Sliding then
                    v525 = l_new_0(0, -2.5, 1);
                end;
                v501 = v501:lerp(v525, 1 - math.exp(-30 * v518));
                local v526 = nil;
                local v527 = l_new_0();
                if v60 then
                    local l_Torso_0 = v60:FindFirstChild("Torso");
                    l_Torso_0 = l_Torso_0 and l_Torso_0:FindFirstChild("Neck");
                    local l_Focus_0 = v60:FindFirstChild("Focus");
                    if l_Focus_0 then
                        local _ = l_Focus_0.Value;
                    end;
                    if v503 then
                        v503:Destroy();
                        v503 = nil;
                    end;
                    if l_Torso_0 then
                        v527 = v527 * l_Torso_0.Transform:Inverse();
                    end;
                elseif v30.Current and v30.Current.ViewModel then
                    local l_HumanoidRootPart_1 = v30.Current.ViewModel:FindFirstChild("HumanoidRootPart");
                    l_HumanoidRootPart_1 = l_HumanoidRootPart_1 and l_HumanoidRootPart_1:FindFirstChild("CameraBone");
                    if l_HumanoidRootPart_1 then
                        v502 = v502:Lerp(l_HumanoidRootPart_1.Transform, 1);
                    end;
                else
                    v526 = if v412 then v412:GetPivot() else nil;
                    if v503 then
                        v503:Destroy();
                        v503 = nil;
                    end;
                    l_v217_2 = true;
                    l_v342_0.t = 0;
                    l_v342_0.s = 6;
                    v502 = v502:Lerp(l_new_0(), 0.3);
                end;
                local v532 = l_new_0((l_HumanoidRootPart_0.CFrame * v501).p) * v28:GetFirstPersonCFrame();
                local v533 = l_new_1(v532:ToOrientation());
                v28.LookDelta = l_new_1(v533.Y, v533.X, 0);
                local v534 = v532 * v502 * l_Angles_0(l_l_rad_1_0(v197.p.Y), l_l_rad_1_0(v197.p.X), 0) * v502;
                local _ = v534 * v524;
                v534 = v534 * v524 * l_v211_1;
                local v536 = Vector3.new(v534:ToOrientation());
                local v537 = math.clamp(v536.X, v28.LookMin, v28.LookMax);
                v534 = CFrame.new(v534.Position) * CFrame.fromOrientation(v537, v536.Y, v536.Z);
                local v538 = v30.Current and v30.Current.aim or 0;
                local v539 = v30.calculateBreath(v538);
                local v540 = v30.calculateBob((1 - v538 * 0.9) * 0.3, (1 - v538 * 0.9) * 0.3, (math.max(v538, 0.7)));
                local v541 = l_UserInputService_0:GetLastInputType() == Enum.UserInputType.Touch and l_TouchCameraMotion_0 or l_l_CameraMotion_0_0;
                if v541 and v541.Value >= 2 then
                    v534 = v534 * v539 * v540;
                end;
                l_CurrentCamera_0.CFrame = v534;
                local v542 = Vector3.new(math.deg(v28.LookDelta.Y), math.deg(v28.LookDelta.X), (math.deg(v28.LookDelta.Z)));
                if not v526 then

                end;
                local _ = l_Character_0.PrimaryPart;
                l_CurrentCamera_0:SetAttribute("LookDelta", v542);
                l_CurrentCamera_0:SetAttribute("Orientation", l_CurrentCamera_0.CFrame);
                return;
            else
                if v28.Mode == "Custody" then
                    l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
                end;
                return;
            end;
        end;
    end;
    table.insert(v104, HStep);
    table.insert(v105, Step);
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted").Changed:connect(function(v544) --[[ Line: 2441 ]]
        -- upvalues: v28 (copy), l_new_1 (copy)
        if v544 then
            v28.Mode = "FirstPerson";
            local l_SpawnLocation_0 = workspace:FindFirstChild("SpawnLocation");
            if l_SpawnLocation_0 then
                local l_Y_0 = l_SpawnLocation_0.Orientation.Y;
                v28.LookDelta = l_new_1() + Vector3.new(math.rad(l_Y_0), 0, 0);
                return;
            end;
        else
            v28.Mode = "Normal";
        end;
    end);
    if game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted").Value then
        v28.Mode = "FirstPerson";
    else
        v28.Mode = "Normal";
    end;
    l_Character_0:WaitForChild("Crouching").Changed:connect(function(v547) --[[ Line: 2458 ]]
        -- upvalues: l_Character_0 (ref), v27 (copy)
        local l_Value_10 = l_Character_0:WaitForChild("BagSpeed").Value;
        v27.Crouching = v547;
        local l_Sprinting_0 = v27.Sprinting;
        l_Character_0:SetAttribute("Stance", v547 and "Crouch" or "Stand");
        if v547 and l_Sprinting_0 and not v27.Sliding and not v27.SlidingCooldown then
            v27:SetSlide(true);
        elseif v547 then
            v27:SetSprint(false);
        end;
        v27:ResetWalkSpeed();
        if v547 then
            v27:SetWalkSpeed((v27.DefaultWalkSpeed - v27.CrouchSpeed) * l_Value_10);
        end;
    end);
    repeat
        task.wait();
    until l_Character_0:FindFirstChild("BagSpeed");
    l_Character_0:WaitForChild("BagSpeed").Changed:connect(function(v550) --[[ Line: 2480 ]]
        -- upvalues: v27 (copy)
        v27:SetWalkSpeed(((v27.Sprinting and v27.RunSpeed or v27.DefaultWalkSpeed) - (v27.Crouching and v27.CrouchSpeed or 0)) * v550);
    end);
    local l_SecCamScreen_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("SecCamScreen");
    local l_Custody_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Custody");
    local l_frame_heistResults_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_heistResults");
    local l_l_Custody_0_0 = l_Custody_0 --[[ copy: 157 -> 195 ]];
    l_SecCamScreen_0:GetPropertyChangedSignal("Visible"):connect(function() --[[ Line: 2486 ]]
        -- upvalues: l_SecCamScreen_0 (copy), v28 (copy), l_l_Custody_0_0 (copy)
        if l_SecCamScreen_0.Visible then
            v28.Mode = "Normal";
            return;
        else
            if not l_l_Custody_0_0.Visible then
                v28.Mode = "FirstPerson";
            end;
            return;
        end;
    end);
    local l_l_frame_heistResults_0_0 = l_frame_heistResults_0 --[[ copy: 158 -> 196 ]];
    l_Custody_0:GetPropertyChangedSignal("Visible"):connect(function() --[[ Line: 2493 ]]
        -- upvalues: l_l_frame_heistResults_0_0 (copy), l_l_Custody_0_0 (copy), v28 (copy)
        if l_l_frame_heistResults_0_0.Visible then
            l_l_Custody_0_0.Visible = false;
        end;
        if l_l_Custody_0_0.Visible then
            v28.Mode = "Custody";
            return;
        else
            v28.Mode = "FirstPerson";
            return;
        end;
    end);
    l_frame_heistResults_0:GetPropertyChangedSignal("Visible"):connect(function() --[[ Line: 2503 ]]
        -- upvalues: l_l_frame_heistResults_0_0 (copy), v28 (copy)
        if l_l_frame_heistResults_0_0.Visible then
            v28.Mode = "Normal";
            return;
        else
            if not l_l_frame_heistResults_0_0.Visible then
                v28.Mode = "FirstPerson";
            end;
            return;
        end;
    end);
    l_Character_0:GetAttributeChangedSignal("Emote"):Connect(function() --[[ Line: 2510 ]]
        -- upvalues: l_l_Custody_0_0 (copy), l_l_frame_heistResults_0_0 (copy), l_Character_0 (ref), v28 (copy)
        if l_l_Custody_0_0.Visible or l_l_frame_heistResults_0_0.Visible then
            return;
        elseif l_Character_0:GetAttribute("Emote") then
            v28.Mode = "Shoulder";
            return;
        else
            v28.Mode = "FirstPerson";
            return;
        end;
    end);
end;
v211 = workspace:FindFirstChild("InvisPart__");
if v211 == nil then
    v211 = Instance.new("Part", workspace);
    v211.Name = "InvisPart__";
    v211.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.05000000074505806, 0);
    v211.Anchored = true;
    v211.CanCollide = false;
    v211.Transparency = 1;
end;
v212 = function(v556, v557) --[[ Line: 2535 ]] --[[ Name: roundTo ]]
    return math.floor(v556 / v557 + 0.5) * v557;
end;
v213 = {};
v214 = function(v558, v559, v560, v561, v562, _) --[[ Line: 2543 ]] --[[ Name: showDamage ]]
    -- upvalues: l_Value_0 (copy), v211 (ref), v213 (copy), l_TweenService_0 (copy)
    if l_Value_0 then
        v560 = v560 or Color3.new(1, 1, 1);
        v562 = v562 or Color3.new();
        local _, _ = pcall(function() --[[ Line: 2547 ]]
            -- upvalues: v211 (ref), v213 (ref), v558 (copy), v559 (ref), v561 (copy), v560 (ref), v562 (ref), l_TweenService_0 (ref)
            local v564 = Instance.new("Attachment", v211);
            table.insert(v213, {
                attachment = v564, 
                time = tick()
            });
            if #v213 > 8 then
                local v565 = table.remove(v213, 1);
                if v565.attachment and v565.attachment.Parent then
                    v565.attachment:Destroy();
                end;
            end;
            local v566 = #v213;
            local v567 = (v566 % 3 - 1) * 1.5;
            local v568 = math.floor((v566 - 1) / 3) * 0.8 + 2;
            local v569 = (math.random() - 0.5) * 2;
            v564.WorldPosition = v558.PrimaryPart.Position + Vector3.new(v567, v568, v569);
            local l_BillboardGui_0 = Instance.new("BillboardGui");
            l_BillboardGui_0.Name = "Damage__";
            l_BillboardGui_0.AlwaysOnTop = true;
            local l_TextLabel_0 = Instance.new("TextLabel");
            if v559:sub(#v559) == "0" then
                v559 = v559:sub(0, #v559 - 2);
            end;
            l_TextLabel_0.Text = v561 and "Armor" or v559;
            l_TextLabel_0.TextSize = 34;
            l_TextLabel_0.TextStrokeTransparency = 0.8;
            l_TextLabel_0.TextTransparency = 0.15;
            l_TextLabel_0.BackgroundTransparency = 1;
            l_TextLabel_0.TextColor3 = v560;
            if v561 then
                l_TextLabel_0.TextColor3 = Color3.new(v560.r / 2, v560.g / 2, v560.b / 2);
            end;
            l_TextLabel_0.TextStrokeColor3 = v562;
            l_TextLabel_0.Size = UDim2.new(1, 0, 1, 0);
            l_TextLabel_0.FontFace = Font.fromId(12187370747);
            l_TextLabel_0.Position = UDim2.new(0, 0, 0, 0);
            l_BillboardGui_0.Adornee = v564;
            l_BillboardGui_0.ClipsDescendants = false;
            l_BillboardGui_0.LightInfluence = 0;
            l_TextLabel_0.Parent = l_BillboardGui_0;
            l_BillboardGui_0.Size = UDim2.new(0, 200, 0, 50);
            l_BillboardGui_0.Parent = v564;
            local v572 = l_TweenService_0:Create(l_BillboardGui_0, TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                StudsOffset = Vector3.new(0, 2, 0, 0)
            });
            if v561 then
                local v573 = l_TweenService_0:Create(l_TextLabel_0, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    TextTransparency = 1, 
                    TextStrokeTransparency = 1
                });
                local v574 = l_TweenService_0:Create(l_TextLabel_0, TweenInfo.new(0.1, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut, 20, true), {
                    Rotation = 15
                });
                v573:Play();
                v574:Play();
            else
                l_TweenService_0:Create(l_TextLabel_0, TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    TextTransparency = 1, 
                    TextStrokeTransparency = 1
                }):Play();
            end;
            v572:Play();
            v572.Completed:Connect(function() --[[ Line: 2607 ]]
                -- upvalues: l_BillboardGui_0 (copy), v213 (ref), v564 (copy)
                l_BillboardGui_0:Destroy();
                for v575, v576 in ipairs(v213) do
                    if v576.attachment == v564 then
                        table.remove(v213, v575);
                        break;
                    end;
                end;
                v564:Destroy();
            end);
        end);
    end;
end;
v215 = {};
v217 = Instance.new("Part", l_CurrentCamera_0);
v217.Name = "BulletHandler";
v217.Anchored = true;
v217.CanCollide = false;
v217.Transparency = 1;
v217.Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.10000000149011612, 0);
l_BaseSpeed_0 = l_Assets_0.Bullets.Trails;
local l_Bullet_0 = l_Remotes_0.Bullet;
local l_Debris_0 = l_Assets_0.Bullets.Debris;
local l_Parts_0 = l_Assets_0.Bullets.Parts;
local l_HitObject_0 = l_Remotes_0.HitObject;
local v583 = {
    1388469605, 
    1388469948, 
    1388470144, 
    1388470530, 
    1388470789
};
FindHumanoid = function(v584) --[[ Line: 2709 ]] --[[ Name: FindHumanoid ]]
    local l_Parent_0 = v584.Parent;
    if l_Parent_0 then
        local l_Humanoid_1 = l_Parent_0:FindFirstChildOfClass("Humanoid");
        if l_Humanoid_1 then
            return l_Humanoid_1;
        else
            l_Parent_0 = l_Parent_0.Parent;
        end;
    end;
    if l_Parent_0 then
        local l_Humanoid_2 = l_Parent_0:FindFirstChildOfClass("Humanoid");
        if l_Humanoid_2 then
            return l_Humanoid_2;
        else
            l_Parent_0 = l_Parent_0.Parent;
        end;
    end;
    if l_Parent_0 then
        local l_Humanoid_3 = l_Parent_0:FindFirstChildOfClass("Humanoid");
        if l_Humanoid_3 then
            return l_Humanoid_3;
        else
            l_Parent_0 = l_Parent_0.Parent;
        end;
    end;
end;
CollisionCFrame = function(v589, v590, v591) --[[ Line: 2723 ]] --[[ Name: CollisionCFrame ]]
    -- upvalues: l_asin_0 (copy), l_new_0 (copy), l_new_1 (copy)
    local v592 = v590 + Vector3.new(0, 0.10000000149011612, 0, 0);
    local v593 = Ray.new(v592, (Vector3.new(0, -1, 0, 0)));
    local _, _, v596 = workspace:FindPartOnRayWithIgnoreList(v593, v591);
    local v597 = Vector3.new(0, 1, 0, 0):Cross(v596);
    local v598 = l_asin_0(v597.magnitude);
    v589.CFrame = l_new_0(v590 + v596 * v589.Size.y / 2) * CFrame.fromAxisAngle(v597.magnitude == 0 and l_new_1(1) or v597.unit, v598);
end;
local v599 = Instance.new("Part", workspace.CurrentCamera);
v599.Name = "bullets";
v599.Anchored = true;
v599.Transparency = 1;
v599.Size = Vector3.new(0, 0, 0, 0);
local v600 = RaycastParams.new();
v600.FilterType = Enum.RaycastFilterType.Include;
local l_Effects_0 = game.ReplicatedStorage.RS_Package.Assets.Effects;
local v602 = {};
local l_v602_0 = v602 --[[ copy: 121 -> 197 ]];
game:GetService("CollectionService"):GetInstanceAddedSignal("BloodDecal"):Connect(function(_) --[[ Line: 2749 ]]
    -- upvalues: l_Value_3 (copy), l_v602_0 (copy)
    if (l_Value_3 >= 2 and 20 or 10) < #l_v602_0 then
        local v605 = l_v602_0[1];
        if v605 then
            table.remove(l_v602_0, 1);
            v605:Destroy();
        end;
    end;
end);
local l_MaterialReference_0 = require(game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Effects"):WaitForChild("MaterialReference"));
local l_l_MaterialReference_0_0 = l_MaterialReference_0 --[[ copy: 122 -> 198 ]];
local l_l_Effects_0_0 = l_Effects_0 --[[ copy: 120 -> 199 ]];
local function v646(v609, v610, v611, v612, v613, v614, v615, v616, v617, v618, _, v620, v621, v622, v623) --[[ Line: 2765 ]] --[[ Name: hiteffect ]]
    -- upvalues: l_Character_0 (ref), l_l_MaterialReference_0_0 (copy), l_l_Effects_0_0 (copy), l_new_1 (copy), l_new_0 (copy), l_Angles_0 (copy), l_rad_0 (copy), l_Value_2 (copy), l_TweenService_0 (copy), l_DecalService_0 (copy), l_PropDamage_0 (copy)
    local v624 = v621 and v621.BulletType or "bullet";
    if v609 then
        if v624 and v624:match("spraypaint") then
            return;
        else
            if l_Character_0 then
                local _ = v609:IsDescendantOf(l_Character_0);
            end;
            local v626 = v615:match("Explosive");
            local v627 = v621 and v621.FireMode;
            local v628 = if v627 then typeof(v627) == "string" and (v627:match("Saw") or false) else false;
            local v629 = true;
            if v609.Name ~= "Glass" then
                v629 = v609:IsDescendantOf(workspace.Glass);
            end;
            local v630 = v609 and v609.Material;
            v630 = v629 and "Glass" or v630 and (l_l_MaterialReference_0_0[v630.Name] or v630.Name) or v615;
            if not v629 and (v614 or v616) then
                v615 = v616 and "Armor" or v615:match("Flesh") and v615 or "Flesh";
                v630 = v616 and "Armor" or v615:match("Flesh") and v615 or "Flesh";
            else
                v615 = v629 and "Glass" or v609.Material.Name or v615;
            end;
            v617 = v628 and "SawHole" or v617;
            v615 = v609:GetAttribute("HitType") or v615;
            if v615:match("Flesh") and v623 then
                return;
            else
                if not v628 or not v615:match("Flesh") then

                end;
                v617 = (not (not v617 or v629) and l_l_Effects_0_0.Decals.CustomHoles:FindFirstChild(v630) or l_l_Effects_0_0.Decals.Hole):Clone();
                v617.Parent = workspace.Tracers;
                v617.Name = "hole";
                local v631 = v628 and 1 or v629 and 1 or v615:match("Flesh") and 0.5 or 0.2;
                v617.Size = l_new_1(v631, v631, 0.01);
                v618 = "Front";
                v617.CFrame = l_new_0(v610, v610 + v611);
                if v628 then
                    v617.CFrame = v617.CFrame * l_Angles_0(0, 0, l_rad_0((math.random(0, 360))), 0, 0);
                end;
                local l_FirstChild_0 = l_l_Effects_0_0.Decals.HoleDecals:FindFirstChild(if v614 then _G.BloodEnabled > 0 and "Flesh" or "FleshFriendly" else v629 and "Glass" or v628 and "Saw" or "Hole");
                if not v615:match("Flesh") and not v616 then
                    (l_FirstChild_0 and l_FirstChild_0:Clone()).Parent = v617;
                end;
                v617.Anchored = false;
                local l_WeldConstraint_0 = Instance.new("WeldConstraint");
                l_WeldConstraint_0.Parent = v617;
                l_WeldConstraint_0.Part0 = v609;
                l_WeldConstraint_0.Part1 = v617;
                l_WeldConstraint_0 = v617:FindFirstChild(v615) or v617.Generic;
                if l_Value_2 >= 1 and (not v615:match("Flesh") or _G.BloodEnabled > 0) then
                    if l_WeldConstraint_0 then
                        for _, v635 in pairs(l_WeldConstraint_0:GetChildren()) do
                            if v635:GetAttribute("ChangeColor") then
                                v635.Color = ColorSequence.new(v609.Color);
                            end;
                            v635:Emit(v635.Rate);
                        end;
                    end;
                    if not v615:match("Flesh") and v615 ~= "Glass" then
                        v617.Heat.Transparency = 0;
                        l_TweenService_0:Create(v617.Heat, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0.5), {
                            Transparency = 1
                        }):Play();
                    end;
                end;
                local v636 = l_l_Effects_0_0.Decals.HoleSounds:FindFirstChild(v630) or l_l_Effects_0_0.Decals.HoleSounds:FindFirstChild(v615) or l_l_Effects_0_0.Decals.HoleSounds.Concrete;
                local v637 = v636:GetChildren()[math.random(1, #v636:GetChildren())]:Clone();
                v637.Parent = v617;
                v637.Name = "Sound";
                v637.PlaybackSpeed = math.random(90, 110) / 100;
                v637.RollOffMaxDistance = 100;
                v637.RollOffMinDistance = 10;
                v637.RollOffMode = Enum.RollOffMode.LinearSquare;
                v637.Volume = v637.Volume * 0.5;
                task.delay(0.1, function() --[[ Line: 2922 ]]
                    -- upvalues: v637 (copy)
                    v637:Play();
                end);
                game.Debris:AddItem(v617, 10);
                if v615 == "Flesh" and _G.BloodEnabled >= 2 then
                    local v638 = "Medium";
                    v638 = v613 >= 500 and "Heavy" or v613 >= 100 and "Medium" or "Small";
                    local v639 = (v638:match("Heavy") and 120 or v638:match("Medium") and 110 or 100) + math.random(-20, 20);
                    local v640 = RaycastParams.new();
                    v640.FilterType = Enum.RaycastFilterType.Include;
                    v640:AddToFilter(workspace.Map);
                    local v641 = workspace:Raycast(v610, CFrame.new(v610, v610 + v612 + Vector3.new(0, -0.20000000298023224, 0, 0)).lookVector * 30, v640);
                    if v641 and v641.Instance then
                        local v642 = {
                            DecalGroup = v638, 
                            Scale = v639
                        };
                        local v643 = l_DecalService_0.createSurfaceGui(v641.Instance, v641.Position, v642);
                        if v643 then
                            v643:AddTag("BloodDecal");
                            game.Debris:AddItem(v643, 30);
                        end;
                    end;
                end;
                if v626 and not v614 then
                    v617:Destroy();
                end;
                if v620 == l_Character_0 and (v609:HasTag("Destructable") and v609 or v609.Parent:HasTag("Destructable") and v609.Parent) then
                    local v644 = {
                        Attacker = l_Character_0, 
                        Hit = v609, 
                        Source = v622, 
                        Position = v610, 
                        Normal = v611, 
                        Direction = v612, 
                        Damage = v613, 
                        ClientEffects = {
                            v617, 
                            v637
                        }
                    };
                    local _ = l_PropDamage_0.damageProp(v644);
                end;
            end;
        end;
    end;
end;
l_HitEvent_0.Event:Connect(v646);
l_CreateHitEffect_0.OnClientEvent:Connect(v646);
l_Damage_0.OnClientEvent:Connect(function(v647, v648) --[[ Line: 3013 ]]
    -- upvalues: v214 (copy), v126 (copy)
    if v647 == "CriticalHit" then
        local v649 = Color3.new(1, 0.666667, 0);
        local l_Damage_1 = v648.Damage;
        local l_Hit_0 = v648.Hit;
        if l_Hit_0 then
            v214(l_Hit_0.Parent, "-" .. string.format("%.1f", l_Damage_1), v649, false);
            v126(v649, true, true);
            return;
        end;
    elseif v647 == "Bullseye" then
        v126(Color3.fromRGB(0, 170, 255), true, true);
        return;
    elseif v647 == "ExtraDamage" then
        local v652 = Color3.new(1, 0.65098, 0.25098);
        local l_Damage_2 = v648.Damage;
        local l_Hit_1 = v648.Hit;
        if l_Hit_1 then
            v214(l_Hit_1.Parent, "-" .. string.format("%.1f", l_Damage_2), v652, false);
        end;
    end;
end);
local v655 = {};
local function v664(v656, v657, _, _, _) --[[ Line: 3063 ]] --[[ Name: flinchAnimation ]]
    local l_Animations_0 = v656.Parent:FindFirstChild("Animations");
    local v662 = l_Animations_0 and l_Animations_0:FindFirstChild("Flinch");
    if v662 then
        local l_v662_FirstChild_0 = v662:FindFirstChild(v657.Name .. "Hit");
        if l_v662_FirstChild_0 then
            l_v662_FirstChild_0 = v656:LoadAnimation(l_v662_FirstChild_0);
            l_v662_FirstChild_0.Priority = Enum.AnimationPriority.Action4;
            l_v662_FirstChild_0:Play(0.02, math.random(10, 15) / 100, math.random(90, 110) / 100);
        end;
    end;
end;
local v665 = OverlapParams.new();
v665.FilterDescendantsInstances = {
    workspace:FindFirstChild("InvisibleParts"), 
    workspace:FindFirstChild("Tracers"), 
    workspace:FindFirstChild("Bodies")
};
local l_v217_3 = v217 --[[ copy: 111 -> 200 ]];
local l_l_BaseSpeed_0_1 = l_BaseSpeed_0 --[[ copy: 112 -> 201 ]];
local l_l_Parts_0_0 = l_Parts_0 --[[ copy: 115 -> 202 ]];
local l_v665_0 = v665 --[[ copy: 126 -> 203 ]];
local l_l_HitObject_0_0 = l_HitObject_0 --[[ copy: 116 -> 204 ]];
local l_v664_0 = v664 --[[ copy: 125 -> 205 ]];
local l_v646_0 = v646 --[[ copy: 123 -> 206 ]];
local l_v600_0 = v600 --[[ copy: 119 -> 207 ]];
local l_v215_2 = v215 --[[ copy: 110 -> 208 ]];
v29.new = function(v675) --[[ Line: 3081 ]] --[[ Name: new ]]
    -- upvalues: l_LocalPlayer_0 (copy), l_Character_0 (ref), v30 (copy), l_CurrentCamera_0 (copy), l_v217_3 (copy), l_new_0 (copy), l_l_BaseSpeed_0_1 (copy), l_l_Parts_0_0 (copy), l_ActiveMutators_0 (copy), l_v665_0 (copy), l_l_HitObject_0_0 (copy), l_Remotes_0 (copy), v86 (copy), l_DamageCalculation_0 (copy), v126 (copy), l_v664_0 (copy), v214 (copy), l_Damage_0 (copy), l_v646_0 (copy), l_new_1 (copy), l_v600_0 (copy), l_v215_2 (copy)
    local l_Player_0 = v675.Player;
    local v677 = l_Player_0 == l_LocalPlayer_0;
    local v678 = v675.Character or l_Player_0.Character or l_Character_0;
    local v679 = v675.Model or v30.Current.currentmodel;
    local v680 = v675.Model or v30.Current.tool;
    local v681 = v675.GunData or {};
    local l_StartPosition_0 = v675.StartPosition;
    local l_TargetPosition_0 = v675.TargetPosition;
    local v684 = v675.Direction or (l_TargetPosition_0 - l_StartPosition_0).unit;
    local v685 = v675.Speed or 10;
    local v686 = v675.Damage or 0;
    local v687 = v675.Knockback or v686;
    local v688 = v675.Explosive or v679.Name == "RPG-7";
    local v689 = v688 and "explosion" or v681.Flamethrower and "flamethrower" or v681.DamageType;
    local _ = v675.IsCrit;
    local v691 = v675.Piercing or 0;
    local v692 = v675.Duration or nil;
    local v693 = v675.HitboxInfo or {};
    local l_IsNPC_0 = v675.IsNPC;
    local v695 = false;
    local v696 = {};
    if v692 then
        v692 = os.clock() + v692;
    end;
    local v697 = {
        v678, 
        v679, 
        l_CurrentCamera_0, 
        workspace:FindFirstChild("Bags")
    };
    local v698 = {};
    local v699 = {};
    local _ = v675.Drop or 0;
    if l_Player_0 == l_LocalPlayer_0 then
        local l_Magnitude_1 = (l_StartPosition_0 - l_CurrentCamera_0.CFrame.p).Magnitude;
        l_StartPosition_0 = v685 < 15 and l_StartPosition_0 or l_StartPosition_0 - v684 * l_Magnitude_1;
    end;
    local v702 = v675.BulletType or "tracer";
    local v703 = Instance.new("Attachment", l_v217_3);
    v703.Name = "Attach0";
    v703.CFrame = l_new_0(l_StartPosition_0);
    local v704 = Instance.new("Attachment", l_v217_3);
    v704.Name = "Attach1";
    v704.CFrame = l_new_0(l_StartPosition_0);
    local v705 = (l_l_BaseSpeed_0_1:FindFirstChild(v702) or l_l_BaseSpeed_0_1.invisibleTracer):Clone();
    v705.Parent = l_v217_3;
    v705.Attachment0 = v703;
    v705.Attachment1 = v704;
    local v706 = nil;
    if l_l_Parts_0_0:FindFirstChild(v702) then
        v706 = l_l_Parts_0_0[v702]:Clone();
        v706.Anchored = true;
        v706.CanCollide = false;
        v706.Parent = workspace.Tracers;
    end;
    local v707 = {
        destroyed = false, 
        position = l_StartPosition_0
    };
    v707.oldpos = v707.position;
    v707.destroy = function(v708) --[[ Line: 3149 ]] --[[ Name: destroy ]]
        -- upvalues: v703 (copy), v704 (copy), v705 (ref), v706 (ref)
        v703:Destroy();
        v704:Destroy();
        v705:Destroy();
        if v706 then
            for _, v710 in v706:GetDescendants() do
                if v710:IsA("Trail") then
                    v710.Enabled = false;
                end;
            end;
            v706.CFrame = CFrame.new(-100000, -100000, -10000);
            game.Debris:AddItem(v706, 3);
        end;
        v708.destroyed = true;
    end;
    v707.getHitboxCollision = function() --[[ Line: 3171 ]] --[[ Name: getHitboxCollision ]]
        -- upvalues: v707 (copy), l_ActiveMutators_0 (ref), v693 (copy), l_v665_0 (ref), v678 (copy), v681 (copy)
        local v711 = {};
        local l_position_0 = v707.position;
        local l_FriendlyFire_0 = l_ActiveMutators_0:FindFirstChild("FriendlyFire");
        if v693.Radius then
            v711 = workspace:GetPartBoundsInRadius(l_position_0, v693.Radius, l_v665_0);
        elseif v693.Box then
            v711 = workspace:GetPartBoundsInBox(l_position_0, v693.Box, l_v665_0);
        end;
        if v711 then
            for _, v715 in v711 do
                local l_Humanoid_4 = v715.Parent:FindFirstChildOfClass("Humanoid");
                local v717 = l_Humanoid_4 and l_Humanoid_4.Parent:FindFirstChild("Health");
                if l_Humanoid_4 and v717 and l_Humanoid_4.Parent ~= v678 then
                    local v718 = v715:IsDescendantOf(workspace.Criminals) and "Criminal" or v715:IsDescendantOf(workspace.Police) and "Police" or v715:IsDescendantOf(workspace.Citizens) and "Citizen" or "Unknown";
                    if v718 == "Criminal" and l_FriendlyFire_0 or v718 == "Police" then
                        local l_position_1 = v707.position;
                        local l_Unit_0 = CFrame.new(l_position_1, v715.Position).LookVector.Unit;
                        v707.onhit(v715, l_position_1, l_Unit_0, v707.direction, nil, v681);
                    elseif v718 == "Citizen" then
                        local l_position_2 = v707.position;
                        local l_Unit_1 = CFrame.new(l_position_2, v715.Position).LookVector.Unit;
                        v707.onhit(v715, l_position_2, l_Unit_1, v707.direction, nil, v681);
                    end;
                end;
            end;
        end;
        return false;
    end;
    v707.getcollision = function(v723, v724) --[[ Line: 3215 ]] --[[ Name: getcollision ]]
        -- upvalues: v707 (copy), v678 (copy), v679 (copy), l_CurrentCamera_0 (ref), l_IsNPC_0 (copy), l_ActiveMutators_0 (ref), v691 (ref)
        if not v724 then
            local l_magnitude_0 = (v707.position - v707.oldpos).magnitude;
            v724 = Ray.new(v707.oldpos, (v707.oldpos - v707.position).unit * -l_magnitude_0);
        end;
        local v726 = v723 or {
            v678, 
            v679, 
            l_CurrentCamera_0
        };
        local l_workspace_PartOnRayWithIgnoreList_3, v728, v729 = workspace:FindPartOnRayWithIgnoreList(v724, v726);
        local v730 = l_workspace_PartOnRayWithIgnoreList_3 ~= nil;
        local v731 = l_IsNPC_0 or l_ActiveMutators_0:FindFirstChild("FriendlyFire");
        local v732 = l_workspace_PartOnRayWithIgnoreList_3 and l_workspace_PartOnRayWithIgnoreList_3.Parent and l_workspace_PartOnRayWithIgnoreList_3:IsDescendantOf(workspace.Criminals);
        local l_CollectionService_0 = game:GetService("CollectionService");
        local v734 = l_workspace_PartOnRayWithIgnoreList_3 and l_CollectionService_0:HasTag(l_workspace_PartOnRayWithIgnoreList_3, "Ignore");
        local v735 = v691 >= 1;
        local v736 = l_workspace_PartOnRayWithIgnoreList_3 and l_workspace_PartOnRayWithIgnoreList_3.Parent and (l_workspace_PartOnRayWithIgnoreList_3.Parent.Name == "Invincible" and l_workspace_PartOnRayWithIgnoreList_3.Parent or l_workspace_PartOnRayWithIgnoreList_3.Parent.Parent.Name == "Invincible" and l_workspace_PartOnRayWithIgnoreList_3.Parent.Parent);
        if l_workspace_PartOnRayWithIgnoreList_3 and l_workspace_PartOnRayWithIgnoreList_3.Parent and (v734 or (l_workspace_PartOnRayWithIgnoreList_3.CanCollide == false or l_workspace_PartOnRayWithIgnoreList_3.Transparency == 1 and l_workspace_PartOnRayWithIgnoreList_3.Name ~= "Hitbox" and not l_workspace_PartOnRayWithIgnoreList_3.Name:match("Collision") or v734 or l_workspace_PartOnRayWithIgnoreList_3:IsDescendantOf(workspace.InvisibleParts) or l_workspace_PartOnRayWithIgnoreList_3:IsDescendantOf(workspace.Bodies)) and l_workspace_PartOnRayWithIgnoreList_3.Name ~= "Terrain" and (not l_workspace_PartOnRayWithIgnoreList_3:IsDescendantOf(workspace.Police) and not l_workspace_PartOnRayWithIgnoreList_3:IsDescendantOf(workspace.Citizens) and not v732 or l_workspace_PartOnRayWithIgnoreList_3.Parent:IsA("Tool")) and not l_workspace_PartOnRayWithIgnoreList_3.Parent:FindFirstChild("DoorModule") and not l_workspace_PartOnRayWithIgnoreList_3.Parent:FindFirstChild("SWATHealth") and not l_workspace_PartOnRayWithIgnoreList_3.Parent:HasTag("CanBeHit")) then
            table.insert(v726, l_workspace_PartOnRayWithIgnoreList_3);
            return v707.getcollision(v726, v724);
        elseif v736 and v735 then
            table.insert(v726, l_workspace_PartOnRayWithIgnoreList_3);
            return v707.getcollision(v726, v724);
        elseif v736 and not v735 then
            return l_workspace_PartOnRayWithIgnoreList_3, v728, v729, v730;
        elseif v732 and not v731 then
            table.insert(v726, l_workspace_PartOnRayWithIgnoreList_3);
            return v707.getcollision(v726, v724);
        elseif l_IsNPC_0 and l_workspace_PartOnRayWithIgnoreList_3 and l_workspace_PartOnRayWithIgnoreList_3:IsDescendantOf(workspace.Police) then
            table.insert(v726, l_workspace_PartOnRayWithIgnoreList_3.Parent);
            return v707.getcollision(v726, v724);
        else
            if l_workspace_PartOnRayWithIgnoreList_3 and l_workspace_PartOnRayWithIgnoreList_3.Parent and l_workspace_PartOnRayWithIgnoreList_3.Parent:FindFirstChild("Humanoid") then
                table.insert(v726, l_workspace_PartOnRayWithIgnoreList_3.Parent);
            end;
            return l_workspace_PartOnRayWithIgnoreList_3, v728, v729, v730;
        end;
    end;
    if v675.BackBlast then
        l_l_HitObject_0_0:FireServer(v680, v678.PrimaryPart, false, v688 and v675.BackBlast[1] or nil, (CFrame.new(l_StartPosition_0, l_TargetPosition_0) * CFrame.new(0, 0, 3)).Position, nil, v675.BackBlast[1], "backblast");
    end;
    v707.onhit = function(v737, v738, v739, v740, _) --[[ Line: 3290 ]] --[[ Name: onhit ]]
        -- upvalues: v688 (copy), v677 (copy), l_Remotes_0 (ref), v679 (copy), l_LocalPlayer_0 (ref), v698 (copy), v702 (copy), l_Player_0 (copy), v86 (ref), l_ActiveMutators_0 (ref), v675 (copy), l_DamageCalculation_0 (ref), v680 (copy), v696 (copy), v699 (copy), v126 (ref), l_v664_0 (ref), v687 (copy), v214 (ref), l_Damage_0 (ref), v707 (copy), v695 (ref), l_l_HitObject_0_0 (ref), v686 (copy), v689 (copy), v681 (copy), l_v646_0 (ref), v678 (copy), l_IsNPC_0 (copy)
        if v688 and v677 then
            l_Remotes_0.Bullet:FireServer({
                Model = v679, 
                Character = l_LocalPlayer_0.Character, 
                Explosive = true
            }, v738);
        end;
        if not v737 or not v738 then
            return;
        else
            local v742 = v737 and FindHumanoid(v737);
            local v743 = v742 and v742.Parent:FindFirstChild("Health");
            if v742 and v698[v742] then
                return;
            elseif v742 and not v743 then
                return;
            else
                local l_v702_0 = v702;
                local v745 = "Generic";
                local v746 = false;
                local v747 = v737:HasTag("Invincible");
                local v748 = v742 and true or false;
                if v677 and v747 then
                    v748 = false;
                end;
                if v742 and not v698[v742] and v748 and not v742:IsDescendantOf(workspace.Citizens) and not v742.Parent:HasTag("CanBeHit") and not v688 then
                    if l_Player_0 == l_LocalPlayer_0 then
                        local v749 = false;
                        local v750 = false;
                        local v751 = false;
                        local v752 = false;
                        local v753 = false;
                        local _ = v86("T", "L");
                        local v755 = 0;
                        local v756 = Color3.new(1, 1, 1);
                        local v757 = Color3.new();
                        local _ = l_ActiveMutators_0:FindFirstChild("FriendlyFire");
                        local v759 = v742 and v742.Parent:FindFirstChild("Type");
                        local v760 = v759 and (v759.Value:match("Jugg") or v759.Value:match("SkullDozer")) and (v737.Parent.Name == "Visor" or v737.Parent.Name == "Faceplate");
                        if v737 and v737.Parent and v737.Parent:IsA("Accoutrement") and not v760 and v675.IgnoreArmor and v737.Parent:FindFirstChild("Protects") and v742.Parent:FindFirstChild(v737.Parent:FindFirstChild("Protects").Value) then
                            v749 = true;
                            v737 = v742.Parent:FindFirstChild(v737.Parent:FindFirstChild("Protects").Value);
                        end;
                        local v761, v762, v763, v764, v765, v766 = l_DamageCalculation_0.calculate(l_LocalPlayer_0, v742, v755, v737, v680, v740, v696);
                        v748 = v761;
                        v751 = v762;
                        v755 = v763;
                        v746 = v764;
                        v752 = v765;
                        v753 = v766;
                        if v746 then
                            v699[v742] = true;
                        else
                            v698[v742] = true;
                        end;
                        if v751 and v748 then
                            v756 = Color3.new(1, 0, 0);
                        end;
                        if not v748 then
                            v757 = Color3.new(0.3, 0.3, 0.3);
                        end;
                        if v752 then
                            v757 = Color3.fromRGB(255, 170, 0);
                            v756 = Color3.fromRGB(0, 255, 0);
                        end;
                        if v748 then
                            v126(v756, true);
                            l_v664_0(v742, v737, v738, v739, v755);
                            v750 = true;
                        end;
                        v761 = v740 * v687;
                        v214(v742.Parent, "-" .. string.format("%.1f", v755), v756, not v748);
                        l_Damage_0:FireServer("Damage", v680, v742, v755, v737, v679.Name, Vector3.new(v761.X, v761.Y + v740.Y, v761.Z), v696);
                        if v746 then
                            if not v753 then
                                table.insert(v696, {
                                    "Armor", 
                                    v746
                                });
                            else
                                v707:destroy();
                                v695 = true;
                            end;
                        end;
                        if v750 then
                            table.insert(v696, {
                                "Enemy", 
                                v742
                            });
                        end;
                    end;
                elseif l_Player_0 == l_LocalPlayer_0 then
                    local v767 = v740 * v687;
                    l_l_HitObject_0_0:FireServer(v680, v737, false, v688 and v686 or nil, v688 and v738 or nil, Vector3.new(v767.X, v767.Y + v740.Y, v767.Z), v686, v689, v738);
                end;
                if not v681.Flamethrower then
                    local v768 = v688 and "Explosive" .. v745 or v745;
                    l_v646_0(v737, v738, v739, v740, v686, v748, v768, v746, l_v702_0, "Front", nil, v678, v675, true, l_IsNPC_0);
                end;
                if v688 then
                    v707:destroy();
                end;
                return;
            end;
        end;
    end;
    v707.step = function(v769) --[[ Line: 3451 ]] --[[ Name: step ]]
        -- upvalues: v692 (ref), v707 (copy), v685 (copy), v675 (copy), v684 (ref), l_new_1 (ref), v697 (copy), l_StartPosition_0 (ref), v693 (copy), v703 (copy), l_new_0 (ref), v704 (copy), v706 (ref), v86 (ref), v691 (ref), l_v600_0 (ref), v681 (copy), v695 (ref)
        if v692 and os.clock() >= v692 then
            v707:destroy();
        end;
        local v770 = 1 * v685;
        local v771 = -(v675.Drop or 0);
        v684 = v684 + Vector3.new(0, v771 * v769, 0);
        local v772 = v707.position + l_new_1(v684.x * (v769 * v770), v684.y * (v769 * v770), v684.z * (v769 * v770)) * v685;
        local l_position_3 = v707.position;
        local l_oldpos_0 = v707.oldpos;
        v707.oldpos = l_position_3;
        v707.position = v772;
        v707.direction = v684;
        local v775, v776, v777, v778 = v707.getcollision(v697);
        local l_magnitude_1 = (v707.position - l_StartPosition_0).magnitude;
        if v693.Box or v693.Radius then
            local _ = v707.getHitboxCollision();
            local _ = (v707.position - l_StartPosition_0).magnitude;
        end;
        if not v778 and l_magnitude_1 <= 1000 then
            v703.CFrame = l_new_0(v772);
            v704.CFrame = l_new_0(v772) * l_new_0(0, -0.2, 0) * l_new_0(0, 0, 0);
            if v706 then
                v706.CFrame = l_new_0(v772 - v684 * 0.5, v772 + v684);
                return;
            end;
        elseif v778 and l_magnitude_1 <= 1000 then
            local v782 = v775:IsDescendantOf(workspace.Police);
            local v783 = v86("T", "L");
            local v784 = v782 and v783;
            local v785 = v691 >= 1;
            local v786 = v775.Parent.Name == "Invincible" and v775.Parent or v775.Parent.Parent.Name == "Invincible" and v775.Parent.Parent;
            if (v786 and v785 or not v786) and not v775:IsDescendantOf(workspace.Glass) and not v775:HasTag("Glass") and not v775:HasTag("PassThrough") and not v784 then
                if v691 > 0 then
                    local v787 = l_new_0(v776 + v684 * v691, v776 + v684 * (v691 + 0.5));
                    local v788 = (v776 - v787.Position).Unit * v691;
                    l_v600_0.FilterDescendantsInstances = {};
                    l_v600_0:AddToFilter(v775);
                    local v789 = workspace:Raycast(v787.Position, v788, l_v600_0);
                    if v789 then
                        local l_onhit_0 = v707.onhit;
                        local l_Instance_0 = v789.Instance;
                        local l_Position_3 = v789.Position;
                        local l_Normal_0 = v789.Normal;
                        local l_v684_0 = v684;
                        local v795 = false;
                        if v691 > 0 then
                            v795 = v776;
                        end;
                        l_onhit_0(l_Instance_0, l_Position_3, l_Normal_0, l_v684_0, v795, v681);
                        l_onhit_0 = (v789.Position - v776).Magnitude;
                        v691 = math.max(0, v691 - l_onhit_0);
                        if v691 > 0 then
                            v772 = l_new_0(v776 + v684 * l_onhit_0, v776 + v684 * l_onhit_0);
                            v703.CFrame = l_new_0(v772.Position);
                            v704.CFrame = l_new_0(v772.Position) * l_new_0(0, -0.2, 0) * l_new_0(0, 0, 0);
                            if v706 then
                                v706.CFrame = v772;
                            end;
                            v707.position = v772.Position;
                        end;
                    else
                        v691 = 0;
                    end;
                else
                    v707:destroy();
                end;
            else
                table.insert(v697, v775);
                v707.oldpos = l_oldpos_0;
                v707.position = l_position_3;
                v703.CFrame = l_new_0(v772);
                v704.CFrame = l_new_0(v772) * l_new_0(0, -0.2, 0) * l_new_0(0, 0, 0);
                if v706 then
                    v706.CFrame = l_new_0(v772 - v684 * 0.5, nil, v772 + v684);
                end;
            end;
            if not v695 then
                v707.onhit(v775, v776, v777, v684, v681);
            end;
            if v786 then
                v707:destroy();
                return;
            end;
        else
            v707:destroy();
        end;
    end;
    table.insert(l_v215_2, v707);
end;
Step = function(v796) --[[ Line: 3580 ]] --[[ Name: Step ]]
    -- upvalues: l_v215_2 (copy)
    for v797, v798 in pairs(l_v215_2) do
        if v798 and not v798.destroyed then
            v798.step(v796);
        else
            table.remove(l_v215_2, v797);
        end;
    end;
end;
table.insert(v105, Step);
v30.List = {};
v30.Current = nil;
v30.Equipped = false;
v215 = function() --[[ Line: 3602 ]] --[[ Name: CheckIfSprinting ]]
    -- upvalues: l_l_UserInputService_0_GamepadConnected_0 (ref), l_Keybinds_0 (copy), v30 (copy), v137 (copy), v27 (copy)
    local v799 = not l_l_UserInputService_0_GamepadConnected_0 or IsKeyDown(l_Keybinds_0.AimKeys) or v30.Current and v30.Current.aiming;
    for v800, v801 in pairs(v137) do
        if v800 and v801 and MatchKeys(v801, l_Keybinds_0.SprintKeys) and v799 then
            v27:SetSprint(true);
        end;
    end;
end;
v217 = l_new_1();
do
    local l_v217_4, l_l_BaseSpeed_0_2, l_l_Bullet_0_0 = v217, l_BaseSpeed_0, l_Bullet_0;
    l_UserInputService_0.InputChanged:Connect(function(v805, _) --[[ Line: 3618 ]]
        -- upvalues: l_v217_4 (ref), v28 (copy), l_new_1 (copy)
        if v805.UserInputType == Enum.UserInputType.MouseMovement or v805.UserInputType == Enum.UserInputType.Touch then
            l_v217_4 = l_new_1(v805.Delta.x * v28.XSensitivity, v805.Delta.y * v28.YSensitivity, v805.Delta.z);
        end;
        if v805.UserInputType == Enum.UserInputType.Gamepad1 and v805.KeyCode == Enum.KeyCode.Thumbstick2 then
            l_v217_4 = l_new_1(v805.Delta.x * v28.XSensitivity, v805.Delta.y * v28.YSensitivity, v805.Delta.z);
        end;
    end);
    l_l_BaseSpeed_0_2 = l_new_0();
    l_l_Bullet_0_0 = l_new_0();
    l_Debris_0 = function(v807) --[[ Line: 3639 ]] --[[ Name: loadData ]]
        -- upvalues: v0 (copy)
        v807 = v0 and v807:Clone() or v807;
        local v808 = require(v807);
        if v0 then
            v807:Destroy();
        end;
        return v808;
    end;
    l_Parts_0 = RaycastParams.new();
    l_Parts_0.FilterDescendantsInstances = {
        workspace:FindFirstChild("Glass"), 
        workspace.CurrentCamera, 
        workspace:FindFirstChild("InvisibleParts"), 
        workspace:FindFirstChild("MapZones"), 
        workspace:FindFirstChild("Nodes"), 
        workspace:FindFirstChild("Tracers"), 
        workspace:FindFirstChild("PoliceObjectives"), 
        workspace:FindFirstChild("NonPoliceObjectives")
    };
    v30.calculateBob = function(v809, v810, v811) --[[ Line: 3668 ]] --[[ Name: calculateBob ]]
        -- upvalues: v27 (copy), l_Humanoid_0 (ref), l_sin_0 (copy), l_new_1 (copy), l_new_0 (copy), l_Angles_0 (copy)
        local v812 = v27.Distance * 6.283185307179586 * 3 / 6;
        local v813 = v27.Velocity / 1.8;
        local l_Speed_0 = v27.Speed;
        local v815 = l_Speed_0 / l_Humanoid_0.WalkSpeed;
        if v27.Sliding then
            l_Speed_0 = 1;
            v815 = 1;
            v813 = Vector3.new(1, 0, 1, 0);
        end;
        local v816 = l_new_1(v810 * l_sin_0(v812 / 4 + 0.5) / 200 / 2.5, v810 * l_sin_0(v812 / 8 - 0.5) / 200 / 1.5, -v813.x / 4000) * l_Speed_0 / 25 * 6.283185307179586;
        local v817 = l_new_1(v809 * (-v813.x / 4000), v809 * (v813.x / 4000) * 4, 0);
        local v818 = l_new_1(v810 * l_sin_0(v812 / 4 + 0.5) / 200 / 2, v810 * l_sin_0(v812 / 8 - 0.5) / 200 / 1, -v813.x / 1000) * l_Speed_0 / 25 * 6.283185307179586;
        local v819 = l_new_1(v809 * (-v813.x / 1000) * 0.7, v809 * (v813.x / 1000) * 0.7, 0);
        local v820 = (1 - v815) * v816 + v815 * v818;
        local v821 = (1 - v815) * v817 + v815 * v819;
        if v811 then
            v820 = v820:Lerp(Vector3.new(0, 0, 0, 0), v811);
        end;
        return l_new_0(v821) * l_Angles_0(v820.x, v820.y, v820.z);
    end;
    v30.calculateBreath = function(v822) --[[ Line: 3717 ]] --[[ Name: calculateBreath ]]
        local v823 = os.clock() * 6;
        local v824 = 2 * (1 - v822);
        return CFrame.new(math.cos(v823 / 8) * v824 / 128, -math.sin(v823 / 4) * v824 / 128, math.sin(v823 / 16) * v824 / 64);
    end;
    local l_v215_3 = v215 --[[ copy: 110 -> 209 ]];
    v30.new = function(v826) --[[ Line: 3721 ]] --[[ Name: new ]]
        -- upvalues: v0 (copy), v30 (copy), l_Humanoid_0 (ref), v25 (copy), l_new_1 (copy), l_l_BaseSpeed_0_2 (ref), l_l_Bullet_0_0 (ref), l_Angles_0 (copy), v42 (ref), l_AkimboMode_0 (copy), l_PlayerGui_0 (ref), v24 (ref), l_l_LocalPlayer_0_Mouse_0 (copy), l_RS_Package_0 (copy), v41 (ref), l_Character_0 (ref), v28 (copy), l_Remotes_0 (copy), l_LocalPlayer_0 (copy), v94 (ref), v27 (copy), v129 (copy), l_v215_3 (copy), v23 (ref), v43 (ref), v86 (copy), l_Options_0 (copy), l_Head_0 (ref), l_CurrentCamera_0 (copy), v17 (ref), l_status_0 (ref), l_result_0 (ref), v196 (copy), v197 (copy), v29 (copy), l_DamageCalculation_0 (copy), v126 (copy), v214 (copy), l_Damage_0 (copy), l_HitEvent_0 (copy), l_Value_2 (copy), l_TweenService_0 (copy), l_Assets_0 (copy), l_new_0 (copy), l_Keybinds_0 (copy), v44 (ref), l_ActiveMutators_0 (copy), l_acos_0 (copy), l_PropDamage_0 (copy), l_HumanoidRootPart_0 (ref), v59 (copy), l_HeartWatch_0 (copy), v12 (ref), l_CharInfo_0 (copy), v18 (ref), v95 (copy), l_GunInfo_0 (copy), v26 (copy), l_RunService_0 (copy), v10 (copy), l_Parts_0 (copy), l_l_UserInputService_0_GamepadConnected_0 (ref), l_v217_4 (ref), v137 (copy)
        print("LOADING " .. v826.Name);
        local l_Data_0 = v826:WaitForChild("Data");
        if not l_Data_0 then
            print("NO DATA");
            return;
        else
            local l_l_Data_0_0 = l_Data_0;
            l_l_Data_0_0 = v0 and l_l_Data_0_0:Clone() or l_l_Data_0_0;
            local v829 = require(l_l_Data_0_0);
            if v0 then
                l_l_Data_0_0:Destroy();
            end;
            local l_v829_0 = v829;
            l_l_Data_0_0 = {
                LaserList = {}, 
                isrendering = false, 
                loaded = false, 
                tool = v826, 
                data = l_v829_0, 
                model = nil
            };
            v829 = nil;
            local v831 = nil;
            l_l_Data_0_0.rightarm = v829;
            l_l_Data_0_0.leftarm = v831;
            l_l_Data_0_0.armcenter = nil;
            v829 = nil;
            v831 = nil;
            l_l_Data_0_0.leftweld = v829;
            l_l_Data_0_0.rightweld = v831;
            l_l_Data_0_0.weaponweld = nil;
            l_l_Data_0_0.aim = 0;
            l_l_Data_0_0.pushdist = l_l_Data_0_0.data.PushBack;
            l_l_Data_0_0.aiming = false;
            l_l_Data_0_0.reloading = false;
            l_l_Data_0_0.shooting = false;
            l_l_Data_0_0.postshooting = false;
            l_l_Data_0_0.CancelReload = false;
            l_l_Data_0_0.CanCancelReload = l_l_Data_0_0.data.ReloadInterruption;
            l_l_Data_0_0.shootCameraOffset = l_l_Data_0_0.data.RecoilCameraDirection;
            l_l_Data_0_0.maxCameraOffset = l_l_Data_0_0.data.MaxCameraRecoil;
            l_l_Data_0_0.shootCameraPattern = l_l_Data_0_0.data.RecoilCameraDirectionPattern;
            v829 = l_l_Data_0_0.tool:FindFirstChild("Primary") or l_l_Data_0_0.tool:FindFirstChild("Secondary") or l_l_Data_0_0.tool:FindFirstChild("Gadget");
            l_l_Data_0_0.AmmoType = v829 and v829.Name or l_l_Data_0_0.data.AmmoClass;
            l_l_Data_0_0.ReloadType = l_l_Data_0_0.data.ReloadStyle;
            l_l_Data_0_0.Accuracy = math.clamp(l_l_Data_0_0.data.Accuracy or 95, 0, 100);
            l_l_Data_0_0.CancelCharge = false;
            l_l_Data_0_0.ChargeTime = 0;
            l_l_Data_0_0.ShakeMagnitude = l_l_Data_0_0.data.ShakeMagnitude and l_l_Data_0_0.data.ShakeMagnitude or 25;
            l_l_Data_0_0.ShakeRoughness = l_l_Data_0_0.data.ShakeRoughness and l_l_Data_0_0.data.ShakeRoughness or 25;
            l_l_Data_0_0.cameraModel = nil;
            l_l_Data_0_0.WeldList = {};
            v831 = l_l_Data_0_0.data.AimFOV;
            local v832 = nil;
            if not l_l_Data_0_0.data.RecoilDirectionPattern or not #l_l_Data_0_0.data.RecoilDirectionPattern then
                local _ = 1;
            end;
            if l_l_Data_0_0.shootCameraPattern then
                local _ = math.max(#l_l_Data_0_0.shootCameraPattern, #l_l_Data_0_0.data.RecoilDirectionPattern);
            end;
            local function _(v835, v836, v837) --[[ Line: 3776 ]] --[[ Name: walkbob ]]
                -- upvalues: v30 (ref)
                return v30.calculateBob(v835, v836, v837);
            end;
            local v839 = {};
            local v840 = {};
            local function v846(v841, v842) --[[ Line: 3785 ]] --[[ Name: loadAnimations ]]
                -- upvalues: l_Humanoid_0 (ref)
                v841 = v841 or l_Humanoid_0;
                local v843 = {};
                for _, v845 in v842:GetChildren() do
                    if v845:IsA("Animation") then
                        v843[v845.Name] = v841:LoadAnimation(v845);
                    end;
                end;
                return v843;
            end;
            local l_TPAnimations_0 = v826:FindFirstChild("TPAnimations");
            if l_TPAnimations_0 then
                l_l_Data_0_0.toolAnimations = v846(l_Humanoid_0, l_TPAnimations_0);
            else
                l_l_Data_0_0.toolAnimations = {};
            end;
            local v848 = v25.Spring.new(0);
            v848.s = l_l_Data_0_0.data.PushBackSpeed or 50;
            v848.d = 0.5;
            local v849 = v25.Spring.new(0);
            v849.s = l_l_Data_0_0.data.AimSpeed or 10;
            v849.d = 0.8;
            local v850 = v25.Spring.new((l_new_1()));
            v850.s = 15;
            v850.d = 0.7;
            local v851 = -100 * l_l_Data_0_0.Accuracy + 10000;
            local v852 = true;
            local v853 = true;
            local v854 = 1;
            local v855 = v25.Spring.new((l_new_1(l_l_Data_0_0.data.RightArmEquipOffset and l_l_Data_0_0.data.RightArmEquipOffset.p or 0.9, -2.75, -1.2)));
            local v856 = v25.Spring.new((l_new_1(l_l_Data_0_0.data.LeftArmEquipOffset and l_l_Data_0_0.data.LeftArmEquipOffset.p or -0.05, -3, -1)));
            v855.s = 15;
            v855.d = 1;
            v856.s = 15;
            v856.d = 1;
            local v857 = v25.Spring.new((l_new_1()));
            v857.s = 15;
            v857.d = 1;
            local v858 = v25.Spring.new((l_new_1()));
            v858.s = 15;
            v858.d = 1;
            local v859 = v25.Spring.new((l_new_1()));
            v859.s = 15;
            v859.d = 1;
            local v860 = v25.Spring.new((l_new_1()));
            v860.s = 15;
            v860.d = 1;
            local v861, v862, v863 = l_l_Data_0_0.data.LeftArmOffsetAngle:toEulerAnglesXYZ();
            local v864, v865, v866 = l_l_Data_0_0.data.RightArmOffsetAngle:toEulerAnglesXYZ();
            local v867 = l_new_1(v861, v862, v863);
            local v868 = l_new_1(v864, v865, v866);
            local l_RightArmEquipOffsetAngle_0 = l_l_Data_0_0.data.RightArmEquipOffsetAngle;
            local l_LeftArmEquipOffsetAngle_0 = l_l_Data_0_0.data.LeftArmEquipOffsetAngle;
            local v871 = l_RightArmEquipOffsetAngle_0 and l_new_1(l_RightArmEquipOffsetAngle_0:toEulerAnglesXYZ()) or Vector3.new(-1.3962633609771729, 0, 0, 0);
            local v872 = l_LeftArmEquipOffsetAngle_0 and l_new_1(l_LeftArmEquipOffsetAngle_0:toEulerAnglesXYZ()) or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
            local v873 = v25.Spring.new((Vector3.new(0, 0, 0, 0)));
            local v874 = v25.Spring.new((l_new_1(v871)));
            local v875 = v25.Spring.new((l_new_1(v872)));
            v874.s = 15;
            v874.d = 1;
            v875.s = 15;
            v875.d = 1;
            v873.s = 15;
            v873.d = 1;
            local l_ArmFix_0 = l_l_Data_0_0.data.ArmFix;
            local l_l_l_BaseSpeed_0_2_0 = l_l_BaseSpeed_0_2;
            local l_l_l_Bullet_0_0_0 = l_l_Bullet_0_0;
            local v879 = v25.Spring.new(l_l_Data_0_0.data.WeaponOffset.p);
            v879.s = 15;
            v879.d = 1;
            local v880, v881, v882 = (l_l_Data_0_0.data.WeaponOffsetAngle or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
            local v883 = v25.Spring.new((l_new_1(v880, v881, v882)));
            v883.s = 15;
            v883.d = 1;
            local v884 = l_l_Data_0_0.data.WeaponOffset2 or l_l_Data_0_0.data.WeaponOffset;
            local v885 = v25.Spring.new(v884.p);
            v885.s = 15;
            v885.d = 1;
            local v886, v887, v888 = (l_l_Data_0_0.data.WeaponOffsetAngle2 or l_l_Data_0_0.data.WeaponOffsetAngle or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
            local v889 = v25.Spring.new((l_new_1(v886, v887, v888)));
            v889.s = 15;
            v889.d = 1;
            local l_WeaponFix_0 = l_l_Data_0_0.data.WeaponFix;
            local l_SprintOffset_0 = l_l_Data_0_0.data.SprintOffset;
            local v892 = l_l_Data_0_0.data.AimOffset or l_WeaponFix_0;
            l_l_Data_0_0.firemodeT0 = tick();
            l_l_Data_0_0.stopAllAnimations = function(v893, v894, v895) --[[ Line: 3906 ]] --[[ Name: stopAllAnimations ]]
                for _, v897 in v894 do
                    if typeof(v897) == "Instance" and v897:IsA("AnimationTrack") then
                        v897:Stop(v895 or 0.1);
                    elseif typeof(v897) == "table" then
                        v893:stopAllAnimations(v897, v895);
                    end;
                end;
            end;
            l_l_Data_0_0.switchFiremode = function(v898, v899) --[[ Line: 3916 ]] --[[ Name: switchFiremode ]]
                -- upvalues: v42 (ref), v826 (copy), l_AkimboMode_0 (ref), l_PlayerGui_0 (ref)
                if not v899 and tick() < v898.firemodeT0 or v898.reloading or v898.inspecting or v898.attacking or v898.postshooting or v42 or v898.meleeswing or v898.transitioning then
                    return;
                else
                    v898.UseMelee = false;
                    if v898.data.FireModeList then
                        v898.firemodeT0 = tick() + 0.2;
                        local v900 = v898.currentmodel and v898.currentmodel:FindFirstChild("Handle");
                        local v901 = v900 and v900:FindFirstChild("Firemode");
                        local v902 = (v898.FiremodeIndex or 1) + 1;
                        if v899 then
                            v902 = v899;
                        end;
                        if #v898.data.FireModeList < v902 then
                            v902 = 1;
                        end;
                        if v901 and not v899 then
                            v901:Play();
                        end;
                        v826:SetAttribute("FiremodeIndex", v902);
                        local v903 = v898.data.FireModeList[v902];
                        local v904 = v903:match("Auto") and "Auto" or v903:match("Melee") and "Melee" or "Semi";
                        if l_AkimboMode_0.Value then
                            if v903:match("Alt") then
                                v903 = v903:gsub("Alt", "");
                            end;
                        elseif v903:match("Alt") then
                            v903 = v903:gsub("Alt", "");
                            v898.AlternateGuns = true;
                            v904 = "Single";
                        else
                            v898.AlternateGuns = false;
                            if v898.data.Dual and v903:match("Semi") then
                                v904 = "Both";
                            end;
                        end;
                        v898.data.FireMode = v903;
                        v898.FiremodeIndex = v902;
                        if v903 == "Melee" then
                            v898:switchToMelee(true);
                            v898.transitioning = true;
                            task.delay(0.3, function() --[[ Line: 3972 ]]
                                -- upvalues: v898 (copy)
                                v898.transitioning = false;
                            end);
                            v898.firemodeT0 = tick() + 0.3;
                        elseif v898.meleeMode then
                            v898.firemodeT0 = tick() + 0.3;
                            v898.transitioning = true;
                            task.delay(0.3, function() --[[ Line: 3979 ]]
                                -- upvalues: v898 (copy)
                                v898.transitioning = false;
                            end);
                            v898:switchToMelee(false);
                        end;
                        local v905 = v826:FindFirstChild("Primary", true) and "primary" or v826:FindFirstChild("Secondary", true) and "secondary" or v826:FindFirstChild("Gadget", true) and "gadget";
                        if not v905 then
                            return;
                        else
                            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons[v905 .. "Firemode"].Text = v898.data.HideFireMode and "" or string.format("[%s]", v904);
                        end;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.switchToMelee = function(v906, v907) --[[ Line: 3997 ]] --[[ Name: switchToMelee ]]
                -- upvalues: v867 (ref), l_new_1 (ref), v868 (ref)
                if v907 and not v906.meleeMode then
                    if not v906.BackupStats then
                        v906.BackupStats = {};
                    end;
                    for v908, v909 in v906.data.MeleeStats do
                        if v906.data[v908] then
                            v906.BackupStats[v908] = v906.data[v908];
                        end;
                        v906.data[v908] = v909;
                    end;
                    local v910, v911, v912 = v906.data.LeftArmOffsetAngle:toEulerAnglesXYZ();
                    local v913, v914, v915 = v906.data.RightArmOffsetAngle:toEulerAnglesXYZ();
                    v867 = l_new_1(v910, v911, v912);
                    v868 = l_new_1(v913, v914, v915);
                    v906.meleeMode = true;
                    if v906.ViewModel then
                        v906:stopAllAnimations(v906.ViewModelAnimations);
                        v906.ViewModelAnimations = v906.MeleeAnimations;
                        if v906.ViewModelAnimations.Transition then
                            v906.ViewModelAnimations.Transition:Play();
                        end;
                        if v906.ViewModelAnimations.Idle then
                            v906.ViewModelAnimations.Idle:Play();
                        end;
                    end;
                    v906:reloadarms();
                    return;
                else
                    if v906.meleeMode and not v907 then
                        for v916, v917 in v906.BackupStats do
                            v906.data[v916] = v917;
                        end;
                        local v918, v919, v920 = v906.data.LeftArmOffsetAngle:toEulerAnglesXYZ();
                        local v921, v922, v923 = v906.data.RightArmOffsetAngle:toEulerAnglesXYZ();
                        v867 = l_new_1(v918, v919, v920);
                        v868 = l_new_1(v921, v922, v923);
                        v906.meleeMode = false;
                        v906:reloadarms();
                        if v906.ViewModel then
                            v906:stopAllAnimations(v906.ViewModelAnimations);
                            v906.ViewModelAnimations = v906.GunAnimations;
                            if v906.ViewModelAnimations.Transition then
                                v906.ViewModelAnimations.Transition:Play();
                            end;
                            if v906.ViewModelAnimations.Idle then
                                v906.ViewModelAnimations.Idle:Play();
                            end;
                        end;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.playGunAnimation = function(v924, v925, v926, v927) --[[ Line: 4075 ]] --[[ Name: playGunAnimation ]]
                -- upvalues: v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v879 (copy), v42 (ref)
                v924.playing = true;
                for _, v929 in pairs(v925) do
                    if v929[7] > 0 then
                        if not v924.puttingAway then
                            local v930, v931, v932 = v929[4]:toEulerAnglesXYZ();
                            local v933, v934, v935 = v929[2]:toEulerAnglesXYZ();
                            v855.t = v929[1].p;
                            v874.t = l_new_1(v933, v934, v935);
                            v856.t = v929[3].p;
                            v875.t = l_new_1(v930, v931, v932);
                            v879.t = v929[5].p;
                            v855.s = v929[6];
                            v875.s = v929[6];
                            v874.s = v929[6];
                            v856.s = v929[6];
                            v879.s = v929[6];
                            local v936 = v929[9];
                            if v936 and v936 ~= "" then
                                v924:playsound(v936);
                            end;
                            local v937 = v929[8];
                            if v937 then
                                v924:animationaction(v937, v929);
                            end;
                            local v938 = tick();
                            repeat
                                task.wait();
                            until (not v924.playing or v924.reloading or v924.attacking or v924.aiming or v924.postshooting or not v927 and v42 or v924.grenade or v924.transitioning) and not v926 or tick() - v938 >= v929[7] or not v924.playing;
                        else
                            break;
                        end;
                    end;
                end;
                v924.playing = false;
            end;
            l_l_Data_0_0.playAnimationOLD = function(v939, v940, v941) --[[ Line: 4123 ]] --[[ Name: playAnimationOLD ]]
                -- upvalues: v857 (copy), v858 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v24 (ref), l_l_LocalPlayer_0_Mouse_0 (ref), l_RS_Package_0 (ref), v42 (ref)
                v939.playing = true;
                for _, v943 in pairs(v940) do
                    if v943[6] > 0 then
                        if v943[1] then
                            v857.t = v943[1].p;
                            v857.s = v943[5];
                        end;
                        if v943[2] then
                            local v944, v945, v946 = v943[2]:toEulerAnglesXYZ();
                            v858.t = l_new_1(v944, v945, v946);
                            v858.s = v943[5];
                        end;
                        local v947, v948, v949 = v943[4]:toEulerAnglesXYZ();
                        v856.t = v943[3].p;
                        v875.t = l_new_1(v947, v948, v949);
                        v875.s = v943[5];
                        v856.s = v943[5];
                        local v950 = v943[7];
                        if v950 and v950 == "ThrowGrenade" then
                            local l_CFrame_1 = workspace.CurrentCamera.CFrame;
                            local v952 = CFrame.new(l_CFrame_1.Position, l_CFrame_1.Position + l_CFrame_1.LookVector).LookVector * 999;
                            local v953 = v24 and v952 or l_l_LocalPlayer_0_Mouse_0.Hit.p;
                            l_RS_Package_0.Remotes.ThrowGrenade:FireServer(v953);
                        end;
                        local v954 = tick();
                        repeat
                            task.wait();
                        until (not v939.playing or v939.reloading or v939.attacking or v939.aiming or v939.postshooting or v42 or v939.grenade or v939.transitioning) and not v941 or tick() - v954 >= v943[6] or not v939.playing;
                    end;
                end;
                v939.playing = false;
            end;
            l_l_Data_0_0.playAnimation = function(v955, v956, v957, v958) --[[ Line: 4175 ]] --[[ Name: playAnimation ]]
                -- upvalues: v855 (copy), v857 (copy), v874 (copy), l_new_1 (ref), v858 (copy), v856 (copy), v875 (copy), l_l_LocalPlayer_0_Mouse_0 (ref), l_RS_Package_0 (ref), v42 (ref)
                v955.playing = true;
                local v959 = nil;
                for _, v961 in pairs(v956) do
                    if v961[6] > 0 then
                        local v962 = typeof(v961[5]) == "number" and v961[5] or v961[6];
                        if v961[1] then
                            if v958 then
                                v855.t = v961[1].p;
                                v855.s = v962;
                            else
                                v857.t = v961[1].p;
                                v857.s = v962;
                            end;
                        end;
                        if v961[2] then
                            local v963, v964, v965 = v961[2]:toEulerAnglesXYZ();
                            if v958 then
                                v874.t = l_new_1(v963, v964, v965);
                                v874.s = v962;
                            else
                                v858.t = l_new_1(v963, v964, v965);
                                v858.s = v962;
                            end;
                        end;
                        local v966, v967, v968 = v961[4]:toEulerAnglesXYZ();
                        v856.t = v961[3].p;
                        v875.t = l_new_1(v966, v967, v968);
                        v875.s = v962;
                        v856.s = v962;
                        local v969 = v961[8];
                        if v969 and v969 ~= "" then
                            v955:playsound(v969);
                        end;
                        local v970 = v961[7];
                        if v970 and v970 ~= "" then
                            if v970 == "ThrowGrenade" then
                                local l_CFrame_2 = workspace.CurrentCamera.CFrame;
                                local l_p_1 = l_l_LocalPlayer_0_Mouse_0.Hit.p;
                                local v973 = Ray.new(l_CFrame_2.p, l_CFrame_2.lookVector * 999);
                                local _, v975 = workspace:FindPartOnRayWithWhitelist(v973, {});
                                l_p_1 = v975;
                                local _ = v955.toolAnimations.Start;
                                local l_Cook_0 = v955.toolAnimations.Cook;
                                local l_Attack_0 = v955.toolAnimations.Attack;
                                if l_Cook_0 then
                                    l_Cook_0:Stop();
                                end;
                                if l_Attack_0 then
                                    l_Attack_0:Play();
                                    l_Attack_0.Priority = Enum.AnimationPriority.Action3;
                                end;
                                v959 = v959 or tick();
                                local l_ThrowType_0 = v955.ThrowType;
                                l_RS_Package_0.Remotes.ThrowGrenade:FireServer(l_p_1, tick() - v959, l_ThrowType_0);
                            elseif v970 == "CookGrenade" and v955.cooking then
                                v959 = tick();
                                repeat
                                    task.wait();
                                until not v955.cooking or tick() - v959 + 0.1 >= (v955.data.FuseTime or 5);
                            else
                                v955:animationaction(v970, v961, v962);
                            end;
                        end;
                        local v980 = tick();
                        repeat
                            task.wait();
                        until (v955.puttingAway or not v955.playing or v955.reloading or v955.attacking or v955.aiming or v955.postshooting or v42 or v955.grenade) and not v957 or tick() - v980 >= v961[6] or not v955.playing;
                    end;
                end;
                v955.playing = false;
            end;
            l_l_Data_0_0.cancelAnimation = function(v981) --[[ Line: 4273 ]] --[[ Name: cancelAnimation ]]
                v981.playing = false;
            end;
            l_l_Data_0_0.playGesture = function(v982, v983) --[[ Line: 4277 ]] --[[ Name: playGesture ]]
                -- upvalues: v42 (ref), v855 (copy), v856 (copy), v879 (copy), v875 (copy), v874 (copy), v873 (copy), l_new_1 (ref), v868 (ref), v867 (ref)
                if v982.reloading or v982.attacking or v982.aiming or v982.postshooting or v42 or v982.grenade or v982.gesturing or v982.shieldDeployed then
                    return;
                elseif not workspace:GetAttribute("MaskReady") then
                    return;
                else
                    if v982.inspecting then
                        v982:setinspecting(false);
                    end;
                    if v982.ViewModelAnimations then
                        v982.gesturing = true;
                        local v984 = v982.ViewModelAnimations["Gesture" .. v983] or v982.ViewModelAnimations.GesturePoint;
                        if v984 then
                            v984:Play(0.2);
                            v984.Looped = false;
                            v984.Stopped:Wait();
                        end;
                        v982.gesturing = false;
                        return;
                    else
                        local l_FirstChild_1 = script:WaitForChild("Gestures"):FindFirstChild(v983);
                        if l_FirstChild_1 then
                            v982.gesturing = true;
                            l_FirstChild_1 = l_FirstChild_1:Clone();
                            v982:playAnimation(require(l_FirstChild_1));
                            l_FirstChild_1:Destroy();
                            if not v982.puttingAway then
                                v855.t = v982.data.RightArmOffset.p;
                                v856.t = v982.data.LeftArmOffset.p;
                                v879.t = v982.data.WeaponOffset.p;
                                v856.s = 50;
                                v875.s = 50;
                                v855.s = 50;
                                v874.s = 50;
                                v873.s = 50;
                                v879.s = 50;
                                v873.t = l_new_1();
                                v874.t = v868;
                                v875.t = v867;
                                wait(0.2);
                            end;
                            v982.gesturing = false;
                        end;
                        return;
                    end;
                end;
            end;
            l_l_Data_0_0.throwGrenade = function(v986) --[[ Line: 4343 ]] --[[ Name: throwGrenade ]]
                -- upvalues: v42 (ref), v41 (ref), l_Character_0 (ref), v855 (copy), v856 (copy), v879 (copy), v875 (copy), v874 (copy), v873 (copy), l_new_1 (ref), v868 (ref), v867 (ref)
                if v986.reloading or v986.attacking or v986.aiming or v986.postshooting or v42 then
                    return;
                else
                    if v986.inspecting then
                        v986:setinspecting(false);
                    end;
                    if v41 and l_Character_0:FindFirstChild("Throwables").Value > 0 then
                        v986.reloading = true;
                        v986.grenade = true;
                        local v987 = script:WaitForChild("GrenadeAnim"):Clone();
                        local v988 = require(v987);
                        local l_Start_1 = v986.toolAnimations.Start;
                        local l_Cook_1 = v986.toolAnimations.Cook;
                        local l_Attack_1 = v986.toolAnimations.Attack;
                        print(l_Start_1, l_Cook_1, l_Attack_1);
                        if l_Start_1 then
                            l_Start_1:Play();
                            l_Start_1.Priority = Enum.AnimationPriority.Action2;
                        end;
                        if l_Cook_1 then
                            l_Cook_1:Play();
                            l_Cook_1.Priority = Enum.AnimationPriority.Action;
                        end;
                        v986:playAnimation(v988, true);
                        v987:Destroy();
                        if not v986.puttingAway then
                            v855.t = v986.data.RightArmOffset.p;
                            v856.t = v986.data.LeftArmOffset.p;
                            v879.t = v986.data.WeaponOffset.p;
                            v856.s = 50;
                            v875.s = 50;
                            v855.s = 50;
                            v874.s = 50;
                            v873.s = 50;
                            v879.s = 50;
                            v873.t = l_new_1();
                            v874.t = v868;
                            v875.t = v867;
                            wait(0.2);
                        end;
                        v986.grenade = false;
                        v986.reloading = false;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.updateshield = function(v992) --[[ Line: 4417 ]] --[[ Name: updateshield ]]
                -- upvalues: v848 (copy), v28 (ref)
                local l_Attribute_1 = v992.tool:GetAttribute("Health");
                if v992.PreviousHealth and l_Attribute_1 < v992.PreviousHealth then
                    v848.t = math.clamp(v848.t + 0.1, 0, 1);
                    v28:SetShake(50, 50, 0, 0.15);
                end;
                local l_model2_0 = v992.model2;
                if l_model2_0 then
                    local v995 = math.clamp(l_Attribute_1 / (v992.tool:GetAttribute("MAX_HEALTH") or 100), 0, 1);
                    if v992.PreviousHealth and l_Attribute_1 < v992.PreviousHealth and l_Attribute_1 <= 0 and v992.shieldDeployed then
                        v992.PreviousHealth = l_Attribute_1;
                        (l_model2_0:FindFirstChild("Handle2") or l_model2_0.Model2:FindFirstChild("Handle2")).Break:Play();
                        v992:setshield(false);
                        local l_ShieldFragment_0 = l_model2_0:FindFirstChild("ShieldFragment");
                        if l_ShieldFragment_0 then
                            local v997 = l_ShieldFragment_0:Clone();
                            v997:PivotTo(l_ShieldFragment_0:GetPivot());
                            for _, v999 in v997:GetDescendants() do
                                if v999:IsA("BasePart") or v999:IsA("Texture") or v999:IsA("Decal") then
                                    v999.Transparency = v999.Transparency - 1;
                                    if v999:IsA("BasePart") then
                                        v999.CanCollide = true;
                                        v999.CollisionGroup = "Ammo";
                                    end;
                                end;
                            end;
                            v997.Parent = workspace;
                            v997:BreakJoints();
                            local l_Top_0 = v997:FindFirstChild("Top");
                            local l_Top_1 = v997:FindFirstChild("Top");
                            if l_Top_0 then
                                l_Top_0:ApplyImpulse(-v997.Top.CFrame.LookVector * 5 + v997.Top.CFrame.UpVector * 25);
                            end;
                            if l_Top_1 then
                                l_Top_1:ApplyImpulse(-v997.Top.CFrame.LookVector * 5 - v997.Top.CFrame.UpVector * 5);
                            end;
                            game:GetService("Debris"):AddItem(v997, 15);
                        end;
                    end;
                    for _, v1003 in l_model2_0:GetDescendants() do
                        if v1003.Name ~= "Handle2" and v1003:IsA("BasePart") and v1003:GetAttribute("Dynamic") then
                            v1003.LocalTransparencyModifier = l_Attribute_1 <= 0 and 1 or 0;
                        elseif v1003.Name == "Damage" and v1003:IsA("Decal") then
                            v1003.Transparency = l_Attribute_1 <= 0 and 1 or v995;
                        end;
                    end;
                end;
                v992.PreviousHealth = l_Attribute_1;
            end;
            l_l_Data_0_0.setvisible = function(v1004, v1005, v1006) --[[ Line: 4486 ]] --[[ Name: setvisible ]]
                v1005 = typeof(v1005) == "number" and v1005 or v1005 and 0 or 1;
                local l_HideOnEmpty_0 = v1004.data.HideOnEmpty;
                v1006 = v1006 or v1004.model;
                local l_v1006_Descendants_0 = v1006:GetDescendants();
                table.insert(l_v1006_Descendants_0, v1006);
                for _, v1010 in l_v1006_Descendants_0 do
                    if (v1010:IsA("BasePart") or v1010:IsA("ParticleEmitter") or v1010:IsA("Beam") or v1010:IsA("Trail") or v1010:IsA("Decal") or v1010:IsA("Texture")) and (not l_HideOnEmpty_0 or l_HideOnEmpty_0 == "All" or v1010.Name:match(l_HideOnEmpty_0)) then
                        v1010.LocalTransparencyModifier = v1005;
                    end;
                end;
            end;
            l_l_Data_0_0.setshield = function(v1011, v1012) --[[ Line: 4503 ]] --[[ Name: setshield ]]
                -- upvalues: v42 (ref), l_Remotes_0 (ref), v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v873 (copy), v879 (copy), v868 (ref), v867 (ref)
                if not (v1011.tool:GetAttribute("Health") > 0) then
                    v1012 = false;
                end;
                if v1012 and not v1011.attacking and not v42 and not v1011.reloading and not v1011.shieldCooldown and not v1011.meleeswing then
                    local l_ShieldOffset_0 = v1011.data.ShieldOffset;
                    if l_ShieldOffset_0 then
                        l_Remotes_0.Shield:FireServer(true);
                        if v1011.inspecting then
                            v1011:setinspecting(false);
                        end;
                        v1011.shieldDeployed = true;
                        local v1014, v1015, v1016 = l_ShieldOffset_0[4]:toEulerAnglesXYZ();
                        local v1017, v1018, v1019 = l_ShieldOffset_0[2]:toEulerAnglesXYZ();
                        v855.t = l_ShieldOffset_0[1].p;
                        v874.t = l_new_1(v1017, v1018, v1019);
                        v856.t = l_ShieldOffset_0[3].p;
                        v875.t = l_new_1(v1014, v1015, v1016);
                        v855.s = l_ShieldOffset_0[6];
                        v875.s = l_ShieldOffset_0[6] * 1;
                        v874.s = l_ShieldOffset_0[6] * 1;
                        v856.s = l_ShieldOffset_0[6] * 1;
                        local v1020, v1021, v1022 = l_ShieldOffset_0[5]:toEulerAnglesXYZ();
                        v873.t = l_new_1(v1020, v1021, v1022);
                        v873.s = l_ShieldOffset_0[6];
                        v879.t = l_ShieldOffset_0[5].p;
                        v879.s = l_ShieldOffset_0[6] * 1;
                        local _ = l_ShieldOffset_0[8];
                        local _ = l_ShieldOffset_0[9];
                        return;
                    end;
                elseif v1011.shieldDeployed and not v1011.shieldCooldown then
                    v1011.shieldCooldown = true;
                    l_Remotes_0.Shield:FireServer(false);
                    v855.t = v1011.data.RightArmOffset.p;
                    v856.t = v1011.data.LeftArmOffset.p;
                    v879.t = v1011.data.WeaponOffset.p;
                    v856.s = 75;
                    v875.s = 75;
                    v855.s = 75;
                    v874.s = 75;
                    v879.s = 75;
                    v873.s = 75;
                    v874.t = v868;
                    v875.t = v867;
                    v873.t = l_new_1();
                    task.delay(1, function() --[[ Line: 4560 ]]
                        -- upvalues: v1011 (copy)
                        v1011.shieldCooldown = false;
                    end);
                    task.wait(0.2);
                    v1011.shieldDeployed = false;
                end;
            end;
            l_l_Data_0_0.setaim = function(v1025, v1026, v1027) --[[ Line: 4579 ]] --[[ Name: setaim ]]
                -- upvalues: l_v829_0 (ref), v42 (ref), v41 (ref), l_LocalPlayer_0 (ref), v94 (ref), v27 (ref), v129 (ref), v849 (copy), l_Character_0 (ref), v831 (ref), v28 (ref), l_v215_3 (ref)
                if l_v829_0.WeaponType == "Melee" and l_v829_0.Shield then
                    v1025:setshield(v1026);
                    return;
                elseif v1026 and not v1025.reloading and (l_v829_0.WeaponType == "Gun" or v1025.aimpart) and not v42 and not v1025.aimlock then
                    if v1025.inspecting then
                        v1025:setinspecting(false);
                    end;
                    if v41 and not v1027 then
                        l_LocalPlayer_0.PlayerGui.SG_Package.SFX.aimStart:Play();
                    end;
                    v94.Visible = false;
                    if v27.Sprinting then
                        v27:SetSprint(false);
                    end;
                    v1025.aiming = true;
                    v129(1, 0.1);
                    v849.t = 1;
                    local l_Value_11 = l_Character_0:WaitForChild("BagSpeed").Value;
                    v831 = v1025.altaim and v1025.altaimfov or v1025.aimfov or v831;
                    v28:SetFOV(v831);
                    v28:UpdateSensitivity(v831);
                    v27:SetWalkSpeed(v27.DefaultWalkSpeed / 2 * l_Value_11);
                    return;
                else
                    v94.Visible = true;
                    if v1025.aiming and v41 then
                        l_LocalPlayer_0.PlayerGui.SG_Package.SFX.aimEnd:Play();
                    end;
                    v1025.aiming = false;
                    v129(0, 0.1);
                    v849.t = 0;
                    v28:ResetFOV();
                    v28:ResetSensitivity();
                    v27:ResetWalkSpeed();
                    l_v215_3();
                    return;
                end;
            end;
            l_l_Data_0_0.postshoot = function(v1029, v1030) --[[ Line: 4638 ]] --[[ Name: postshoot ]]
                -- upvalues: v42 (ref), l_Character_0 (ref), v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v879 (copy), v868 (ref), v867 (ref)
                local l_secondaryGun_0 = v1029.secondaryGun;
                if l_secondaryGun_0 and v1029.postshooting2 or not l_secondaryGun_0 and v1029.postshooting or v42 then
                    return;
                else
                    local v1032 = v1030 and v1029.toolAnimations.Chamber or v1029.toolAnimations.Postshoot;
                    if v1032 then
                        v1032:Play();
                        v1032.Priority = Enum.AnimationPriority.Action3;
                    end;
                    local _ = v1029.Ammo;
                    local l_Value_12 = l_Character_0:FindFirstChild(v1029.AmmoType .. "Ammo").Value;
                    local v1035 = v1030 and v1029.data.ChamberSequence or l_Value_12 <= 0 and v1029.data.LastShootSequence or v1029.secondaryGun and v1029.data.PostShootSequence2 or v1029.data.PostShootSequence;
                    if l_secondaryGun_0 then
                        v1029.postshooting2 = true;
                        v1029.waspostshooting2 = true;
                    else
                        v1029.postshooting = true;
                        v1029.waspostshooting = true;
                    end;
                    if v1029.ViewModelAnimations then
                        local v1036 = v1030 and v1029.ViewModelAnimations.Chamber or v1029.ViewModelAnimations.PostShoot;
                        if v1029.aiming then
                            v1036 = v1029.ViewModelAnimations[v1036.Name .. "Aim"] or v1036;
                        elseif v1029.ViewModelAnimations[v1036.Name .. "Aim"] then
                            v1029.aimlock = true;
                        end;
                        if v1036 then
                            v1036:Play();
                            v1036.Priority = Enum.AnimationPriority.Action4;
                            v1036.Looped = false;
                            task.wait(v1036.Length * 0.9);
                        end;
                        v1029.aimlock = nil;
                    end;
                    local v1037 = false;
                    local v1038 = false;
                    for _, v1040 in pairs(v1035) do
                        if v1040[7] > 0 then
                            if not v1029.puttingAway then
                                if v1040[1] and v1040[2] then
                                    v1037 = true;
                                    local v1041, v1042, v1043 = v1040[2]:toEulerAnglesXYZ();
                                    v855.t = v1040[1].p;
                                    v874.t = l_new_1(v1041, v1042, v1043);
                                    v855.s = v1040[6];
                                    v874.s = v1040[6];
                                end;
                                if v1040[3] and v1040[4] then
                                    v1038 = true;
                                    local v1044, v1045, v1046 = v1040[4]:toEulerAnglesXYZ();
                                    v856.t = v1040[3].p;
                                    v875.t = l_new_1(v1044, v1045, v1046);
                                    v875.s = v1040[6];
                                    v856.s = v1040[6];
                                end;
                                if v1040[5] then
                                    v879.t = v1040[5].p;
                                    v879.s = v1040[6];
                                end;
                                local v1047 = v1040[9];
                                if v1047 and v1047 ~= "" then
                                    v1029:playsound(v1047);
                                end;
                                local v1048 = v1040[8];
                                if v1048 then
                                    v1029:animationaction(v1048, v1040);
                                end;
                                local v1049 = v1029.tool:GetAttribute("ReducedRecoil") or 1;
                                task.wait(v1040[7] * v1049);
                            else
                                break;
                            end;
                        end;
                    end;
                    if v1029.secondaryGun then
                        v1029.waspostshooting2 = false;
                    else
                        v1029.waspostshooting = false;
                    end;
                    if not v1029.puttingAway then
                        if v1037 then
                            v855.t = v1029.data.RightArmOffset.p;
                            v855.s = 150;
                            v874.s = 150;
                            v874.t = v868;
                            v875.t = v867;
                        end;
                        if v1038 then
                            v856.t = v1029.data.LeftArmOffset.p;
                            v856.s = 150;
                            v875.s = 150;
                        end;
                        v879.t = v1029.data.WeaponOffset.p;
                        v879.s = 150;
                    end;
                    if l_secondaryGun_0 then
                        v1029.postshooting2 = false;
                        v1029.waspostshooting2 = false;
                        return;
                    else
                        v1029.postshooting = false;
                        v1029.waspostshooting = false;
                        return;
                    end;
                end;
            end;
            l_l_Data_0_0.shoot = function(v1050, v1051, v1052) --[[ Line: 4787 ]] --[[ Name: shoot ]]
                -- upvalues: v853 (ref), v852 (ref), v27 (ref), v42 (ref), v23 (ref), v43 (ref), v86 (ref), l_Character_0 (ref), l_Options_0 (ref), l_l_LocalPlayer_0_Mouse_0 (ref), v28 (ref), l_Head_0 (ref), l_CurrentCamera_0 (ref), v851 (ref), v17 (ref), l_LocalPlayer_0 (ref), v30 (ref), l_status_0 (ref), l_result_0 (ref), v196 (ref), v848 (copy), v197 (ref), v29 (ref), l_Remotes_0 (ref), l_DamageCalculation_0 (ref), v826 (copy), v126 (ref), v214 (ref), l_Damage_0 (ref), l_HitEvent_0 (ref), l_Value_2 (ref)
                v1052 = v1052 or {};
                if not v1050.data.Dual then
                    v1052.SecondGun = false;
                end;
                local v1053 = true;
                v1053 = if v1052.SecondGun then v1050.postshooting2 or not v853 else v1050.postshooting or not v852;
                local v1054 = v27.Sprint > 0.3;
                if v1053 or v42 or v23 or v43 or v1054 and not v86("G", "J") then
                    return;
                else
                    if not v86("G", "J") then
                        v27:SetSprint(false);
                    end;
                    if v1050.inspecting then
                        v1050:setinspecting(false);
                    end;
                    v1050.LastShot = os.clock();
                    local l_l_Character_0_FirstChild_0 = l_Character_0:FindFirstChild(v1050.AmmoType .. "Ammo");
                    local l_Value_13 = l_l_Character_0_FirstChild_0.Value;
                    local l_l_l_Character_0_FirstChild_0_Attribute_0 = l_l_Character_0_FirstChild_0:GetAttribute("SecondaryAmmo");
                    l_l_Character_0_FirstChild_0 = v1052.SecondGun and l_l_Character_0_FirstChild_0:GetAttribute("SecondaryAmmo") or not v1052.SecondGun and l_l_Character_0_FirstChild_0.Value or 0;
                    local _ = v1050.model:FindFirstChild("Bullet_" .. l_l_Character_0_FirstChild_0 - 1);
                    if l_l_Character_0_FirstChild_0 <= 0 then
                        v1050:setshooting(false, {
                            SecondGun = v1052.SecondGun
                        });
                        local v1059 = false;
                        v1059 = if v1050.data.Dual then l_l_l_Character_0_FirstChild_0_Attribute_0 and l_l_l_Character_0_FirstChild_0_Attribute_0 <= 0 and l_Value_13 <= 0 else l_l_Character_0_FirstChild_0 <= 0;
                        if l_Options_0:WaitForChild("Gameplay"):WaitForChild("AutoReload").Value and v1059 then
                            v1050:setreloading(true);
                        end;
                        return true;
                    else
                        local l_currentmodel_0 = v1050.currentmodel;
                        v1050.secondaryGun = v1052 and v1052.SecondGun;
                        l_currentmodel_0 = if v1050.data.Dual then not v1050.secondaryGun and l_currentmodel_0.Parent:FindFirstChild("Model2") or l_currentmodel_0 else v1050.secondaryGun and l_currentmodel_0.Parent:FindFirstChild("Model2") or l_currentmodel_0;
                        local v1061 = l_currentmodel_0.Parent:FindFirstChild("Model2") or l_currentmodel_0.Name == "Model2" and l_currentmodel_0;
                        if l_l_Character_0_FirstChild_0 - 1 <= 0 and v1050.data.HideOnEmpty then
                            v1050:setvisible(false);
                        end;
                        if v1050.data.HideBullets then
                            for _, v1063 in l_currentmodel_0:GetDescendants() do
                                if v1063.Name:match("Bullet_") and (v1061 and not v1063:IsDescendantOf(v1061) or l_currentmodel_0.Name ~= "Model2") then
                                    local v1064 = v1063.Name:match("%d+");
                                    v1064 = v1064 and tonumber(v1064);
                                    if v1064 and l_l_Character_0_FirstChild_0 - 1 < v1064 then
                                        v1050:setvisible(false, v1063);
                                    end;
                                end;
                            end;
                        end;
                        local v1065 = v1050.data.Dual and v1050.secondaryGun and v1050.toolAnimations.Attack2 or v1050.toolAnimations.Attack;
                        if v1065 then
                            v1065:Play(0.05, v1065:GetAttribute("Weight") or 1);
                            v1065.Priority = Enum.AnimationPriority.Action2;
                        end;
                        if v1050.ViewModelAnimations then
                            local v1066 = v1050.data.Dual and v1050.secondaryGun and v1050.ViewModelAnimations.Attack2 or v1050.ViewModelAnimations.Attack;
                            if v1066 then
                                v1066:Play(0, v1050.aiming and 1 or 1);
                                v1066.Priority = Enum.AnimationPriority.Action3;
                                v1066.Looped = false;
                            end;
                        end;
                        local l_p_2 = l_l_LocalPlayer_0_Mouse_0.Hit.p;
                        local v1068 = v1050.aiming and v1050.aimpart or workspace.CurrentCamera;
                        if v28.Mode == "FirstPerson" then
                            local v1069 = Ray.new(l_Head_0.CFrame.p, v1068.CFrame.lookVector * 999);
                            local _, v1071 = workspace:FindPartOnRayWithWhitelist(v1069, {});
                            l_p_2 = v1071;
                        elseif v28.Mode == "Shoulder" then
                            local v1072 = Ray.new(l_Head_0.CFrame.p, l_CurrentCamera_0.CFrame.lookVector * 999);
                            local _, v1074 = workspace:FindPartOnRayWithWhitelist(v1072, {});
                            l_p_2 = v1074;
                        end;
                        local v1075 = math.max(v851, 0);
                        local v1076 = l_p_2 + Vector3.new(math.random(-v1075, v1075) / 100, math.random(-v1075, v1075) / 100, math.random(-v1075, v1075) / 100);
                        local v1077 = Vector3.new();
                        local v1078 = true;
                        if v1050.data.BulletSpeed >= 10 then
                            v1078 = v1050.data.MuzzleOrigin;
                        end;
                        if v1050.aiming then
                            local v1079 = v1050.altaim and v1050.altaimpart or v1050.aimpart;
                            local v1080 = v1079 and v1079.Position or l_CurrentCamera_0.CFrame.Position;
                            v1077 = if not (v17 == 0) or l_Character_0:FindFirstChild("Health") and l_Character_0:FindFirstChild("Health").Value <= 0 then v1080 else v1080;
                        else
                            v1077 = l_CurrentCamera_0.CFrame.Position;
                        end;
                        local v1081 = l_currentmodel_0:FindFirstChild("Muzzle2") or l_currentmodel_0:FindFirstChild("Muzzle");
                        if v1078 and not v1050.data.AimCenter then
                            v1077 = v1081.Position;
                        end;
                        local v1082 = {
                            SecondGun = v1052.SecondGun, 
                            StartPosition = v1077, 
                            TargetPosition = v1076, 
                            Direction = (v1076 - v1077).unit, 
                            BulletType = v1050.data.BulletType, 
                            Speed = v1050.data.BulletSpeed, 
                            Damage = v1050.data.Damage, 
                            Knockback = v1050.data.Knockback or v1050.data.Damage * (v1050.data.BulletsPerBurstOrShotgun > 0 and v1050.data.BulletsPerBurstOrShotgun or 1) / 10, 
                            BackBlast = v1050.data.BackBlast and {
                                v1050.data.Damage * v1050.data.BackBlast, 
                                v1050.data.BackBlastRadius or 10
                            }, 
                            Piercing = v1050.data.Piercing or nil, 
                            Player = l_LocalPlayer_0, 
                            Character = l_LocalPlayer_0.Character, 
                            Model = v30.Current.tool, 
                            UseAmmo = true, 
                            IsCrit = v1050.data.QuickdrawAced and v1050.data.QuickdrawAced == 1, 
                            Explosive = v1050.data.Explosive, 
                            Drop = v1050.data.Drop or 0, 
                            Duration = v1050.data.Duration or nil, 
                            IgnoreArmor = v1050.data.IgnoreArmor or nil, 
                            HitboxInfo = v1050.data.HitboxInfo or nil, 
                            GunData = v1050.data
                        };
                        l_status_0 = l_status_0 + 1;
                        l_result_0 = l_result_0 + 1;
                        v196.t = v1050.data.RecoilDirectionPattern[l_status_0 % #v1050.data.RecoilDirectionPattern + 1] * 1;
                        local v1083 = nil;
                        v1083 = if v1050.shootCameraPattern then v1050.shootCameraPattern[l_status_0 % #v1050.shootCameraPattern + 1] * 1 else v1050.shootCameraOffset * 1;
                        v848.t = v848.t + v1050.pushdist * 1;
                        v197.t = v1083;
                        v28:SetShake(v1050.ShakeMagnitude / 1, v1050.ShakeRoughness / 1, 0, 0.25);
                        local v1084 = false;
                        if not v1050.data.FireMode:match("Saw") and (l_Character_0:GetAttribute("InfAmmo") == nil or v1050.tool.Name == "RPG-7" or v1050.tool.Name == "China Lake" or v1050.tool.Name == "M79 GL") then
                            local v1085 = v1082.Model:FindFirstChild("Primary") or v1082.Model:FindFirstChild("Secondary");
                            local v1086 = v1085 and v1085.Name or v1050.data.AmmoClass;
                            v1086 = l_Character_0:FindFirstChild(v1086 .. "Ammo") or l_Character_0:FindFirstChild("PrimaryAmmo");
                            local v1087 = v1086 and v1086:GetAttribute("SecondaryAmmo") or 0;
                            if v1082.SecondGun then
                                v1087 = math.max(0, v1087 - 1);
                                v1086:SetAttribute("SecondaryAmmo", v1087);
                            else
                                v1086.Value = math.max(0, v1086.Value - 1);
                            end;
                            if v1086.Value == 0 and v1082.Model.Name == "RPG-7" then
                                local l_Mag_0 = v1082.Model:FindFirstChild("Mag");
                                if l_Mag_0 then
                                    if not l_Mag_0:GetAttribute("OriginalTransparency") then

                                    end;
                                    l_Mag_0.LocalTransparencyModifier = 1;
                                end;
                            end;
                            v1084 = if v1050.data.Dual then v1087 and v1087 <= 0 and v1086.Value <= 0 else v1086.Value <= 0;
                        end;
                        if v1050.data.FireMode:match("Shotgun") or v1050.data.FireMode == "AutoShotgun" then
                            for v1089 = 1, v1050.data.BulletsPerBurstOrShotgun do
                                local v1090 = l_p_2 + Vector3.new(math.random(-v1075, v1075) / 100, math.random(-v1075, v1075) / 100, math.random(-v1075, v1075) / 100);
                                local v1091 = {
                                    SecondGun = v1052.SecondGun, 
                                    StartPosition = v1077, 
                                    TargetPosition = v1090, 
                                    Direction = (v1090 - v1077).unit, 
                                    BulletType = v1050.data.BulletType, 
                                    Speed = v1050.data.BulletSpeed, 
                                    Damage = v1050.data.Damage, 
                                    Knockback = v1050.data.Knockback or v1050.data.Damage * (v1050.data.BulletsPerBurstOrShotgun > 0 and v1050.data.BulletsPerBurstOrShotgun or 1) / 10, 
                                    Explosive = v1050.data.Explosive, 
                                    Drop = v1050.data.Drop or 0, 
                                    Player = l_LocalPlayer_0, 
                                    Character = l_LocalPlayer_0.Character, 
                                    Model = v30.Current.tool, 
                                    UseAmmo = v1089 == 1, 
                                    IsCrit = v1050.data.QuickdrawAced and v1050.data.QuickdrawAced == 1, 
                                    Duration = v1050.data.Duration or nil, 
                                    IgnoreArmor = v1050.data.IgnoreArmor or nil, 
                                    HitboxInfo = v1050.data.HitboxInfo or nil, 
                                    GunData = v1050.data
                                };
                                v29.new(v1091);
                                l_Remotes_0.Bullet:FireServer(v1091);
                            end;
                        elseif v1050.data.FireMode == "Burst" then
                            local v1092 = {
                                SecondGun = v1052.SecondGun, 
                                StartPosition = v1077, 
                                TargetPosition = v1076, 
                                Direction = (v1076 - v1077).unit, 
                                BulletType = v1050.data.BulletType, 
                                Speed = v1050.data.BulletSpeed, 
                                Damage = v1050.data.Damage, 
                                Knockback = v1050.data.Knockback or v1050.data.Damage * (v1050.data.BulletsPerBurstOrShotgun > 0 and v1050.data.BulletsPerBurstOrShotgun or 1) / 10, 
                                Explosive = v1050.data.Explosive, 
                                Drop = v1050.data.Drop or 0, 
                                Player = l_LocalPlayer_0, 
                                Character = l_LocalPlayer_0.Character, 
                                Model = v30.Current.tool, 
                                UseAmmo = true, 
                                IsCrit = v1050.data.QuickdrawAced and v1050.data.QuickdrawAced == 1, 
                                Duration = v1050.data.Duration or nil, 
                                IgnoreArmor = v1050.data.IgnoreArmor or nil, 
                                HitboxInfo = v1050.data.HitboxInfo or nil, 
                                GunData = v1050.data
                            };
                            v29.new(v1092);
                            l_Remotes_0.Bullet:FireServer(v1092);
                        elseif v1050.data.FireMode:match("Saw") then
                            v848.t = v848.p + v1050.pushdist;
                            local l_Children_0 = workspace.Map:GetChildren();
                            for _, v1095 in pairs(workspace.Police:GetChildren()) do
                                table.insert(l_Children_0, v1095);
                            end;
                            for _, v1097 in pairs(workspace.Glass:GetChildren()) do
                                table.insert(l_Children_0, v1097);
                            end;
                            for _, v1099 in pairs(workspace.Citizens:GetChildren()) do
                                table.insert(l_Children_0, v1099);
                            end;
                            if workspace:FindFirstChild("Cameras") then
                                for _, v1101 in pairs(workspace.Cameras:GetChildren()) do
                                    table.insert(l_Children_0, v1101);
                                end;
                            end;
                            local l_workspace_PartOnRayWithWhitelist_3, v1103, v1104 = workspace:FindPartOnRayWithWhitelist(Ray.new(l_CurrentCamera_0.CFrame.p, l_CurrentCamera_0.CFrame.LookVector * 7), l_Children_0);
                            local v1105 = "None";
                            local v1106 = l_workspace_PartOnRayWithWhitelist_3 and l_workspace_PartOnRayWithWhitelist_3.Parent:GetAttribute("SawDebounce");
                            do
                                local l_l_workspace_PartOnRayWithWhitelist_3_0 = l_workspace_PartOnRayWithWhitelist_3;
                                if l_l_workspace_PartOnRayWithWhitelist_3_0 then
                                    local v1108 = FindHumanoid(l_l_workspace_PartOnRayWithWhitelist_3_0);
                                    if v1108 and not l_l_workspace_PartOnRayWithWhitelist_3_0:IsDescendantOf(workspace.Citizens) then
                                        local _ = v1050.data.Damage;
                                        local v1110 = v1108 and v1108.Parent:FindFirstChild("Type");
                                        v1110 = v1110 and v1110.Value or "";
                                        local v1111 = (v1110:match("Jugg") or v1110:match("Dozer")) and (l_l_workspace_PartOnRayWithWhitelist_3_0.Parent.Name == "Visor" or l_l_workspace_PartOnRayWithWhitelist_3_0.Parent.Name == "Faceplate");
                                        local v1112 = v86("T", "l");
                                        if l_l_workspace_PartOnRayWithWhitelist_3_0 and l_l_workspace_PartOnRayWithWhitelist_3_0.Parent and l_l_workspace_PartOnRayWithWhitelist_3_0.Parent:IsA("Accoutrement") and not v1111 and (v1082.IgnoreArmor or v1112) and l_l_workspace_PartOnRayWithWhitelist_3_0.Parent:FindFirstChild("Protects") and v1108.Parent:FindFirstChild(l_l_workspace_PartOnRayWithWhitelist_3_0.Parent:FindFirstChild("Protects").Value) then
                                            l_l_workspace_PartOnRayWithWhitelist_3_0 = v1108.Parent:FindFirstChild(l_l_workspace_PartOnRayWithWhitelist_3_0.Parent:FindFirstChild("Protects").Value);
                                        end;
                                        local v1113 = true;
                                        if l_l_workspace_PartOnRayWithWhitelist_3_0.Name ~= "Head" then
                                            v1113 = false;
                                        end;
                                        local _, v1115, v1116, _, _ = l_DamageCalculation_0.calculate(l_LocalPlayer_0, v1108, v30.Current.tool, l_l_workspace_PartOnRayWithWhitelist_3_0, v826, nil);
                                        local v1119 = v1115 and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(255, 255, 255);
                                        v126(v1119, true);
                                        v214(v1108.Parent, "-" .. string.format("%.1f", v1116), v1119);
                                        local v1120 = v1050.tool or v1050.currentmodel;
                                        l_Damage_0:FireServer("Damage", v1050.tool, v1108, v1116, l_l_workspace_PartOnRayWithWhitelist_3_0, v1120.Name, l_Character_0.PrimaryPart.CFrame.lookVector * v1116);
                                        local l_lookVector_1 = l_Character_0.PrimaryPart.CFrame.lookVector;
                                        local v1122 = Vector3.new(math.random(-10, 10) / 10, -0.8, math.random(-10, 10) / 10);
                                        l_HitEvent_0:Fire(l_l_workspace_PartOnRayWithWhitelist_3_0, l_l_workspace_PartOnRayWithWhitelist_3_0.Position, -l_lookVector_1 + v1122, -l_lookVector_1 + v1122, 10, true, "Flesh", false, nil, "Front", nil);
                                        v1105 = "Person";
                                    elseif l_l_workspace_PartOnRayWithWhitelist_3_0 and not l_l_workspace_PartOnRayWithWhitelist_3_0.Parent:GetAttribute("SawDebounce") then
                                        l_Remotes_0.HitObject:FireServer(v1050.tool, l_l_workspace_PartOnRayWithWhitelist_3_0, false, nil, nil, l_Character_0.PrimaryPart.CFrame.lookVector * 56, 56);
                                        local v1123 = false;
                                        if l_l_workspace_PartOnRayWithWhitelist_3_0.Parent.Name == "DepositBox" then
                                            v1123 = "Deposit";
                                        end;
                                        v1105 = v1123;
                                        if l_l_workspace_PartOnRayWithWhitelist_3_0:IsDescendantOf(workspace.Citizens) then
                                            v1105 = "Person";
                                        elseif l_l_workspace_PartOnRayWithWhitelist_3_0.Parent.Name == "Door" then
                                            v1105 = "Door";
                                        end;
                                        if v1105 and typeof(v1105) == "string" and (v1105:match("Door") or v1105:match("Deposit")) then
                                            l_l_workspace_PartOnRayWithWhitelist_3_0.Parent:SetAttribute("SawDebounce", true);
                                            task.delay(1, function() --[[ Line: 5186 ]]
                                                -- upvalues: l_l_workspace_PartOnRayWithWhitelist_3_0 (ref)
                                                if l_l_workspace_PartOnRayWithWhitelist_3_0 and l_l_workspace_PartOnRayWithWhitelist_3_0.Parent then
                                                    l_l_workspace_PartOnRayWithWhitelist_3_0.Parent:SetAttribute("SawDebounce", false);
                                                end;
                                            end);
                                        end;
                                        v1123 = l_CurrentCamera_0.CFrame.LookVector;
                                        l_HitEvent_0:Fire(l_l_workspace_PartOnRayWithWhitelist_3_0, v1103, v1104, v1123, 10, false, "Saw", false, nil, "Front", nil, l_Character_0, v1050.data, v1050.tool, false);
                                    end;
                                end;
                                local v1124 = l_l_workspace_PartOnRayWithWhitelist_3_0 and 1 or 0;
                                if v1105 == "Deposit" then
                                    v1124 = 25;
                                elseif v1105 == "Person" then
                                    v1124 = 1;
                                elseif v1105 == "Door" then
                                    v1124 = 15;
                                end;
                                if not l_Character_0:GetAttribute("InfAmmo") then
                                    local v1125 = v1050.tool:FindFirstChild("Primary") or v1050.tool:FindFirstChild("Secondary");
                                    local v1126 = v1125 and v1125.Name or v1050.data.AmmoClass;
                                    v1126 = l_Character_0:FindFirstChild(v1126 .. "Ammo") or l_Character_0:FindFirstChild("PrimaryAmmo");
                                    if not v1126 or not v1126:GetAttribute("SecondaryAmmo") then
                                        local _ = 0;
                                    end;
                                    if v1082.SecondGun then
                                        v1126:SetAttribute("SecondaryAmmo", (math.max(0, v1126.Value - v1124)));
                                    else
                                        v1126.Value = math.max(0, v1126.Value - v1124);
                                    end;
                                end;
                                l_Remotes_0.Bullet:FireServer({
                                    Model = v30.Current.tool, 
                                    Character = l_LocalPlayer_0.Character, 
                                    SawData = not v1106 and v1105 or "None", 
                                    Hit = not v1106 and l_l_workspace_PartOnRayWithWhitelist_3_0
                                });
                            end;
                        else
                            v29.new(v1082);
                            l_Remotes_0.Bullet:FireServer(v1082);
                        end;
                        local v1128 = l_currentmodel_0:FindFirstChild("Muzzle2") or l_currentmodel_0:FindFirstChild("Muzzle");
                        if v1128 then
                            for _, v1130 in pairs(v1128:GetChildren()) do
                                if v1130 then
                                    if v1130:IsA("Attachment") and v1130.Name == "FX" then
                                        for _, v1132 in v1130:GetChildren() do
                                            if v1132:IsA("ParticleEmitter") then
                                                v1132:Emit(v1132.Rate);
                                            end;
                                        end;
                                    elseif l_Value_2 == 2 and v1130:IsA("ParticleEmitter") then
                                        v1130:Emit(v1130.Rate);
                                    elseif l_Value_2 == 2 and (v1130:IsA("PointLight") or v1130:IsA("SpotLight")) then
                                        spawn(function() --[[ Line: 5267 ]]
                                            -- upvalues: v1130 (copy)
                                            v1130.Enabled = true;
                                            wait();
                                            v1130.Enabled = false;
                                        end);
                                    elseif l_Value_2 == 2 and v1130:IsA("Smoke") then
                                        spawn(function() --[[ Line: 5273 ]]
                                            -- upvalues: v1130 (copy)
                                            v1130.Enabled = true;
                                            wait(0.1);
                                            v1130.Enabled = false;
                                        end);
                                    elseif v1130:IsA("Sound") then
                                        if v1130.Looped then
                                            local l_ShotEnd_0 = v1130:FindFirstChild("ShotEnd");
                                            v1130.Playing = true;
                                            if l_ShotEnd_0 then
                                                l_ShotEnd_0:Stop();
                                            end;
                                            if l_currentmodel_0:FindFirstChild("Muzzle2") then
                                                v1050.CurrentSound2 = v1130;
                                            else
                                                v1050.CurrentSound = v1130;
                                            end;
                                        else
                                            local v1134 = v1130:Clone();
                                            local l_Echo_0 = v1134:FindFirstChild("Echo");
                                            do
                                                local l_l_Echo_0_0 = l_Echo_0;
                                                if l_l_Echo_0_0 then
                                                    l_l_Echo_0_0 = l_l_Echo_0_0:Clone();
                                                    local v1137 = l_l_Echo_0_0:GetAttribute("Delay") or 0.05;
                                                    task.delay(v1137, function() --[[ Line: 5297 ]]
                                                        -- upvalues: l_l_Echo_0_0 (ref), v1128 (copy)
                                                        l_l_Echo_0_0.Name = "PlayingSound";
                                                        l_l_Echo_0_0.Parent = v1128;
                                                        l_l_Echo_0_0.PlayOnRemove = true;
                                                        l_l_Echo_0_0:Destroy();
                                                    end);
                                                end;
                                                v1134.Parent = v1128;
                                                v1134.PlayOnRemove = true;
                                                v1134:Destroy();
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                            if v1050.data.Casing and not v1050.data.ManualCasingEjection then
                                v1050:dropcasing(nil, not v1052.SecondGun and l_currentmodel_0.Parent:FindFirstChild("Model2"));
                            end;
                        end;
                        local l_secondaryGun_1 = v1050.secondaryGun;
                        if l_secondaryGun_1 then
                            v853 = false;
                        else
                            v852 = false;
                        end;
                        if v1050.data.QuickdrawAced and v1050.data.QuickdrawAced == 1 then
                            v1050.data.QuickdrawAced = 0;
                        end;
                        task.delay(v1051 and v1050.data.BurstDelay or v1050.data.FireDelay, function() --[[ Line: 5339 ]]
                            -- upvalues: l_secondaryGun_1 (copy), v853 (ref), v852 (ref)
                            if l_secondaryGun_1 then
                                v853 = true;
                                return;
                            else
                                v852 = true;
                                return;
                            end;
                        end);
                        v1050:updateBolt(nil, v1050.secondaryGun);
                        if v1051 and #v1050.data.PostShootSequence > 0 and v1051 == 1 then
                            task.spawn(function() --[[ Line: 5351 ]]

                            end);
                        elseif #v1050.data.PostShootSequence > 0 or v1050.ViewModelAnimations and v1050.ViewModelAnimations.PostShoot then
                            v1050:postshoot();
                        end;
                        if v1084 and l_Options_0:WaitForChild("Gameplay"):WaitForChild("AutoReload").Value then
                            v1050:setshooting(false, {
                                SecondGun = v1052.SecondGun
                            });
                            v1050:setreloading(true);
                            return true;
                        else
                            return;
                        end;
                    end;
                end;
            end;
            l_l_Data_0_0.updateBolt = function(v1139, v1140, v1141) --[[ Line: 5371 ]] --[[ Name: updateBolt ]]
                -- upvalues: l_Character_0 (ref), l_TweenService_0 (ref)
                local l_l_Character_0_FirstChild_1 = l_Character_0:FindFirstChild(v1139.AmmoType .. "Ammo");
                l_l_Character_0_FirstChild_1 = v1141 and l_l_Character_0_FirstChild_1:GetAttribute("SecondaryAmmo") or l_l_Character_0_FirstChild_1.Value;
                v1139.BoltTweens = v1139.BoltTweens or {};
                v1139.BoltsPlaying = v1139.BoltsPlaying or {};
                local v1143 = v1139.data.BoltList or {};
                if not v1143.Bolt then
                    v1143.Bolt = {
                        BoltOffset = v1139.data.BoltOffset, 
                        BoltLoop = v1139.data.BoltLoop, 
                        BoltLock = v1139.data.BoltLock, 
                        BoltStay = v1139.data.BoltStay, 
                        BoltInstaReturn = v1139.data.BoltInstaReturn, 
                        BoltDuration = v1139.data.BoltDuration, 
                        BoltStartCF = v1139.data.BoltStartCF
                    };
                end;
                for v1144, v1145 in v1143 do
                    local v1146 = v1139.WeldList[v1144] or v1139.model:FindFirstChild("Handle") and v1139.model.Handle:FindFirstChild(v1144 .. "_Weld");
                    local v1147 = v1145.AkimboBolt or 1;
                    v1147 = v1141 and v1147 == 2 or not v1141 and v1147 == 1;
                    if v1146 and v1147 then
                        local l_BoltOffset_0 = v1145.BoltOffset;
                        local l_BoltLoop_0 = v1145.BoltLoop;
                        local v1150 = v1145.BoltInstaReturn or false;
                        local v1151 = l_l_Character_0_FirstChild_1 <= 0 and (v1145.BoltLock or false);
                        local v1152 = v1140 or v1145.BoltDuration or v1139.data.FireDelay * 0.8;
                        v1151 = v1145.BoltStay or v1151;
                        local v1153 = v1139.BoltTweens[v1144];
                        if v1153 and not l_BoltLoop_0 then
                            v1153:Cancel();
                            v1153:Destroy();
                            v1139.BoltTweens[v1144] = nil;
                        end;
                        if l_BoltOffset_0 and (not l_BoltLoop_0 or not v1139.BoltsPlaying[v1144]) then
                            v1139.BoltsPlaying[v1144] = l_BoltLoop_0;
                            if l_BoltLoop_0 then
                                v1139.BoltPlaying = true;
                            end;
                            if v1146 then
                                local l_v1146_Attribute_0 = v1146:GetAttribute("DefaultC1");
                                if not l_v1146_Attribute_0 then
                                    v1146:SetAttribute("DefaultC1", v1146.C1);
                                    l_v1146_Attribute_0 = v1146.C1;
                                end;
                                v1146.C1 = v1145.BoltStartCF or l_v1146_Attribute_0;
                                v1139.BoltTweens[v1144] = l_TweenService_0:Create(v1146, TweenInfo.new(v1152, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, l_BoltLoop_0 and -1 or 0, not v1151 and not v1150), {
                                    C1 = l_BoltOffset_0:Inverse()
                                });
                                v1139.BoltTweens[v1144]:Play();
                                do
                                    local l_l_v1146_Attribute_0_0 = l_v1146_Attribute_0;
                                    if v1150 then
                                        local v1156 = v1139.BoltTweens[v1144];
                                        v1156.Completed:Once(function() --[[ Line: 5444 ]]
                                            -- upvalues: v1139 (copy), v1144 (copy), v1156 (copy), v1146 (copy), l_l_v1146_Attribute_0_0 (ref)
                                            if v1139.BoltTweens[v1144] == v1156 then
                                                v1146.C1 = l_l_v1146_Attribute_0_0;
                                            end;
                                        end);
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            l_l_Data_0_0.dropcasing = function(v1157, v1158, v1159) --[[ Line: 5497 ]] --[[ Name: dropcasing ]]
                -- upvalues: l_Options_0 (ref), l_Assets_0 (ref), l_new_0 (ref)
                if l_Options_0:WaitForChild("Graphics"):WaitForChild("Effects").Value < 1 then
                    return;
                else
                    local l_Casing_0 = v1157.data.Casing;
                    v1159 = v1159 or v1157.currentmodel;
                    local v1161 = v1159 and v1159:FindFirstChild("Chamber") or v1159:FindFirstChild("Muzzle");
                    if l_Casing_0 and v1161 then
                        v1158 = v1158 or l_Assets_0.Effects.Casings:FindFirstChild(l_Casing_0) or l_Assets_0.Effects.Casings:FindFirstChild("Default");
                        if v1158 then
                            v1158 = v1158:Clone();
                            v1158.CollisionGroup = "Ammo";
                            v1158.CanCollide = false;
                            v1158.Parent = workspace.CurrentCamera;
                            v1158:PivotTo(v1161:GetPivot() * (v1157.data.CasingOffset or l_new_0()));
                            local v1162 = v1157.data.CasingVelocity or 10;
                            local v1163 = typeof(v1162) == "NumberRange" and math.random(v1162.Min, v1162.Max) or v1162;
                            v1158.AssemblyLinearVelocity = v1158.CFrame.RightVector.Unit * v1163;
                            v1158.AssemblyAngularVelocity = v1157.data.AngularVelocity or Vector3.new(0, 45, 0, 0);
                            local l_Sound_0 = v1158:FindFirstChild("Sound");
                            if l_Sound_0 then
                                task.delay(l_Sound_0:GetAttribute("Delay") or 0.4, function() --[[ Line: 5523 ]]
                                    -- upvalues: l_Sound_0 (copy), v1158 (ref)
                                    l_Sound_0:Play();
                                    task.wait(2);
                                    v1158:Destroy();
                                end);
                            end;
                        end;
                    end;
                    return;
                end;
            end;
            local v1165 = tick();
            l_l_Data_0_0.setshooting = function(v1166, v1167, v1168) --[[ Line: 5539 ]] --[[ Name: setshooting ]]
                -- upvalues: l_Character_0 (ref), l_TweenService_0 (ref), v42 (ref), l_result_0 (ref), v197 (ref), v1165 (ref), v196 (ref), l_v215_3 (ref)
                v1168 = v1168 or {};
                local v1169 = v1166.currentmodel or v1166.model;
                local v1170 = v1169 and v1169:FindFirstChild("Muzzle");
                local v1171 = v1170 and v1170:FindFirstChild("Sound");
                v1171 = not v1168.SecondGun and v1166.CurrentSound2 or v1166.CurrentSound or v1171;
                local v1172 = v1166.AmmoType and l_Character_0:FindFirstChild(v1166.AmmoType .. "Ammo");
                v1172 = v1172 and v1172.Value;
                if not v1167 and v1171 and v1171.Looped and v1171.Playing then
                    v1171:Stop();
                    if v1166.CurrentSound2 == v1171 then
                        v1166.CurrentSound2 = nil;
                    elseif v1166.CurrentSound == v1171 then
                        v1166.CurrentSound = nil;
                    end;
                    local v1173 = v1170 and v1170:FindFirstChild("ShotEnd", true);
                    if v1173 then
                        v1173:Play();
                    end;
                end;
                if not v1167 and v1166.BoltTweens and v1166.data.BoltLoop and v1166.BoltPlaying then
                    if v1166.BoltTweens then
                        for _, v1175 in v1166.BoltTweens do
                            v1175:Cancel();
                        end;
                    end;
                    v1166.BoltsPlaying = {};
                    v1166.BoltPlaying = false;
                    if v1166.data.BoltFade then
                        local v1176 = v1166.WeldList.Bolt and v1166.model:FindFirstChild("Handle") and v1166.model.Handle:FindFirstChild("Bolt_Weld");
                        local l_BoltOffset_1 = v1166.data.BoltOffset;
                        if v1176 then
                            v1166.BoltTweens.Bolt = l_TweenService_0:Create(v1176, TweenInfo.new(v1166.data.BoltFade, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0), {
                                C1 = v1176.C1 * l_BoltOffset_1:Inverse()
                            });
                            v1166.BoltTweens.Bolt:Play();
                        end;
                    end;
                end;
                if not v1166.reloading and not v1166.CancelReload and not v42 then
                    local v1178 = v1166.data.FireMode or "Semi";
                    if not v1167 then
                        l_result_0 = 0;
                        v197.s = 20;
                        if v1166.data.WeaponType == "Gun" and (v1178 == "Semi" or v1178:match("Shotgun") or v1178 == "Saw") then
                            delay(v1166.data.FireDelay, function() --[[ Line: 5598 ]]
                                -- upvalues: v1165 (ref), v1166 (copy), v196 (ref)
                                if tick() - v1165 >= v1166.data.FireDelay then
                                    v196.s = 15;
                                end;
                            end);
                        else
                            v196.s = 15;
                        end;
                    else
                        v1165 = tick();
                        v197.s = 5;
                    end;
                    if v1178:match("Auto") or v1178 == "AutoShotgun" then
                        if v1167 then
                            if v1166.data.Dual and not v1168.SecondGun then
                                v1166.shooting2 = true;
                            else
                                v1166.shooting = true;
                            end;
                            v196.s = v1166.data.RecoilSpeed * 2.5;
                        else
                            if v1166.data.Dual and not v1168.SecondGun then
                                v1166.shooting2 = false;
                            else
                                v1166.shooting = false;
                            end;
                            v196.s = 20;
                            l_v215_3();
                            if v1171 and v1171.Looped and v1171.Playing then
                                v1171:Stop();
                                if v1166.CurrentSound2 == v1171 then
                                    v1166.CurrentSound2 = nil;
                                elseif v1166.CurrentSound == v1171 then
                                    v1166.CurrentSound = nil;
                                end;
                                local v1179 = v1170 and v1170:FindFirstChild("ShotEnd", true);
                                if v1179 then
                                    v1179:Play();
                                end;
                            end;
                        end;
                    elseif v1178 == "Semi" or v1178:match("Shotgun") or v1178 == "Saw" then
                        if v1167 then
                            v1166:shoot(nil, v1168 or {});
                            v196.s = v1166.data.RecoilSpeed * 2.5;
                            task.delay(v1166.data.FireDelay, function() --[[ Line: 5664 ]]
                                -- upvalues: v1165 (ref), v1166 (copy), v1171 (ref), v1170 (copy)
                                if tick() - v1165 >= v1166.data.FireDelay * 0.8 and v1171 and v1171.Looped and v1171.Playing then
                                    v1171:Stop();
                                    if v1166.CurrentSound2 == v1171 then
                                        v1166.CurrentSound2 = nil;
                                    elseif v1166.CurrentSound == v1171 then
                                        v1166.CurrentSound = nil;
                                    end;
                                    local v1180 = v1170 and v1170:FindFirstChild("ShotEnd", true);
                                    if v1180 then
                                        v1180:Play();
                                    end;
                                end;
                            end);
                        end;
                    elseif v1178 == "Burst" then
                        if v1167 and not v1166.shooting then
                            v1166.shooting = true;
                            v196.s = v1166.data.RecoilSpeed * 2.5;
                            for v1181 = 1, v1166.data.BulletsPerBurstOrShotgun do
                                if not v1166:shoot(v1181) then
                                    task.wait(v1166.data.BurstDelay or v1166.data.FireDelay);
                                else
                                    break;
                                end;
                            end;
                            task.wait(v1166.data.FireDelay);
                            v1166.shooting = false;
                        elseif not v1167 then
                            v196.s = 15;
                        end;
                    end;
                elseif v1167 and v1166.reloading and not v1166.grenade and v1166.CanCancelReload and v1172 > 0 and not v1166.CancelReload then
                    v1166.CancelReload = true;
                    v1166:setshooting(false);
                    if v1166.data.Dual and v1166.shooting then
                        v1166:setshooting(false, {
                            SecondGun = true
                        });
                    end;
                end;
            end;
            l_l_Data_0_0.animationaction = function(v1182, v1183, v1184, v1185) --[[ Line: 5721 ]] --[[ Name: animationaction ]]
                -- upvalues: v30 (ref), l_new_0 (ref), l_new_1 (ref), v832 (ref), l_TweenService_0 (ref)
                v1185 = v1185 or 1;
                v1184 = v1184 or {};
                local v1186 = {};
                if typeof(v1183) == "table" then
                    v1186 = v1183;
                    v1183 = v1186.Action;
                end;
                if v1183 then
                    local l_Mag_1 = v1182.model:FindFirstChild("Mag");
                    local l_Handle_0 = v1182.model:FindFirstChild("Handle");
                    local l_Bolt_0 = v1182.model:FindFirstChild("Bolt");
                    local v1190 = nil;
                    v1190 = if v1182.WeldList then v1182.WeldList.Bolt else l_Bolt_0 and l_Bolt_0:FindFirstChild("Bolt_Weld") or l_Handle_0 and l_Handle_0:FindFirstChild("Bolt_Weld");
                    if v1183:match("WeaponReady") then
                        v1182.ReloadDone = true;
                    elseif not v1183:match("AmmoRestore") then
                        if v1183:match("Clean") and v1182.BloodTextures then
                            for _, v1192 in v1182.BloodTextures do
                                v1192.Transparency = 1;
                            end;
                        elseif v1183:match("Hitbox") and not v1182.data.HitboxEnabledByDefault then
                            if v1183:match("Start") then
                                v1182.HitboxEnabled = true;
                            elseif v1183:match("End") then
                                v1182.HitboxEnabled = false;
                            end;
                        else
                            local v1193 = v1183:match("Recoil") and v1186;
                            if v1183:match("ModelRestore") or v1183:match("ModelHide") then
                                v1182:setvisible(v1183:match("Restore"));
                            elseif v1183:match("BulletRestore") or v1183:match("BulletHide") then
                                v1193 = v30.Current:getAmmo();
                                local l_Ammo_1 = v1193.Ammo;
                                local l_Spare_0 = v1193.Spare;
                                local l_AmmoCapacity_0 = v1193.AmmoCapacity;
                                local v1197 = math.min(l_Ammo_1 + l_Spare_0, l_AmmoCapacity_0);
                                local v1198 = v1183:match("Restore") or false;
                                if v1182.data.HideBullets then
                                    for _, v1200 in v1182.Bullets do
                                        local v1201 = v1200.Name:match("%d+");
                                        v1201 = v1201 and tonumber(v1201);
                                        if v1201 and (v1198 and v1201 <= v1197 or not v1198) then
                                            if v1198 then

                                            end;
                                            v1182:setvisible(v1198, v1200);
                                        end;
                                    end;
                                end;
                            elseif v1183:match("Trail") then
                                v1193 = v1183:match("Enable") or false;
                                local l_FirstChild_3 = v1182.model:FindFirstChild("BladeTrail", true);
                                if l_FirstChild_3 then
                                    l_FirstChild_3.Enabled = v1193;
                                end;
                            elseif v1183 == "ResetPostShooting" then
                                v1182.waspostshooting = false;
                            elseif v1183 == "Show" or v1183 == "Hide" then
                                v1193 = v1183 == "Show" and 0 or 1;
                                local l_Target_0 = v1186.Target;
                                if l_Target_0 then
                                    if typeof(l_Target_0) == "string" then
                                        l_Target_0 = {
                                            l_Target_0
                                        };
                                    end;
                                    for _, v1205 in l_Target_0 do
                                        local v1206 = v1182.model:FindFirstChild(v1205) or v1182.model2 and v1182.model2:FindFirstChild(v1205);
                                        if v1206:IsA("BasePart") then
                                            local l_v1206_Descendants_0 = v1206:GetDescendants();
                                            table.insert(l_v1206_Descendants_0, v1206);
                                            for _, v1209 in l_v1206_Descendants_0 do
                                                if v1209:IsA("BasePart") or v1209:IsA("Decal") or v1209:IsA("Texture") then
                                                    v1209.LocalTransparencyModifier = v1193;
                                                    if v1209.Transparency == 1 then
                                                        v1209.Transparency = v1193;
                                                    end;
                                                end;
                                            end;
                                        end;
                                    end;
                                end;
                            elseif v1183 == "Drop" then
                                v1193 = v1186.Target;
                                if v1193 then
                                    if typeof(v1193) == "string" then
                                        v1193 = {
                                            v1193
                                        };
                                    end;
                                    for _, v1211 in v1193 do
                                        local l_FirstChild_4 = v1182.model:FindFirstChild(v1211);
                                        if l_FirstChild_4 and l_FirstChild_4:IsA("BasePart") then
                                            local v1213 = l_FirstChild_4:Clone();
                                            v1213.CanCollide = false;
                                            v1213.CFrame = l_FirstChild_4.CFrame;
                                            local l_l_FirstChild_4_Descendants_0 = l_FirstChild_4:GetDescendants();
                                            table.insert(l_l_FirstChild_4_Descendants_0, l_FirstChild_4);
                                            for _, v1216 in l_l_FirstChild_4_Descendants_0 do
                                                if v1216:IsA("BasePart") or v1216:IsA("Decal") or v1216:IsA("Texture") then
                                                    v1216.LocalTransparencyModifier = 1;
                                                end;
                                            end;
                                            l_l_FirstChild_4_Descendants_0 = v1213:GetDescendants();
                                            table.insert(l_l_FirstChild_4_Descendants_0, v1213);
                                            for _, v1218 in l_l_FirstChild_4_Descendants_0 do
                                                if v1218:IsA("BasePart") then
                                                    game:GetService("PhysicsService"):SetPartCollisionGroup(v1218, "Ammo");
                                                    v1218.CanCollide = true;
                                                elseif v1218:IsA("WeldConstraint") then
                                                    v1218.Enabled = true;
                                                elseif v1218:IsA("Weld") or v1218:IsA("Motor6D") then
                                                    v1218:Destroy();
                                                end;
                                            end;
                                            v1213.Parent = workspace:WaitForChild("Tracers");
                                            local v1219 = v1186.Direction or "Front";
                                            local v1220 = v1186.UnitDirection or nil;
                                            local v1221 = v1186.Force or 25;
                                            if v1186.Direction then
                                                local l_CFrame_3 = workspace.CurrentCamera.CFrame;
                                                local v1223 = v1219:match("Right") and l_CFrame_3.RightVector or v1219:match("Left") and -l_CFrame_3.RightVector or l_CFrame_3.LookVector;
                                                if v1220 then
                                                    v1223 = l_new_0(l_CFrame_3.Position, (l_CFrame_3 * v1220).Position).LookVector.Unit;
                                                end;
                                                v1213.Velocity = v1223 * v1221;
                                            else
                                                v1213.Velocity = l_new_1();
                                            end;
                                            game.Debris:AddItem(v1213, 4);
                                        end;
                                    end;
                                end;
                            elseif v1183 == "MagDrop" and l_Mag_1 then
                                if not v832 then
                                    v1193 = l_Mag_1:Clone();
                                    v1193.CanCollide = false;
                                    v1193.CFrame = l_Mag_1.CFrame;
                                    v1193:ClearAllChildren();
                                    v1193.LocalTransparencyModifier = 0;
                                    v832 = v1193;
                                    local l_Motor6D_0 = Instance.new("Motor6D");
                                    l_Motor6D_0.Part0 = v1193;
                                    l_Motor6D_0.Part1 = v1182.leftarm;
                                    l_Motor6D_0.Name = "MagWeld";
                                    l_Motor6D_0.C1 = v1182.leftarm.CFrame:toObjectSpace(l_Mag_1.CFrame);
                                    l_Motor6D_0.Parent = v1182.leftarm;
                                    l_Mag_1.LocalTransparencyModifier = 1;
                                    v1193.Parent = workspace;
                                    if v1182.leftarm:FindFirstChild("MagWeld") then
                                        v1182.leftarm:FindFirstChild("MagWeld"):Destroy();
                                    end;
                                    v832:ClearAllChildren();
                                    game:GetService("PhysicsService"):SetPartCollisionGroup(v832, "Ammo");
                                    v832.CanCollide = true;
                                    v832.Velocity = l_new_1();
                                    v832.Parent = workspace;
                                    game.Debris:AddItem(v832, 5);
                                    v832 = nil;
                                else
                                    if v1182.leftarm:FindFirstChild("MagWeld") then
                                        v1182.leftarm:FindFirstChild("MagWeld"):Destroy();
                                    end;
                                    if v832 and v832.Parent then
                                        v832:ClearAllChildren();
                                        v832.CanCollide = true;
                                        v832.Velocity = l_new_1();
                                        v832.Parent = workspace;
                                    end;
                                    game.Debris:AddItem(v832, 5);
                                    v832 = nil;
                                end;
                            elseif v1183 == "MagHold" and l_Mag_1 then
                                v1193 = l_Mag_1:Clone();
                                v1193.CanCollide = false;
                                v1193.CFrame = l_Mag_1.CFrame;
                                local l_v1193_FirstChild_0 = v1193:FindFirstChild(v1193.Name .. "_Weld");
                                if l_v1193_FirstChild_0 then
                                    l_v1193_FirstChild_0:Destroy();
                                end;
                                v1193.LocalTransparencyModifier = 0;
                                v832 = v1193;
                                local l_Motor6D_1 = Instance.new("Motor6D");
                                l_Motor6D_1.Part0 = v1193;
                                l_Motor6D_1.Part1 = v1182.leftarm;
                                l_Motor6D_1.Name = "MagWeld";
                                l_Motor6D_1.C1 = v1182.leftarm.CFrame:toObjectSpace(l_Mag_1.CFrame);
                                l_Motor6D_1.Parent = v1182.leftarm;
                                l_Mag_1.LocalTransparencyModifier = 1;
                                v1193.Parent = workspace;
                            elseif v1183 == "MagCreate" or v1183 == "MagCreate2" then
                                v1193 = v1183 == "MagCreate2";
                                local v1227 = l_Mag_1:Clone();
                                v1227.CanCollide = false;
                                v1227.CFrame = l_Mag_1.CFrame;
                                local l_v1227_FirstChild_0 = v1227:FindFirstChild(v1227.Name .. "_Weld");
                                if l_v1227_FirstChild_0 then
                                    l_v1227_FirstChild_0:Destroy();
                                end;
                                v1227.LocalTransparencyModifier = 0;
                                v832 = v1227;
                                local l_Weld_0 = Instance.new("Weld");
                                l_Weld_0.Part0 = v1227;
                                l_Weld_0.Part1 = v1193 and v1182.rightarm or v1182.leftarm;
                                l_Weld_0.C1 = v1193 and v1182.data.MagInHand2 or v1182.data.MagInHand;
                                l_Weld_0.Parent = v1193 and v1182.rightarm or v1182.leftarm;
                                l_Weld_0.Name = "MagWeld";
                                v1227.Parent = workspace;
                            elseif v1183 == "MagRestore" and l_Mag_1 then
                                v1193 = (v1186.Duration or 0) / v1185;
                                if v1193 and v832 then
                                    local l_MagWeld_0 = v1182.leftarm:FindFirstChild("MagWeld");
                                    if l_MagWeld_0 then
                                        l_TweenService_0:Create(l_MagWeld_0, TweenInfo.new(v1193), {
                                            C1 = v1182.leftarm.CFrame:ToObjectSpace(l_Mag_1.CFrame)
                                        }):Play();
                                        task.delay(v1193, function() --[[ Line: 6022 ]]
                                            -- upvalues: v832 (ref), l_Mag_1 (copy)
                                            v832:Destroy();
                                            v832 = nil;
                                            l_Mag_1.LocalTransparencyModifier = 0;
                                        end);
                                    end;
                                elseif v832 then
                                    v832:Destroy();
                                    v832 = nil;
                                end;
                                if not v1193 then
                                    l_Mag_1.LocalTransparencyModifier = 0;
                                end;
                            elseif v1183 == "MagThrow" then
                                v1193 = v1186.Direction or "Front";
                                local v1231 = v1186.UnitDirection or nil;
                                local v1232 = v1186.Force or 25;
                                if not v832 or v1186.ThrowOriginal then
                                    if v1182.leftarm:FindFirstChild("MagWeld") and not v1186.ThrowOriginal then
                                        v1182.leftarm:FindFirstChild("MagWeld"):Destroy();
                                    end;
                                    local v1233 = l_Mag_1:Clone();
                                    v1233:ClearAllChildren();
                                    local l_CFrame_4 = workspace.CurrentCamera.CFrame;
                                    local v1235 = v1193:match("Right") and l_CFrame_4.RightVector or v1193:match("Left") and -l_CFrame_4.RightVector or l_CFrame_4.LookVector;
                                    if v1231 then
                                        v1235 = l_new_0(l_CFrame_4.Position, (l_CFrame_4 * v1231).Position).LookVector.Unit;
                                    end;
                                    v1233.Velocity = v1235 * v1232;
                                    game:GetService("PhysicsService"):SetPartCollisionGroup(v1233, "Ammo");
                                    v1233.LocalTransparencyModifier = 0;
                                    v1233.CFrame = l_Mag_1.CFrame;
                                    v1233.CanCollide = true;
                                    game.Debris:AddItem(v1233, 5);
                                    l_Mag_1.LocalTransparencyModifier = 1;
                                    v1233.Parent = workspace;
                                else
                                    if v1182.leftarm:FindFirstChild("MagWeld") then
                                        v1182.leftarm:FindFirstChild("MagWeld"):Destroy();
                                    end;
                                    v832:ClearAllChildren();
                                    local l_CFrame_5 = workspace.CurrentCamera.CFrame;
                                    local v1237 = v1193:match("Right") and l_CFrame_5.RightVector or v1193:match("Left") and -l_CFrame_5.RightVector or l_CFrame_5.LookVector;
                                    if v1231 then
                                        v1237 = l_new_0(l_CFrame_5.Position, (l_CFrame_5 * v1231).Position).LookVector.Unit;
                                    end;
                                    v832.Velocity = v1237 * v1232;
                                    v832.CanCollide = true;
                                    game.Debris:AddItem(v832, 5);
                                    v832.Parent = workspace;
                                    v832 = nil;
                                end;
                            elseif v1183 == "MagDisappear" then
                                if not v832 then
                                    l_Mag_1.LocalTransparencyModifier = 1;
                                else
                                    v832:Destroy();
                                end;
                            elseif v1183 == "MagShow" then
                                l_Mag_1.LocalTransparencyModifier = 0;
                            elseif (v1183 == "BoltRestore" or v1183 == "BoltPull") and v1190 then
                                v1193 = v1190:GetAttribute("DefaultC1") or CFrame.new();
                                local v1238 = v1183:match("Pull") and v1182.data.BoltOffset or v1193;
                                local v1239 = v1182.data.BoltDuration or v1182.data.FireDelay * 0.5;
                                if v1182.BoltTween then
                                    v1182.BoltTween:Cancel();
                                    v1182.BoltTween:Destroy();
                                    v1182.BoltTween = nil;
                                end;
                                v1182.BoltTween = l_TweenService_0:Create(v1190, TweenInfo.new(v1239 / 2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false), {
                                    C1 = v1238
                                });
                                v1182.BoltTween:Play();
                            elseif v1183 == "WeldOffset" and v1186 then
                                v1193 = v1186.Target;
                                local v1240 = v1186.CF or l_new_0();
                                local v1241 = (v1186.Duration or v1184[7] or 0.1) / v1185;
                                local l_Handle_1 = v1182.currentmodel:FindFirstChild("Handle");
                                local v1243 = v1182.currentmodel:FindFirstChild(v1193) or v1182.model2 and v1182.model2:FindFirstChild(v1193);
                                v1193 = if v1182.WeldList then v1193 and v1182.WeldList[v1193] else v1193 and (v1243 and v1243:FindFirstChild(v1193 .. "_Weld") or l_Handle_1 and l_Handle_1:FindFirstChild(v1193 .. "_Weld"));
                                if v1193 and (v1193:IsA("Motor6D") or v1193:IsA("Weld")) then
                                    local v1244 = typeof(v1240) == "CFrame" and v1240 or v1193:GetAttribute("DefaultC1") or l_new_0();
                                    l_TweenService_0:Create(v1193, TweenInfo.new(v1241), {
                                        C1 = v1244
                                    }):Play();
                                end;
                            elseif v1183:match("Particle") and v1186 and v1186.Target then
                                v1193 = v1186.Target;
                                local v1245 = v1182.WeldList and v1182.WeldList[v1193];
                                v1245 = v1245 and v1245.Part1 or v1182.currentmodel:FindFirstChild(v1186.Target, true);
                                if v1245 and v1245:IsA("BasePart") then
                                    for _, v1247 in v1245:GetDescendants() do
                                        if v1247:IsA("ParticleEmitter") then
                                            if v1183:match("Emit") then
                                                v1247:Emit(v1247:GetAttribute("EmitCount") or v1247.Rate);
                                            else
                                                v1247.Enabled = v1183:match("Enable") and true or false;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                    if v1183 == "EjectCasing" or v1186 and v1186.EjectCasing then
                        v1182:dropcasing();
                    end;
                end;
            end;
            l_l_Data_0_0.setinspecting = function(v1248, v1249) --[[ Line: 6155 ]] --[[ Name: setinspecting ]]
                -- upvalues: l_Keybinds_0 (ref), v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v873 (copy), v879 (copy), v868 (ref), v867 (ref)
                if v1249 and not v1248.shieldDeployed and not v1248.aiming and not v1248.inspecting and v1248.data.InspectInfo and not v1248.reloading and not v1248.grenade and not v1248.postshooting and not v1248.shooting then
                    v1248.inspecting = true;
                    if v1248.ViewModelAnimations and v1248.ViewModelAnimations.Inspect then
                        local l_Inspect_0 = v1248.ViewModelAnimations.Inspect;
                        local l_InspectStart_0 = v1248.ViewModelAnimations.InspectStart;
                        local l_InspectLoop_0 = v1248.ViewModelAnimations.InspectLoop;
                        if l_InspectStart_0 then
                            l_InspectStart_0:Play();
                            l_InspectStart_0.Priority = Enum.AnimationPriority.Action4;
                            l_InspectStart_0.Looped = false;
                            local _ = tick();
                            repeat
                                task.wait();
                            until not l_InspectStart_0.IsPlaying or v1248.CancelInspect or v1248.puttingAway;
                            if not v1248.CancelInspect and not v1248.puttingAway then
                                l_InspectStart_0:Stop();
                                l_InspectLoop_0:Play();
                                l_InspectLoop_0.Looped = true;
                                l_InspectLoop_0.Priority = Enum.AnimationPriority.Action4;
                                local v1254 = false;
                                do
                                    local l_v1254_0 = v1254;
                                    l_InspectLoop_0.DidLoop:Once(function() --[[ Line: 6183 ]]
                                        -- upvalues: l_v1254_0 (ref)
                                        l_v1254_0 = true;
                                    end);
                                    repeat
                                        task.wait();
                                    until not IsKeyDown(l_Keybinds_0.InspectKeys) or not l_InspectLoop_0.IsPlaying or v1248.CancelInspect or v1248.puttingAway;
                                    l_InspectLoop_0.Looped = false;
                                    repeat
                                        task.wait();
                                    until not l_InspectLoop_0.IsPlaying or v1248.CancelInspect or v1248.puttingAway;
                                end;
                            end;
                            l_InspectLoop_0:Stop(0.1);
                        end;
                        if not v1248.CancelInspect and not v1248.puttingAway then
                            l_Inspect_0:Play();
                            l_Inspect_0.Priority = Enum.AnimationPriority.Action4;
                            local _ = tick();
                            repeat
                                task.wait();
                            until not l_Inspect_0.IsPlaying or v1248.CancelInspect or v1248.puttingAway;
                        end;
                        l_Inspect_0:Stop(0.2);
                    else
                        local l_status_3, l_result_3 = pcall(function() --[[ Line: 6214 ]]
                            -- upvalues: v1248 (copy), v855 (ref), v874 (ref), l_new_1 (ref), v856 (ref), v875 (ref), v873 (ref), v879 (ref)
                            for _, v1258 in pairs(v1248.data.InspectInfo) do
                                if v1258[7] > 0 and not v1248.CancelReload then
                                    local v1259, v1260, v1261 = v1258[4]:toEulerAnglesXYZ();
                                    local v1262, v1263, v1264 = v1258[2]:toEulerAnglesXYZ();
                                    v855.t = v1258[1].p;
                                    v874.t = l_new_1(v1262, v1263, v1264);
                                    v856.t = v1258[3].p;
                                    v875.t = l_new_1(v1259, v1260, v1261);
                                    v855.s = v1258[6];
                                    v875.s = v1258[6] * 1;
                                    v874.s = v1258[6] * 1;
                                    v856.s = v1258[6] * 1;
                                    local v1265, v1266, v1267 = v1258[5]:toEulerAnglesXYZ();
                                    v873.t = l_new_1(v1265, v1266, v1267);
                                    v873.s = v1258[6];
                                    v879.t = v1258[5].p;
                                    v879.s = v1258[6] * 1;
                                    local v1268 = v1258[8];
                                    local v1269 = v1258[9];
                                    if v1269 and v1269 ~= "" then
                                        v1248:playsound(v1269);
                                    end;
                                    if v1268 then
                                        v1248:animationaction(v1268, v1258);
                                    end;
                                    local v1270 = tick();
                                    repeat
                                        task.wait();
                                    until tick() - v1270 >= v1258[7] or v1248.CancelInspect or v1248.puttingAway;
                                end;
                            end;
                        end);
                        if not l_status_3 then
                            warn(l_result_3);
                        end;
                    end;
                    if not v1248.puttingAway then
                        v855.t = v1248.data.RightArmOffset.p;
                        v856.t = v1248.data.LeftArmOffset.p;
                        v879.t = v1248.data.WeaponOffset.p;
                        v856.s = 100;
                        v875.s = 100;
                        v855.s = 100;
                        v874.s = 100;
                        v879.s = 100;
                        v873.s = 100;
                        v874.t = v868;
                        v875.t = v867;
                        v873.t = l_new_1();
                        wait(0.1);
                    end;
                    v1248.inspecting = false;
                    v1248.CancelInspect = false;
                    return;
                else
                    if v1249 == false and v1248.inspecting then
                        v1248.CancelInspect = true;
                        task.wait(0.2);
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.playsound = function(v1273, v1274) --[[ Line: 6309 ]] --[[ Name: playsound ]]
                local v1275 = typeof(v1274) == "table" and v1274 or {};
                local v1276 = typeof(v1274) == "string" and v1274 or v1274.Name;
                local l_Handle_2 = v1273.currentmodel:FindFirstChild("Handle");
                local v1278 = l_Handle_2 and l_Handle_2:FindFirstChild(v1276);
                if v1278 and v1278:IsA("Sound") then
                    local v1279 = v1278:Clone();
                    v1279.Name = "CLONE_" .. v1278.Name;
                    v1279.Parent = l_Handle_2;
                    v1279.TimePosition = v1275.TimePosition or v1279.TimePosition;
                    v1279.PlaybackSpeed = v1275.PlaybackSpeed or v1279.PlaybackSpeed;
                    task.delay(v1275.Delay or 0, function() --[[ Line: 6323 ]]
                        -- upvalues: v1279 (copy), v1275 (copy)
                        v1279:Play();
                        if v1275.Duration then
                            task.delay(v1275.Duration, function() --[[ Line: 6326 ]]
                                -- upvalues: v1279 (ref)
                                v1279:Stop();
                            end);
                        end;
                    end);
                    local v1280 = nil;
                    do
                        local l_v1280_0 = v1280;
                        l_v1280_0 = v1279.Ended:Connect(function() --[[ Line: 6332 ]]
                            -- upvalues: v1279 (copy), l_v1280_0 (ref)
                            v1279:Destroy();
                            l_v1280_0:Disconnect();
                        end);
                    end;
                end;
            end;
            l_l_Data_0_0.reloadarms = function(v1282) --[[ Line: 6340 ]] --[[ Name: reloadarms ]]
                -- upvalues: l_WeaponFix_0 (ref), l_SprintOffset_0 (ref), l_l_l_BaseSpeed_0_2_0 (ref), v879 (copy), v885 (copy), l_Angles_0 (ref), v883 (copy), l_new_1 (ref), v889 (copy), l_l_l_Bullet_0_0_0 (ref), l_new_0 (ref), v856 (copy), v855 (copy), v875 (copy), v874 (copy), v871 (ref), v872 (ref)
                l_WeaponFix_0 = v1282.data.WeaponFix;
                l_SprintOffset_0 = v1282.data.SprintOffset;
                l_l_l_BaseSpeed_0_2_0 = v1282.data.MainOffset;
                v879.t = v1282.data.WeaponOffset.p;
                if v1282.data.WeaponOffset2 then
                    v885.t = v1282.data.WeaponOffset2.p;
                end;
                local v1283, v1284, v1285 = (v1282.data.WeaponOffsetAngle or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
                v883.t = l_new_1(v1283, v1284, v1285);
                v883.s = v879.s;
                if v1282.data.WeaponOffsetAngle2 then
                    local v1286, v1287, v1288 = (v1282.data.WeaponOffsetAngle2 or l_Angles_0(0, 0, 0)):toEulerAnglesXYZ();
                    v889.t = l_new_1(v1286, v1287, v1288);
                    v889.s = v879.s;
                end;
                local v1289, v1290, v1291 = v1282.data.LeftArmOffsetAngle:toEulerAnglesXYZ();
                local v1292, v1293, v1294 = v1282.data.RightArmOffsetAngle:toEulerAnglesXYZ();
                local v1295 = l_new_1(v1289, v1290, v1291);
                local v1296 = l_new_1(v1292, v1293, v1294);
                l_l_l_Bullet_0_0_0 = v1282.data.MainOffsetAngle or l_new_0();
                v856.t = v1282.data.LeftArmOffset.p;
                v855.t = v1282.data.RightArmOffset.p;
                v875.t = v1295;
                v874.t = v1296;
                local l_RightArmEquipOffsetAngle_1 = v1282.data.RightArmEquipOffsetAngle;
                local l_LeftArmEquipOffsetAngle_1 = v1282.data.LeftArmEquipOffsetAngle;
                v871 = l_RightArmEquipOffsetAngle_1 and l_new_1(l_RightArmEquipOffsetAngle_1:toEulerAnglesXYZ()) or Vector3.new(-1.3962633609771729, 0, 0, 0);
                v872 = l_LeftArmEquipOffsetAngle_1 and l_new_1(l_LeftArmEquipOffsetAngle_1:toEulerAnglesXYZ()) or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
            end;
            l_l_Data_0_0.reloaddata = function(v1299) --[[ Line: 6384 ]] --[[ Name: reloaddata ]]
                -- upvalues: l_Data_0 (copy), v0 (ref), l_v829_0 (ref)
                local l_l_Data_0_1 = l_Data_0;
                l_l_Data_0_1 = v0 and l_l_Data_0_1:Clone() or l_l_Data_0_1;
                local v1301 = require(l_l_Data_0_1);
                if v0 then
                    l_l_Data_0_1:Destroy();
                end;
                v1299.data = v1301;
                l_v829_0 = v1299.data;
                v1299:reloadarms();
                if v1299.FiremodeIndex then
                    v1299:switchFiremode(v1299.FiremodeIndex);
                end;
                v1299:setinspecting(false);
                print("RELOADING WEAPON DATA!");
            end;
            l_l_Data_0_0.getAmmo = function(v1302) --[[ Line: 6397 ]] --[[ Name: getAmmo ]]
                -- upvalues: l_Character_0 (ref)
                if v1302.AmmoType then
                    local l_l_Character_0_FirstChild_2 = l_Character_0:FindFirstChild(v1302.AmmoType .. "Ammo");
                    if l_l_Character_0_FirstChild_2 then
                        l_l_Character_0_FirstChild_2 = l_l_Character_0_FirstChild_2.Value;
                        local l_Value_14 = l_Character_0:FindFirstChild(v1302.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value;
                        local l_Value_15 = l_Character_0:FindFirstChild(v1302.AmmoType .. "AmmoMax").Value;
                        return {
                            Ammo = l_l_Character_0_FirstChild_2, 
                            SecondaryAmmo = l_Character_0:FindFirstChild(v1302.AmmoType .. "Ammo"):GetAttribute("SecondaryAmmo"), 
                            Spare = l_Value_15, 
                            AmmoCapacity = l_Value_14
                        };
                    else
                        return {};
                    end;
                else
                    return;
                end;
            end;
            if not game.Lighting:FindFirstChild("ReloadDOF") then
                local _ = script.ReloadDOF;
            end;
            l_l_Data_0_0.setreloading = function(v1307, _) --[[ Line: 6425 ]] --[[ Name: setreloading ]]
                -- upvalues: v42 (ref), v44 (ref), v28 (ref), l_Character_0 (ref), v86 (ref), v27 (ref), v854 (ref), v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v879 (copy), v832 (ref), v826 (copy), l_Remotes_0 (ref), v868 (ref), v867 (ref), l_status_0 (ref)
                if v1307.postshooting or v42 or not v44 or v1307.reloading or v28.TaseActive then
                    return;
                elseif v1307.inspecting then
                    v1307.CancelInspect = true;
                    return;
                else
                    local v1309 = v1307:getAmmo();
                    local l_Value_16 = l_Character_0:FindFirstChild(v1307.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value;
                    if l_Value_16 <= v1309.Ammo and (not v1309.SecondaryAmmo or l_Value_16 <= v1309.SecondaryAmmo) then
                        return;
                    else
                        local function v1313(v1311) --[[ Line: 6442 ]] --[[ Name: cancelWait ]]
                            -- upvalues: v1307 (copy)
                            local v1312 = tick();
                            repeat
                                task.wait();
                            until v1311 <= tick() - v1312 or v1307.CancelReload or v1307.puttingAway or v1307.ReloadDone;
                        end;
                        if not v1307.reloading then
                            v1307:setshooting(false);
                            if v1307.data.Dual and v1307.shooting then
                                v1307:setshooting(false, {
                                    SecondGun = true
                                });
                            end;
                            v1307.reloading = true;
                            local v1314 = v86("G", "J");
                            if v27.Sprinting and not v1314 or v27.Crouching then
                                v27:SetSprint(false);
                            end;
                            v1307:setaim(false);
                            local v1315 = false;
                            local v1316 = false;
                            local v1317 = 0;
                            while task.wait() do
                                local v1318 = v1307:getAmmo();
                                local l_Value_17 = l_Character_0:FindFirstChild(v1307.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value;
                                if (l_Value_17 > v1318.Ammo or v1318.SecondaryAmmo and l_Value_17 > v1318.SecondaryAmmo) and l_Character_0:FindFirstChild(v1307.AmmoType .. "AmmoMax").Value > 0 and not v1307.CancelReload and v44 then
                                    v1317 = v1317 + 1;
                                    v1315 = true;
                                    v1316 = l_Character_0:FindFirstChild(v1307.AmmoType .. "Ammo").Value <= 0;
                                    local v1320 = v1316 and "LongerReload" or "Reload";
                                    local v1321 = v1316 and v1307.data.LongerReloadSequence or v1307.data.ReloadSequence;
                                    local v1322 = v1307.data[v1320 .. "Time"] or v1307.data.ReloadTime;
                                    local v1323 = 1;
                                    if not v1322 then
                                        v1322 = 0;
                                        for _, v1325 in pairs(v1321) do
                                            v1322 = v1322 + (v1325[7] or 0);
                                        end;
                                    end;
                                    v1322 = v1322 and v1322 / v854;
                                    if v1322 then
                                        local v1326 = 0;
                                        for _, v1328 in pairs(v1321) do
                                            v1326 = v1326 + (v1328[7] or 0);
                                        end;
                                        v1323 = v1326 / v1322;
                                        local v1329 = 0;
                                        for _, v1331 in pairs(v1321) do
                                            v1329 = v1329 + (v1331[7] or 0) / v1323;
                                        end;
                                    end;
                                    print("RELOAD TIME: " .. v1322);
                                    local v1332 = v1307.toolAnimations[v1320] or v1307.toolAnimations.Reload;
                                    if v1332 then
                                        v1332:Play();
                                        v1332.Priority = Enum.AnimationPriority.Action2;
                                        v1332:AdjustSpeed(v1332.Length / v1322);
                                    end;
                                    local v1333 = v1307.ViewModelAnimations and (v1307.ViewModelAnimations[v1320] or v1307.ViewModelAnimations.Reload);
                                    if v1333 and v1317 % 2 == 0 and v1307.ViewModelAnimations[v1333.Name .. "2"] then
                                        v1333 = v1307.ViewModelAnimations[v1333.Name .. "2"];
                                    end;
                                    do
                                        local l_v1323_0 = v1323;
                                        if v1333 then
                                            local v1335 = v1307.ViewModelAnimations and v1307.ViewModelAnimations.ReloadStart;
                                            if v1335 and v1317 == 1 then
                                                v1335:Play(0, 1, 1);
                                                v1335.Priority = Enum.AnimationPriority.Action4;
                                                v1313(v1335.Length);
                                                if v1307.CancelReload then
                                                    v1335:Stop(0);
                                                end;
                                            end;
                                            if not v1307.CancelReload then
                                                if v1307.CurReloadAnimation then

                                                end;
                                                v1322 = v1322 * 1;
                                                v1333.Priority = Enum.AnimationPriority.Action4;
                                                v1333:Play(0.05, 1, 1);
                                                v1333:AdjustSpeed(v1333.Length / v1322);
                                                v1333.Priority = Enum.AnimationPriority.Action4;
                                                v1307.CurReloadAnimation = v1333;
                                                v1313(v1322 * 1);
                                                if v1307.CancelReload then
                                                    v1333:Stop(0);
                                                end;
                                            end;
                                        else
                                            local _ = tick();
                                            local l_status_4, l_result_4 = pcall(function() --[[ Line: 6597 ]]
                                                -- upvalues: v1321 (copy), v1307 (copy), v855 (ref), v874 (ref), l_new_1 (ref), v856 (ref), v875 (ref), v879 (ref), l_v1323_0 (ref)
                                                for _, v1338 in pairs(v1321) do
                                                    if v1338[7] > 0 and not v1307.CancelReload then
                                                        local v1339, v1340, v1341 = v1338[4]:toEulerAnglesXYZ();
                                                        local v1342, v1343, v1344 = v1338[2]:toEulerAnglesXYZ();
                                                        v855.t = v1338[1].p;
                                                        v874.t = l_new_1(v1342, v1343, v1344);
                                                        v856.t = v1338[3].p;
                                                        v875.t = l_new_1(v1339, v1340, v1341);
                                                        v879.t = v1338[5].p;
                                                        v855.s = v1338[6];
                                                        v875.s = v1338[6] * l_v1323_0;
                                                        v874.s = v1338[6] * l_v1323_0;
                                                        v856.s = v1338[6] * l_v1323_0;
                                                        v879.s = v1338[6] * l_v1323_0;
                                                        local v1345 = v1338[8];
                                                        local v1346 = v1338[9];
                                                        if v1346 and v1346 ~= "" then
                                                            v1307:playsound(v1346);
                                                        end;
                                                        if v1345 then
                                                            v1307:animationaction(v1345, v1338, l_v1323_0);
                                                        end;
                                                        local v1347 = tick();
                                                        repeat
                                                            task.wait();
                                                        until tick() - v1347 >= v1338[7] / l_v1323_0 or v1307.CancelReload or v1307.puttingAway;
                                                    end;
                                                end;
                                            end);
                                            if not l_status_4 then
                                                warn(l_result_4);
                                            end;
                                        end;
                                        if v832 then
                                            v832:Destroy();
                                            v832 = nil;
                                        end;
                                        if not v1307.CancelReload and not v1307.puttingAway and v44 then
                                            local l_Value_18 = l_Character_0:FindFirstChild(v1307.AmmoType .. "Ammo").Value;
                                            local _ = l_Character_0:FindFirstChild(v1307.AmmoType .. "Ammo"):GetAttribute("SecondaryAmmo");
                                            local v1352 = v826:FindFirstChild("Primary") or v826:FindFirstChild("Secondary");
                                            v1352 = v1352 and v1352.Name or v1307.AmmoType;
                                            local l_l_Character_0_FirstChild_3 = l_Character_0:FindFirstChild(v1352 .. "Ammo");
                                            local l_l_Character_0_FirstChild_4 = l_Character_0:FindFirstChild(v1352 .. "AmmoMax");
                                            local _ = l_Character_0:FindFirstChild(v1352 .. "AmmoMax"):FindFirstChild("Capacity").Value;
                                            local l_Value_20 = l_Character_0:FindFirstChild(v1352 .. "AmmoMax"):FindFirstChild("MagCapacity").Value;
                                            if l_l_Character_0_FirstChild_3 then
                                                local l_l_l_Character_0_FirstChild_3_Attribute_0 = l_l_Character_0_FirstChild_3:GetAttribute("SecondaryAmmo");
                                                local l_Value_21 = l_l_Character_0_FirstChild_4.Value;
                                                local v1359 = v1307.ReloadType == "Single" and math.min(1, l_Value_21) or math.min(l_Value_20 - l_l_Character_0_FirstChild_3.Value, l_Value_21);
                                                l_Value_21 = math.max(0, l_Value_21 - v1359);
                                                local v1360 = l_l_l_Character_0_FirstChild_3_Attribute_0 and (v1307.ReloadType == "Single" and math.min(1, l_Value_21) or math.min(l_Value_20 - l_l_l_Character_0_FirstChild_3_Attribute_0, l_Value_21)) or 0;
                                                if l_l_Character_0_FirstChild_3.Value ~= l_Value_20 or l_l_l_Character_0_FirstChild_3_Attribute_0 and l_l_l_Character_0_FirstChild_3_Attribute_0 ~= l_Value_20 then
                                                    l_l_Character_0_FirstChild_4.Value = l_l_Character_0_FirstChild_4.Value - (v1359 + v1360);
                                                    l_l_Character_0_FirstChild_3.Value = l_l_Character_0_FirstChild_3.Value + v1359;
                                                    if l_l_l_Character_0_FirstChild_3_Attribute_0 then
                                                        l_l_Character_0_FirstChild_3:SetAttribute("SecondaryAmmo", l_l_l_Character_0_FirstChild_3_Attribute_0 + v1360);
                                                    end;
                                                    if not v826 or not v826:FindFirstChild("Mag") or l_l_Character_0_FirstChild_3.Value > 0 then

                                                    end;
                                                    if v826:GetAttribute("Quickdraw") then
                                                        v826:SetAttribute("Quickdraw", 1);
                                                    end;
                                                end;
                                            end;
                                            l_Remotes_0.Reload:FireServer(v1307.tool.Name, v1307.ReloadType);
                                            v1352 = v1307:getAmmo();
                                            l_l_Character_0_FirstChild_3 = l_Character_0:FindFirstChild(v1307.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value;
                                            if v1307.ReloadType ~= "Normal" and l_Value_18 + 1 >= l_Character_0:FindFirstChild(v1307.AmmoType .. "AmmoMax"):FindFirstChild("MagCapacity").Value then
                                                --[[ close >= 13 ]]
                                                break;
                                            end;
                                        end;
                                    end;
                                else
                                    break;
                                end;
                            end;
                            local v1361 = v1307.ViewModelAnimations and v1307.ViewModelAnimations.ReloadEnd;
                            if v1361 then
                                if not v1307.CancelReload then
                                    v1361:Play(0);
                                    v1361.Priority = Enum.AnimationPriority.Action4;
                                end;
                                v1313(v1361.Length);
                                if v1307.CancelReload then
                                    v1361:Stop(0);
                                end;
                            end;
                            if v1307.data.ChamberSequence and v1316 and v1315 and #(v1307.data.ChamberSequence or v1307.data.PostShootSequence) > 0 and l_Character_0:FindFirstChild(v1307.AmmoType .. "Ammo").Value > 0 then
                                v1307:postshoot(true);
                            end;
                            if v832 then
                                v832:ClearAllChildren();
                                wait();
                                v832:Destroy();
                            end;
                            v1307.ReloadDone = false;
                            if v1307.data.HideBullets then
                                for _, v1363 in v1307.model:GetDescendants() do
                                    if v1363.Name:match("Bullet_") then
                                        local v1364 = v1363.Name:match("%d+");
                                        v1364 = v1364 and tonumber(v1364);
                                        if v1364 and v1364 <= l_Character_0:FindFirstChild(v1307.AmmoType .. "Ammo").Value then
                                            v1307:setvisible(true, v1363);
                                        end;
                                    end;
                                end;
                            end;
                            if v1307.leftarm:FindFirstChild("MagWeld") then
                                v1307.leftarm:FindFirstChild("MagWeld"):Destroy();
                            end;
                            if v1307.data.QuickdrawAced and v1307.data.QuickdrawAced == 0 then
                                v1307.data.QuickdrawAced = 1;
                            end;
                            v855.t = v1307.data.RightArmOffset.p;
                            v856.t = v1307.data.LeftArmOffset.p;
                            v879.t = v1307.data.WeaponOffset.p;
                            v856.s = 100;
                            v875.s = 100;
                            v855.s = 100;
                            v874.s = 100;
                            v879.s = 100;
                            v874.t = v868;
                            v875.t = v867;
                            task.wait(0.1);
                            if v1307.model and v1315 and v1307.data.HideOnEmpty then
                                v1307:setvisible(true);
                            end;
                            v1307.reloading = false;
                            v1307.CancelReload = false;
                            l_status_0 = 0;
                        end;
                        return;
                    end;
                end;
            end;
            l_l_Data_0_0.setcharging = function(v1365, _) --[[ Line: 6812 ]] --[[ Name: setcharging ]]
                -- upvalues: v42 (ref), v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v879 (copy)
                if v1365.reloading or v42 then
                    return;
                else
                    v1365.reloading = true;
                    v1365.CancelCharge = false;
                    v1365.ChargeTime = tick();
                    if v1365.toolAnimations.Charge then
                        v1365.toolAnimations.Charge:Play(v1365.data.MaxCharge, 1, 0);
                        v1365.toolAnimations.Charge.TimePosition = 0.1;
                        v1365.toolAnimations.Charge.Priority = Enum.AnimationPriority.Action;
                    end;
                    for _, v1368 in pairs(v1365.data.ChargeAnim) do
                        if v1368[7] > 0 and not v1365.CancelCharge then
                            local v1369, v1370, v1371 = v1368[4]:toEulerAnglesXYZ();
                            local v1372, v1373, v1374 = v1368[2]:toEulerAnglesXYZ();
                            v855.t = v1368[1].p;
                            v874.t = l_new_1(v1372, v1373, v1374);
                            v856.t = v1368[3].p;
                            v875.t = l_new_1(v1369, v1370, v1371);
                            v879.t = v1368[5].p;
                            v855.s = v1368[6];
                            v875.s = v1368[6];
                            v874.s = v1368[6];
                            v856.s = v1368[6];
                            v879.s = v1368[6];
                            local v1375 = v1368[8];
                            if v1375 ~= "" then
                                local v1376 = v1365.model and v1365.model:FindFirstChild("Handle") and v1365.model:FindFirstChild("Handle"):FindFirstChild(v1375);
                                if v1376 then
                                    v1376:Play();
                                end;
                            end;
                            local v1377 = tick();
                            repeat
                                wait();
                            until tick() - v1377 >= v1368[7] or v1365.CancelCharge or v1365.puttingAway;
                        end;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.usegadget = function(v1378, v1379, v1380) --[[ Line: 6854 ]] --[[ Name: usegadget ]]
                -- upvalues: v42 (ref), v41 (ref), v855 (copy), v856 (copy), v879 (copy), v875 (copy), v874 (copy), v873 (copy), l_new_1 (ref), v868 (ref), v867 (ref)
                local v1381 = v1378.data.GadgetType or "Throwable";
                if v1381 == "Gun" then
                    v1378:setshooting(v1379);
                    return;
                else
                    if v1381 == "Throwable" then
                        if v1379 then
                            local v1382 = v1378:getAmmo();
                            local l_Ammo_2 = v1382.Ammo;
                            local l_Spare_1 = v1382.Spare;
                            local l_AmmoCapacity_1 = v1382.AmmoCapacity;
                            if v1378.reloading or v1378.attacking or v1378.aiming or v1378.postshooting or v42 or v1378.grenade then
                                return;
                            else
                                v1378.ThrowType = v1380 and typeof(v1380) == "string" and v1380:match("Short") and "Short" or "Long";
                                if v1378.inspecting then
                                    v1378:setinspecting(false);
                                end;
                                v1378.cooking = true;
                                local v1386 = l_Ammo_2 - 1 <= 0;
                                if v41 and l_Ammo_2 and l_Ammo_2 > 0 then
                                    v1378.reloading = true;
                                    v1378.grenade = true;
                                    local l_UseSequence_0 = v1378.data.UseSequence;
                                    local l_Start_2 = v1378.toolAnimations.Start;
                                    local l_Cook_2 = v1378.toolAnimations.Cook;
                                    local _ = v1378.toolAnimations.Attack;
                                    if l_Start_2 then
                                        l_Start_2:Play();
                                        l_Start_2.Priority = Enum.AnimationPriority.Action2;
                                    end;
                                    if l_Cook_2 then
                                        l_Cook_2:Play();
                                        l_Cook_2.Priority = Enum.AnimationPriority.Action;
                                    end;
                                    v1378:playAnimation(l_UseSequence_0, true, true);
                                    if v1386 and v1378.data.HideOnEmpty then
                                        v1378:setvisible(false);
                                    end;
                                    if not v1378.puttingAway then
                                        local v1391 = v1378:getAmmo();
                                        l_Ammo_2 = v1391.Ammo;
                                        l_Spare_1 = v1391.Spare;
                                        l_AmmoCapacity_1 = v1391.AmmoCapacity;
                                        if v1386 and l_Spare_1 > 0 then
                                            v1378.grenade = false;
                                            v1378.reloading = false;
                                            v1378:setreloading(true);
                                        else
                                            v855.t = v1378.data.RightArmOffset.p;
                                            v856.t = v1378.data.LeftArmOffset.p;
                                            v879.t = v1378.data.WeaponOffset.p;
                                            v856.s = 50;
                                            v875.s = 50;
                                            v855.s = 50;
                                            v874.s = 50;
                                            v873.s = 50;
                                            v879.s = 50;
                                            v873.t = l_new_1();
                                            v874.t = v868;
                                            v875.t = v867;
                                            wait(0.2);
                                        end;
                                    end;
                                    v1378.grenade = false;
                                    v1378.reloading = false;
                                    return;
                                end;
                            end;
                        else
                            v1378.cooking = false;
                        end;
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.usemelee = function(v1392, v1393) --[[ Line: 6959 ]] --[[ Name: usemelee ]]
                if v1392.shieldDeployed then
                    return;
                else
                    v1392.UseMelee = v1393;
                    if v1393 then
                        v1392:meleeattack();
                    end;
                    return;
                end;
            end;
            l_l_Data_0_0.meleeattack = function(v1394, _) --[[ Line: 6969 ]] --[[ Name: meleeattack ]]
                -- upvalues: v42 (ref), l_ActiveMutators_0 (ref), l_CurrentCamera_0 (ref), l_acos_0 (ref), l_Character_0 (ref), v86 (ref), l_HitEvent_0 (ref), v126 (ref), l_Remotes_0 (ref), v826 (copy), l_PropDamage_0 (ref), l_HumanoidRootPart_0 (ref), l_Humanoid_0 (ref), v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v879 (copy), v868 (ref), v867 (ref)
                if v1394.toolAnimations.Charge then
                    v1394.toolAnimations.Charge:Stop();
                end;
                if v1394.CancelCharge or v42 or v1394.transitioning then
                    return;
                else
                    v1394.CancelCharge = true;
                    local v1396 = {};
                    local l_FriendlyFire_2 = l_ActiveMutators_0:FindFirstChild("FriendlyFire");
                    local v1398 = true;
                    local v1399 = 0;
                    local v1400 = {};
                    local v1401 = v1394.data.MaxHits or 1;
                    local function _(v1402, v1403) --[[ Line: 6988 ]] --[[ Name: isInFOV ]]
                        -- upvalues: l_CurrentCamera_0 (ref), l_acos_0 (ref)
                        if (v1403 or 1.2217304763960306) > l_acos_0((math.clamp(l_CurrentCamera_0.CFrame.LookVector:Dot((v1402.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                            return true;
                        else
                            return false;
                        end;
                    end;
                    local function v1408(v1405) --[[ Line: 7006 ]] --[[ Name: stopHit ]]
                        -- upvalues: v1400 (copy), v1399 (ref), v1401 (copy), v1396 (copy), v1398 (ref)
                        v1400[v1405] = true;
                        v1399 = v1399 + 1;
                        if v1401 <= v1399 then
                            for _, v1407 in pairs(v1396) do
                                if v1407 then
                                    v1407:Disconnect();
                                end;
                            end;
                            v1398 = false;
                        end;
                    end;
                    local function v1439(v1409, _) --[[ Line: 7018 ]] --[[ Name: hitWithMelee ]]
                        -- upvalues: v1398 (ref), v1400 (copy), l_Character_0 (ref), l_FriendlyFire_2 (copy), l_CurrentCamera_0 (ref), l_acos_0 (ref), v1408 (copy), v1394 (copy), v86 (ref), l_HitEvent_0 (ref), v126 (ref), l_Remotes_0 (ref), v826 (ref), l_PropDamage_0 (ref)
                        if not v1398 then
                            return;
                        else
                            if v1409 and v1409.Parent and not v1400[v1409.Parent] then
                                local v1411 = v1409:HasTag("Destructable") and v1409 or v1409.Parent:HasTag("Destructable") and v1409.Parent;
                                if not v1409.Parent:HasTag("CanBeHit") and v1409.Parent:FindFirstChild("Health") and not v1409:IsDescendantOf(l_Character_0) and (not v1409:IsDescendantOf(workspace.Criminals) or l_FriendlyFire_2) and not v1409.Parent:IsDescendantOf(workspace.Citizens) and not v1409.Parent:IsDescendantOf(workspace.Bodies) and not v1409:IsDescendantOf(workspace.CurrentCamera) then
                                    if (1.2217304763960306 or 1.2217304763960306) > l_acos_0((math.clamp(l_CurrentCamera_0.CFrame.LookVector:Dot((v1409.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                                        v1408(v1409.Parent);
                                        local v1412 = v1394.data.Damage * (v86("E", "L") and 2 or 1);
                                        if l_FriendlyFire_2 and v1409:IsDescendantOf(workspace.Criminals) then
                                            v1412 = v1412 * (l_FriendlyFire_2.Value / 100);
                                        end;
                                        local l_p_3 = l_CurrentCamera_0.CFrame.p;
                                        local v1414 = CFrame.new(l_p_3, v1409.Position).LookVector * 30;
                                        local _, v1416, v1417 = workspace:FindPartOnRayWithWhitelist(Ray.new(l_p_3, v1414), {
                                            v1409
                                        });
                                        local l_lookVector_2 = l_Character_0.PrimaryPart.CFrame.lookVector;
                                        local v1419 = Vector3.new(math.random(-10, 10) / 10, -0.8, math.random(-10, 10) / 10);
                                        v1416 = v1416 or l_lookVector_2;
                                        v1417 = v1417 or v1419;
                                        if v1409.Parent:FindFirstChild("Humanoid") then
                                            l_HitEvent_0:Fire(v1409, v1416, v1417, v1414 + Vector3.new(0, -1, 0, 0), v1412 * 1, true, "Flesh", false, nil, "Front", nil);
                                        end;
                                        local v1420 = Color3.fromRGB(255, 0, 0);
                                        v126(v1420, true);
                                        l_Remotes_0.MeleeDamage:FireServer(v1409.Parent, v1394.tool, v1394.data.Knockback);
                                        v1394.BloodTransparency = math.max(0.75, (v1394.BloodTransparency or 1) - 0.05);
                                        if v1394.BloodTextures then
                                            for _, v1422 in v1394.BloodTextures do
                                                v1422.Transparency = v1394.BloodTransparency;
                                            end;
                                            return;
                                        end;
                                    end;
                                elseif v1409.Parent:HasTag("CanBeHit") or v1409.Parent.Name == "Door" or v1409.Parent.Name == "BrokenDrill" or v1409:IsDescendantOf(workspace.Cameras) or v1409:IsDescendantOf(workspace.Glass) or v1409:IsDescendantOf(workspace.Citizens) or v1409:HasTag("Glass") then
                                    if (1.0471975511965976 or 1.2217304763960306) > l_acos_0((math.clamp(l_CurrentCamera_0.CFrame.LookVector:Dot((v1409.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                                        v1408(v1409.Parent);
                                        local v1423 = v1394.data.Damage * (v86("E", "L") and 2 or 1);
                                        if v1409:IsDescendantOf(workspace.Citizens) then
                                            local l_p_4 = l_CurrentCamera_0.CFrame.p;
                                            local v1425 = CFrame.new(l_p_4, v1409.Position).LookVector * 30;
                                            local _, v1427, v1428 = workspace:FindPartOnRayWithWhitelist(Ray.new(l_p_4, v1425), {
                                                v1409
                                            });
                                            local l_lookVector_3 = l_Character_0.PrimaryPart.CFrame.lookVector;
                                            local v1430 = Vector3.new(math.random(-10, 10) / 10, -0.8, math.random(-10, 10) / 10);
                                            v1427 = v1427 or l_lookVector_3;
                                            v1428 = v1428 or v1430;
                                            l_HitEvent_0:Fire(v1409, v1427, v1428, v1425 + Vector3.new(0, -1, 0, 0), v1423 * 1, true, "Flesh", false, nil, "Front", nil);
                                        end;
                                        l_Remotes_0.HitObject:FireServer(v1394.tool, v1409, true, nil, nil, nil, v1394.data.Damage);
                                        return;
                                    end;
                                elseif v1411 and (1.0471975511965976 or 1.2217304763960306) > l_acos_0((math.clamp(l_CurrentCamera_0.CFrame.LookVector:Dot((v1409.Position - l_CurrentCamera_0.CFrame.Position).Unit), -1, 1))) then
                                    v1408(v1409.Parent);
                                    local v1431 = v1394.data.Damage * (v86("E", "L") and 2 or 1);
                                    local l_p_5 = l_CurrentCamera_0.CFrame.p;
                                    local v1433 = CFrame.new(l_p_5, v1409.Position).LookVector * 30;
                                    local _, v1435, v1436 = workspace:FindPartOnRayWithWhitelist(Ray.new(l_p_5, v1433), {
                                        v1409
                                    });
                                    v1436 = v1436 or CFrame.new(l_p_5, v1433).LookVector * -1;
                                    local v1437 = {
                                        Attacker = l_Character_0, 
                                        Hit = v1409, 
                                        Source = v826, 
                                        Position = v1435 or v1409.Position, 
                                        Normal = v1436, 
                                        Direction = -v1436.Unit, 
                                        Damage = v1431, 
                                        ClientEffects = {}
                                    };
                                    local _ = l_PropDamage_0.damageProp(v1437);
                                end;
                            end;
                            return;
                        end;
                    end;
                    local v1440 = v1394.model:FindFirstChild("Blade") or v1394.model:FindFirstChildOfClass("BasePart");
                    local v1441 = OverlapParams.new();
                    v1441.MaxParts = 60;
                    v1441.FilterDescendantsInstances = {
                        workspace.CurrentCamera, 
                        l_Character_0
                    };
                    v1394.HitboxEnabled = not v1394.ViewModelAnimations or v1394.data.HitboxEnabledByDefault and true or false;
                    if v1440 then
                        task.spawn(function() --[[ Line: 7135 ]]
                            -- upvalues: v1398 (ref), v42 (ref), v1394 (copy), v1440 (copy), v1441 (copy), v1439 (copy)
                            while v1398 and not v42 and not v1394.puttingAway and not v1394.transitioning do
                                if v1394.HitboxEnabled then
                                    for _, v1443 in (workspace:GetPartBoundsInBox(v1440.CFrame, v1440.Size, v1441)) do
                                        v1439(v1443, v1440);
                                    end;
                                end;
                                task.wait();
                            end;
                        end);
                    else
                        for _, v1445 in pairs(v1394.model:GetChildren()) do
                            if v1445:IsA("BasePart") then
                                v1445.CanTouch = true;
                                v1445.CanQuery = true;
                                table.insert(v1396, (v1445.Touched:connect(function(v1446) --[[ Line: 7156 ]]
                                    -- upvalues: v1439 (copy), v1445 (copy)
                                    v1439(v1446, v1445);
                                end)));
                            end;
                        end;
                    end;
                    local v1447 = v1394.model and v1394.model:FindFirstChild("Handle");
                    local l_FirstChild_5 = v1394.model:FindFirstChild("BladeTrail", true);
                    if v1447 then
                        for _, v1450 in v1447:GetChildren() do
                            if v1450:IsA("Sound") then
                                v1450:Stop();
                            end;
                        end;
                    end;
                    local v1451 = "Left";
                    local l_LookVector_1 = l_HumanoidRootPart_0.CFrame.LookVector;
                    local l_RightVector_0 = l_HumanoidRootPart_0.CFrame.RightVector;
                    local l_Unit_2 = (l_LookVector_1 * l_Humanoid_0.MoveDirection.Z + l_RightVector_0 * l_Humanoid_0.MoveDirection.X).Unit;
                    if math.abs(l_Unit_2.X) > 0.1 then
                        v1451 = l_Unit_2.X > 0 and "Right" or "Left";
                    elseif math.abs(l_Unit_2.Z) > 0.1 then
                        v1451 = l_Unit_2.Z > 0 and "Front" or "Back";
                    end;
                    if v1394.toolAnimations.Attack then
                        v1394.toolAnimations.Attack:Play();
                        v1394.toolAnimations.Attack.Priority = Enum.AnimationPriority.Action2;
                    end;
                    local v1455 = v1394.data["StrikeAnim" .. (v1394.StrikeIndex or "")];
                    local v1456 = v1394.StrikeIndex == 2 and "Left" or "Right";
                    if not v1455 and not v1394.ViewModelAnimations then
                        v1394.StrikeIndex = 1;
                        v1455 = v1394.data.StrikeAnim;
                    elseif v1394.ViewModelAnimations and v1394.StrikeIndex and v1394.StrikeIndex > 2 then
                        v1394.StrikeIndex = 1;
                    end;
                    v1394.StrikeIndex = v1394.StrikeIndex and v1394.StrikeIndex + 1 or 2;
                    local v1457 = v86("E", "L") and 1.5 or 1;
                    v1457 = (v1394.data.AttackSpeed or 1) * v1457;
                    v1394.meleeswing = true;
                    local v1458 = v1394.ViewModelAnimations and (v1394.ViewModelAnimations.Attacks and v1394.ViewModelAnimations.Attacks["Attack" .. v1451] or v1394.ViewModelAnimations["Attack" .. v1456] or v1394.ViewModelAnimations.Attack);
                    local v1459 = 1;
                    if v1458 then
                        if v1394.CurrentAttackAnim then
                            v1394.CurrentAttackAnim:Stop(0);
                            v1394.CurrentAttackAnim = nil;
                        end;
                        v1457 = v1457 * 0.7;
                        v1458:Play(0, 1, v1457);
                        v1394.CurrentAttackAnim = v1458;
                        v1459 = v1458.Length / v1457;
                        task.wait(v1459 * 0.7);
                    else
                        for _, v1461 in pairs(v1455) do
                            if v1461[7] > 0 then
                                local v1462 = v1461[6] * v1457;
                                local v1463, v1464, v1465 = v1461[4]:toEulerAnglesXYZ();
                                local v1466, v1467, v1468 = v1461[2]:toEulerAnglesXYZ();
                                v855.t = v1461[1].p;
                                v874.t = l_new_1(v1466, v1467, v1468);
                                v856.t = v1461[3].p;
                                v875.t = l_new_1(v1463, v1464, v1465);
                                v879.t = v1461[5].p;
                                v855.s = v1462;
                                v875.s = v1462;
                                v874.s = v1462;
                                v856.s = v1462;
                                v879.s = v1462;
                                local v1469 = v1461[8];
                                local v1470 = v1461[9];
                                if v1469 ~= "" and typeof(v1469) == "string" then
                                    local v1471 = v1394.model and v1394.model:FindFirstChild("Handle") and v1394.model:FindFirstChild("Handle"):FindFirstChild(v1469);
                                    if v1471 then
                                        v1471:Play();
                                    end;
                                end;
                                if v1470 then
                                    v1394:animationaction(v1470, v1461);
                                end;
                                local v1472 = tick();
                                repeat
                                    task.wait();
                                until tick() - v1472 >= v1461[7] / v1457 or v1394.puttingAway;
                            end;
                        end;
                    end;
                    v1398 = false;
                    for _, v1474 in pairs(v1396) do
                        if v1474 then
                            v1474:Disconnect();
                        end;
                    end;
                    if l_FirstChild_5 then
                        l_FirstChild_5.Enabled = false;
                    end;
                    v1394.CancelCharge = false;
                    v1394.reloading = false;
                    v1394.CancelReload = false;
                    if not v1394.puttingAway then
                        if v1394.UseMelee then
                            v1394:meleeattack();
                        else
                            v855.t = v1394.data.RightArmOffset.p;
                            v856.t = v1394.data.LeftArmOffset.p;
                            v879.t = v1394.data.WeaponOffset.p;
                            v856.s = 200;
                            v875.s = 200;
                            v855.s = 200;
                            v874.s = 200;
                            v879.s = 200;
                            v874.t = v868;
                            v875.t = v867;
                            wait(0.1);
                        end;
                    end;
                    v1394.meleeswing = false;
                    return;
                end;
            end;
            l_l_Data_0_0.attack = function(v1475, v1476, v1477, _) --[[ Line: 7317 ]] --[[ Name: attack ]]
                if v1475.inspecting then
                    v1475.CancelInspect = true;
                    return;
                elseif v1476 == "Gun" then
                    v1475:setshooting(true, v1477);
                    return;
                elseif v1476 == "Melee" then
                    v1475:usemelee(true);
                    return;
                else
                    if v1476 == "Gadget" then
                        v1475:usegadget(true, v1477);
                    end;
                    return;
                end;
            end;
            local function v1498(v1479) --[[ Line: 7333 ]] --[[ Name: applyAppeareance_Deprecated ]]
                -- upvalues: v59 (ref), l_Character_0 (ref), l_Assets_0 (ref), l_new_0 (ref), l_Angles_0 (ref), l_HeartWatch_0 (ref)
                local l_FirstChild_6 = v59:WaitForChild("OwnedWeapons"):FindFirstChild("(Suit)0");
                local v1481 = "Default";
                if l_FirstChild_6 then
                    v1481 = l_FirstChild_6.Skin.Value;
                end;
                local l_Color_0 = l_Character_0.Head.Color;
                local l_Color_1 = l_Character_0["Right Arm"].Color;
                local l_Color_2 = l_Character_0["Left Arm"].Color;
                local l_Arms_0 = l_Assets_0.Character.Arms;
                local v1486 = l_Arms_0.Appeareance:FindFirstChild(v1481) or l_Arms_0.Appeareance:FindFirstChild("Default");
                if v1486 then
                    v1486 = v1486:Clone();
                    local v1487 = v1486.Right:Clone();
                    local v1488 = v1486.Left:Clone();
                    for _, v1490 in {
                        v1487, 
                        v1488
                    } do
                        v1490.Name = v1490.Name .. "Appeareance";
                        local v1491 = v1490 == v1487 and v1479.RSkin or v1479.LSkin;
                        if typeof(v1479) == "table" then
                            v1491 = v1490 == v1487 and v1479[2] or v1479[1];
                        end;
                        for _, v1493 in pairs(v1490:GetDescendants()) do
                            if v1493:IsA("BasePart") then
                                v1493.CanCollide = false;
                                v1493.CanTouch = false;
                                v1493.CastShadow = false;
                                v1493.CollisionGroup = "Ammo";
                                if v1493.Name:match("Skin") then
                                    v1493.Color = v1490 == v1487 and l_Color_1 or v1490 == v1488 and l_Color_2 or l_Color_0;
                                end;
                                if v1493 ~= v1490.PrimaryPart then
                                    local l_WeldConstraint_1 = Instance.new("WeldConstraint");
                                    l_WeldConstraint_1.Parent = v1490.PrimaryPart;
                                    l_WeldConstraint_1.Part0 = v1490.PrimaryPart;
                                    l_WeldConstraint_1.Part1 = v1493;
                                    l_WeldConstraint_1.Name = l_WeldConstraint_1.Part0.Name .. "-to-" .. l_WeldConstraint_1.Part1.Name;
                                end;
                                v1493.Anchored = false;
                            end;
                        end;
                        v1490:PivotTo(v1491.CFrame * l_new_0(0, 0.35, 0) * l_Angles_0(-3.141592653589793, math.rad(v1490 == v1487 and -0 or 0), 0));
                        local l_WeldConstraint_2 = Instance.new("WeldConstraint");
                        l_WeldConstraint_2.Parent = v1491;
                        l_WeldConstraint_2.Part0 = v1491;
                        l_WeldConstraint_2.Part1 = v1490.PrimaryPart;
                        v1490.Parent = v1491;
                    end;
                    if v1488 then
                        local _ = v1488:FindFirstChild("Watch");
                    end;
                    local v1497 = v1488 and v1488:FindFirstChild("WatchFace", true);
                    task.delay(0.1, function() --[[ Line: 7402 ]]
                        -- upvalues: v1497 (copy), l_HeartWatch_0 (ref)
                        if v1497 then
                            l_HeartWatch_0.Adornee = v1497;
                            v1497.Color = l_HeartWatch_0:GetAttribute("WatchColor") or Color3.fromRGB(209, 87, 89);
                        end;
                    end);
                    v1486:Destroy();
                end;
            end;
            if not v12 then
                v12 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("GetCharacterData"):InvokeServer();
            end;
            local function v1519(v1499, v1500) --[[ Line: 7419 ]] --[[ Name: applyAppeareance ]]
                -- upvalues: v59 (ref), v1498 (copy), v12 (ref), l_CharInfo_0 (ref), l_new_0 (ref), l_Angles_0 (ref), l_HeartWatch_0 (ref), l_Assets_0 (ref)
                local l_Using_1 = v59:WaitForChild("Classes"):WaitForChild("Using");
                if not (l_Using_1 and l_Using_1:FindFirstChild("Character")) then
                    return v1498(v1499);
                else
                    local v1502 = l_Using_1 and l_Using_1.Character.Value;
                    local v1503 = v12 and v12[v1502];
                    local v1504 = game:GetService("ReplicatedStorage"):WaitForChild("SkinService"):WaitForChild("CharacterCustomization"):WaitForChild("ViewmodelItems"):WaitForChild("ViewmodelBase"):Clone();
                    l_CharInfo_0.applyCharacterSkinToViewmodel(v1504, v1503);
                    for _, v1506 in v1504:GetDescendants() do
                        if v1506:IsA("BasePart") then
                            v1506.Anchored = false;
                            v1506.CanCollide = false;
                            v1506.Massless = false;
                            v1506.CastShadow = false;
                        end;
                    end;
                    v1504:ScaleTo(v1500 or 1);
                    local v1507 = nil;
                    local v1508 = nil;
                    if typeof(v1499) == "table" then
                        v1507 = v1499[1];
                        v1508 = v1499[2];
                    else
                        v1507 = v1499:FindFirstChild("LSkin");
                        v1508 = v1499:FindFirstChild("RSkin");
                    end;
                    local v1509 = typeof(v1499) == "table";
                    local l_Left_0 = v1504:FindFirstChild("Left");
                    local l_Right_0 = v1504:FindFirstChild("Right");
                    local v1512 = l_new_0(0, 0.15, 0) * CFrame.Angles(3.141592653589793, 0, 0);
                    if v1509 then
                        v1512 = l_new_0(0, 0.35, 0) * l_Angles_0(0, -1.5707963267948966, 0);
                    end;
                    l_Left_0:PivotTo(v1507:GetPivot() * v1512);
                    l_Left_0.Parent = v1507;
                    local l_WeldConstraint_3 = Instance.new("WeldConstraint");
                    l_WeldConstraint_3.Parent = v1507;
                    l_WeldConstraint_3.Part0 = v1507;
                    l_WeldConstraint_3.Part1 = l_Left_0;
                    l_WeldConstraint_3.Name = l_WeldConstraint_3.Part0.Name .. "-to-" .. l_WeldConstraint_3.Part1.Name;
                    local v1514 = l_new_0(0, 0.15, 0) * CFrame.Angles(3.141592653589793, 0, 0);
                    if v1509 then
                        v1514 = l_new_0(0, 0.35, 0) * l_Angles_0(0, 3.141592653589793, 0);
                    end;
                    l_Right_0:PivotTo(v1508:GetPivot() * v1514);
                    l_Right_0.Parent = v1508;
                    local l_WeldConstraint_4 = Instance.new("WeldConstraint");
                    l_WeldConstraint_4.Parent = v1508;
                    l_WeldConstraint_4.Part0 = v1508;
                    l_WeldConstraint_4.Part1 = l_Right_0;
                    l_WeldConstraint_4.Name = l_WeldConstraint_4.Part0.Name .. "-to-" .. l_WeldConstraint_4.Part1.Name;
                    if l_Left_0 then
                        local _ = l_Left_0:FindFirstChild("Watch");
                    end;
                    local v1517 = l_Left_0 and l_Left_0:FindFirstChild("WatchFace", true);
                    task.delay(0.1, function() --[[ Line: 7490 ]]
                        -- upvalues: v1517 (copy), l_HeartWatch_0 (ref)
                        if v1517 then
                            l_HeartWatch_0.Adornee = v1517;
                            v1517.Color = l_HeartWatch_0:GetAttribute("WatchColor") or Color3.fromRGB(209, 87, 89);
                        end;
                    end);
                    local _ = l_Assets_0.Character.Arms;
                    return;
                end;
            end;
            l_l_Data_0_0.load = function(v1520) --[[ Line: 7566 ]] --[[ Name: load ]]
                -- upvalues: v18 (ref), v30 (ref), v95 (ref), v28 (ref), v86 (ref), v27 (ref), v854 (ref), l_GunInfo_0 (ref), v849 (copy), v851 (ref), v840 (copy), v839 (copy), v826 (copy), l_Character_0 (ref), l_Assets_0 (ref), v26 (ref), v59 (ref), v1519 (copy), l_HumanoidRootPart_0 (ref), v855 (copy), v874 (copy), v871 (ref), v856 (copy), v875 (copy), v872 (ref), l_new_1 (ref), v868 (ref), v867 (ref), l_RunService_0 (ref), l_l_BaseSpeed_0_2 (ref), l_l_l_BaseSpeed_0_2_0 (ref), l_l_l_Bullet_0_0_0 (ref), l_new_0 (ref), l_l_Bullet_0_0 (ref), v10 (ref), v831 (ref), l_Parts_0 (ref), l_LocalPlayer_0 (ref)
                if v1520.loaded then
                    print("Already loaded");
                    return;
                else
                    v1520.loaded = true;
                    v18 = v1520.tool;
                    v1520.tool.CanBeDropped = false;
                    v30.Current = v1520;
                    local l_Model_1 = Instance.new("Model");
                    l_Model_1.Name = "Model";
                    l_Model_1.Parent = v95;
                    local v1522 = v1520.data.Dual and v1520.tool:FindFirstChild("Model2");
                    local v1523 = nil;
                    if v1522 then
                        v1523 = l_Model_1:Clone();
                        v1523.Name = "Model2";
                        v1523.Parent = v95;
                    end;
                    if v1520.tool.Name == "Mask" then
                        v28.Mode = "FirstPerson";
                    end;
                    if v1520.data.StatsChanged == nil and v1520.data.WeaponType == "Melee" then
                        local v1524 = 1;
                        if v86("E", "L") then
                            v1524 = 2;
                        end;
                        for _, v1526 in pairs(v1520.data.ChargeAnim) do
                            if v1526[7] > 0 then
                                v1526[7] = v1526[7] / v1524;
                            end;
                        end;
                        v1520.data.MaxCharge = v1520.data.MaxCharge / 2;
                        v1520.data.StatsChanged = true;
                    end;
                    local v1527 = v1520.foundAttachments or {};
                    local v1528 = v1520.foundCategories or {};
                    if not v1520.laserPointers then
                        local _ = {};
                    end;
                    if v1520.tool then
                        v27:SetLocalTransparency(1, nil, true);
                    end;
                    if v1520.data.StatsChanged == nil and v1520.data.WeaponType == "Gun" then
                        print("CHANGING WEAPON STATS");
                        v1520.data.StatsChanged = true;
                        local v1530 = 1;
                        local v1531 = 1;
                        local v1532 = 0;
                        local v1533 = 0;
                        local v1534 = 1;
                        v854 = 1;
                        local v1535 = 1;
                        local v1536 = 1;
                        if l_GunInfo_0.weaponClass[v1520.tool.Name] then
                            for _, v1538 in pairs(l_GunInfo_0.weaponClass[v1520.tool.Name]) do
                                if v1538 == "Pistol" then
                                    if v86("M", "l") then
                                        v1533 = v1533 + 20;
                                    end;
                                    if v86("M", "L") then
                                        v1533 = v1533 + 20;
                                    end;
                                    if v86("M", "P") then
                                        v854 = v854 + 0.5;
                                    end;
                                    if v86("M", "H") then
                                        v1536 = v1536 + 0.75;
                                        v1520.tool:SetAttribute("ReducedRecoil", 0.1);
                                    elseif v86("M", "h") then
                                        v1536 = v1536 + 0.5;
                                        v1520.tool:SetAttribute("ReducedRecoil", 0.25);
                                    end;
                                    if v86("M", "d") then
                                        v1535 = v1535 + 1;
                                    end;
                                    if v86("M", "D") then
                                        v1520.data.QuickdrawAced = 1;
                                    end;
                                elseif v1538 == "Shotgun" then
                                    if v86("E", "p") then
                                        v1520.data.BulletsPerBurstOrShotgun = v1520.data.BulletsPerBurstOrShotgun + 1;
                                    end;
                                    if v86("E", "h") then
                                        v1530 = v1530 + 0.05;
                                    end;
                                    if v86("E", "H") then
                                        v1530 = v1530 + 0.05;
                                    end;
                                    if v86("E", "d") then
                                        v854 = v854 + 0.15;
                                    end;
                                    if v86("E", "D") then
                                        v854 = v854 + 0.35;
                                    end;
                                elseif v1538 == "Sniper" and v86("T", "H") then
                                    v854 = v854 + 0.5;
                                end;
                            end;
                        end;
                        if v1520.data.FireMode == "Semi" then
                            if v86("T", "d") then
                                v1530 = v1530 + 0.05;
                            end;
                            if v86("T", "h") then
                                v1535 = v1535 + 1;
                            end;
                        end;
                        if v1520.data.FireMode:match("Saw") and v86("E", "L") then
                            v1534 = v1534 * 0.5;
                        end;
                        v1527 = {};
                        v1528 = {};
                        local v1539 = {};
                        for _, v1541 in pairs(v1520.tool:GetDescendants()) do
                            if v1541:IsA("BasePart") and game:GetService("CollectionService"):HasTag(v1541, "Attachment") and v1527[v1541.Name] == nil and l_GunInfo_0.AttachmentInfo[v1541.Name] then
                                v1527[v1541.Name] = true;
                                local v1542 = l_GunInfo_0.AttachmentTypes[v1541.Name];
                                if v1542 then
                                    v1528[v1542] = true;
                                end;
                                local l_v1541_Attribute_0 = v1541:GetAttribute("ForceHide");
                                if l_v1541_Attribute_0 then
                                    v1528[l_v1541_Attribute_0] = true;
                                end;
                                if l_GunInfo_0.AttachmentInfo[v1541.Name].Accuracy then
                                    if l_GunInfo_0.AttachmentInfo[v1541.Name].Accuracy[2] then
                                        v1531 = v1531 + l_GunInfo_0.AttachmentInfo[v1541.Name].Accuracy[1];
                                    else
                                        v1532 = v1532 + l_GunInfo_0.AttachmentInfo[v1541.Name].Accuracy[1];
                                    end;
                                end;
                                if l_GunInfo_0.AttachmentInfo[v1541.Name].Damage then
                                    if l_GunInfo_0.AttachmentInfo[v1541.Name].Damage[2] then
                                        v1530 = v1530 + l_GunInfo_0.AttachmentInfo[v1541.Name].Damage[1];
                                    else
                                        v1533 = v1533 + l_GunInfo_0.AttachmentInfo[v1541.Name].Damage[1];
                                    end;
                                end;
                                local l_ExtraStats_0 = l_GunInfo_0.AttachmentInfo[v1541.Name].ExtraStats;
                                if l_ExtraStats_0 then
                                    for v1545, v1546 in l_ExtraStats_0 do
                                        local v1547 = typeof(v1546) == "table" and v1546[1] or v1546;
                                        if typeof(v1546) == "table" and (v1546[2] or false) and typeof(v1520.data[v1545]) == typeof(v1547) then
                                            if typeof(v1547) == "number" and v1520.data[v1545] then
                                                local l_data_0 = v1520.data;
                                                l_data_0[v1545] = l_data_0[v1545] + v1547;
                                            elseif typeof(v1547) == "table" then
                                                for _, v1550 in ipairs(v1547) do
                                                    table.insert(v1520.data[v1545], v1550);
                                                end;
                                            end;
                                        else
                                            v1520.data[v1545] = v1547;
                                        end;
                                    end;
                                end;
                                if v1541:FindFirstChild("LaserPointer") then
                                    table.insert(v1539, v1541);
                                end;
                            end;
                        end;
                        v1520.foundAttachments = v1527;
                        v1520.foundCategories = v1528;
                        v1520.laserPointers = v1539;
                        v1520.data.FireDelay = v1520.data.FireDelay * v1534;
                        v1520.data.AimSpeed = v1520.data.AimSpeed * v1535;
                        v849.s = v1520.data.AimSpeed;
                        local l_Damage_4 = v1520.data.Damage;
                        local l_Accuracy_0 = v1520.data.Accuracy;
                        local v1553 = l_Damage_4 * v1530 + v1533;
                        v1520.data.Damage = v1553;
                        v851 = -100 * math.clamp(l_Accuracy_0 * v1531 + v1532 or 95, 0, 100) + 10000;
                        v1520.Accuracy = v851;
                        for _, v1555 in pairs(v1520.data.ReloadSequence) do
                            if v1555[7] > 0 then
                                v1555[7] = v1555[7] / v854;
                            end;
                        end;
                        if v1520.data.LongerReloadSequence then
                            for _, v1557 in pairs(v1520.data.LongerReloadSequence) do
                                if v1557[7] > 0 then
                                    v1557[7] = v1557[7] / v854;
                                end;
                            end;
                        end;
                        if v1520.data.RecoilDirectionPattern then
                            for _, v1559 in pairs(v1520.data.RecoilDirectionPattern) do
                                v1559 = v1559 / v1536;
                            end;
                        end;
                        if v1520.data.RecoilCameraDirection then
                            v1520.data.RecoilCameraDirection = v1520.data.RecoilCameraDirection / v1536;
                        end;
                    end;
                    local v1560 = v1520.tool:Clone();
                    local v1561 = v1522 and v1522:Clone();
                    local function v1571(v1562, v1563) --[[ Line: 7816 ]] --[[ Name: cloneChildren ]]
                        -- upvalues: v840 (ref), v839 (ref)
                        for _, v1565 in pairs(v1562:GetDescendants()) do
                            if v1565 and v1565:IsA("BasePart") then
                                if v1565.Parent == v1562 then
                                    v1565.Parent = v1563;
                                end;
                                v1565.CanCollide = false;
                                local v1566 = v1565:GetAttribute("AimShow") or false;
                                local l_v1565_Attribute_0 = v1565:GetAttribute("AimHide");
                                local l_v1565_Attribute_1 = v1565:GetAttribute("AltAim");
                                if v1566 or l_v1565_Attribute_0 then
                                    if l_v1565_Attribute_1 then
                                        v840[v1565] = v1566;
                                    else
                                        v839[v1565] = v1566;
                                    end;
                                    for _, v1570 in v1565:GetChildren() do
                                        if v1570:IsA("Decal") or v1570:IsA("Texture") then
                                            if l_v1565_Attribute_1 then
                                                v840[v1570] = v1566;
                                            else
                                                v839[v1570] = v1566;
                                            end;
                                        end;
                                    end;
                                end;
                            elseif v1565:IsA("Weld") or v1565:IsA("Motor6D") then
                                v1565:Destroy();
                            elseif v1565:IsA("Model") and not v1565.Name:match("Model2") and v1565.Parent == v1562 then
                                v1565.Parent = v1563;
                            end;
                        end;
                        v1562:Destroy();
                    end;
                    v1571(v1560, l_Model_1);
                    if v1523 then
                        v1571(v1561, v1523);
                    end;
                    for _, v1573 in v1520.tool:GetDescendants() do
                        if v1573:IsA("SurfaceGui") or v1573:IsA("ParticleEmitter") or v1573:IsA("Beam") or v1573:IsA("Trail") then
                            if not v1573:GetAttribute("OriginalEnabled") then
                                v1573:SetAttribute("OriginalEnabled", v1573.Enabled);
                            end;
                            v1573.Enabled = false;
                        elseif v1573:IsA("Texture") or v1573:IsA("Decal") then
                            v1573.LocalTransparencyModifier = 1;
                            if v1573:GetAttribute("BloodTexture") then
                                if not v1520.BloodTextures then
                                    v1520.BloodTextures = {};
                                end;
                                table.insert(v1520.BloodTextures, v1573);
                            end;
                        elseif v1573:IsA("BasePart") then
                            v1573.LocalTransparencyModifier = 1;
                        end;
                    end;
                    local v1574 = {};
                    local v1575 = nil;
                    v1520.WeldList = {};
                    v1520.Bullets = {};
                    local l_v826_Attribute_0 = v826:GetAttribute("Hidden");
                    local v1577 = {};
                    local function v1578(v1579, v1580) --[[ Line: 7894 ]] --[[ Name: scan ]]
                        -- upvalues: v1575 (ref), v1520 (copy), v1574 (copy), l_v826_Attribute_0 (copy), v1577 (ref), v1578 (copy)
                        v1575 = v1580 or v1575;
                        for _, v1582 in pairs(v1579:GetChildren()) do
                            if v1582:IsA("BasePart") and not v1582:GetAttribute("PhysicsWeld") then
                                local l_v1575_0 = v1575;
                                local l_v1582_Attribute_0 = v1582:GetAttribute("WeldTo");
                                if l_v1582_Attribute_0 then
                                    l_v1575_0 = v1579:FindFirstChild(l_v1582_Attribute_0) or l_v1575_0.Parent:FindFirstChild(l_v1582_Attribute_0, true) or l_v1575_0;
                                end;
                                if l_v1575_0 then
                                    local l_Motor6D_2 = Instance.new("Motor6D");
                                    l_Motor6D_2.Name = ("%s_Weld"):format(v1582.Name);
                                    l_Motor6D_2.Part0 = l_v1575_0;
                                    l_Motor6D_2.Part1 = v1582;
                                    l_Motor6D_2.C0 = l_v1575_0.CFrame:ToObjectSpace(v1582.CFrame);
                                    l_Motor6D_2.Parent = v1582;
                                    v1520.WeldList[v1582.Name] = l_Motor6D_2;
                                    l_Motor6D_2:SetAttribute("DefaultC1", l_Motor6D_2.C1);
                                end;
                                v1575 = v1580 or v1582;
                                table.insert(v1574, v1582);
                                v1582.CastShadow = false;
                                v1582.CanCollide = false;
                                v1582.CanTouch = false;
                                v1582.CanQuery = false;
                                if l_v826_Attribute_0 and v1582:GetAttribute("BaseTransparency") then
                                    v1582.Transparency = v1582:GetAttribute("BaseTransparency");
                                end;
                                if v1582.Name:match("Bullet_") then
                                    table.insert(v1520.Bullets, v1582);
                                end;
                            elseif v1582:IsA("SurfaceGui") and l_v826_Attribute_0 then
                                v1582.Enabled = true;
                            elseif v1582:GetAttribute("OriginalEnabled") then
                                v1582.Enabled = v1582:GetAttribute("OriginalEnabled");
                            end;
                            if v1582:FindFirstChild("LaserPointer") then
                                table.insert(v1577, v1582);
                            end;
                            v1578(v1582, v1580);
                        end;
                    end;
                    v1578(l_Model_1, (l_Model_1:FindFirstChild("Handle")));
                    if v1523 then
                        v1578(v1523, (v1523:FindFirstChild("Handle2")));
                        v1520.model2 = v1523;
                    end;
                    for _, v1587 in pairs(v1574) do
                        v1587.Anchored = false;
                    end;
                    v1520.model = l_Model_1;
                    local l_Handle_3 = l_Model_1:FindFirstChild("Handle");
                    if v826.Name == "Mask" then
                        if l_Handle_3 then
                            l_Handle_3.Transparency = 1;
                        end;
                        for _, v1590 in pairs(l_Character_0:GetDescendants()) do
                            if v1590:IsA("ParticleEmitter") then
                                v1590:Destroy();
                            end;
                        end;
                        print("Rendering mask invisible");
                    end;
                    local l_Arms_2 = l_Assets_0.Character.Arms;
                    local v1592 = l_Arms_2.Right:Clone();
                    v1592.Parent = v95;
                    v26.BindModel(v1592, v1592.Arm);
                    v1520.rightarm = v1592.Arm;
                    v1520.rightarmmodel = v1592;
                    local v1593 = l_Arms_2.Left:Clone();
                    v1593.Parent = v95;
                    v26.BindModel(v1593, v1593.Arm);
                    v1520.leftarm = v1593.Arm;
                    v1520.leftarmmodel = v1593;
                    local l_FirstChild_7 = v59:WaitForChild("OwnedWeapons"):FindFirstChild("(Suit)0");
                    local v1595 = "Default";
                    if l_FirstChild_7 then
                        v1595 = l_FirstChild_7.Skin.Value;
                    end;
                    v1519({
                        v1520.leftarm, 
                        v1520.rightarm
                    }, 1);
                    v1520.rightweld = Instance.new("Motor6D", v1520.rightarm);
                    v1520.rightweld.C0 = CFrame.new(0, -100, 0);
                    v1520.rightweld.Part0 = l_HumanoidRootPart_0;
                    v1520.rightweld.Part1 = v1520.rightarm;
                    v1520.leftweld = Instance.new("Motor6D", v1520.leftarm);
                    v1520.leftweld.C0 = CFrame.new(0, -100, 0);
                    v1520.leftweld.Part0 = l_HumanoidRootPart_0;
                    v1520.leftweld.Part1 = v1520.leftarm;
                    v1520.weaponweld = Instance.new("Weld", v1520.model.Handle);
                    v1520.weaponweld.Part0 = v1520.rightarm;
                    v1520.weaponweld.Part1 = v1520.model.Handle;
                    v1520.model:MakeJoints();
                    v1520.leftarm:MakeJoints();
                    v1520.rightarm:MakeJoints();
                    v1520.rightweld.C0 = CFrame.new(0, -100, 0);
                    v1520.leftweld.C0 = CFrame.new(0, -100, 0);
                    if v1520.model2 then
                        v1520.model2:MakeJoints();
                        v1520.weaponweld2 = Instance.new("Weld", v1520.model2.Handle2);
                        v1520.weaponweld2.Part0 = v1520.leftarm;
                        v1520.weaponweld2.Part1 = v1520.model2.Handle2;
                    end;
                    local l_Idle_0 = v1520.toolAnimations.Idle;
                    local l_Equip_0 = v1520.toolAnimations.Equip;
                    local l_Aim_0 = v1520.toolAnimations.Aim;
                    if l_Idle_0 then
                        l_Idle_0:Play();
                        l_Idle_0.Priority = Enum.AnimationPriority.Movement;
                    end;
                    if l_Equip_0 then
                        l_Equip_0:Play();
                        l_Equip_0.Priority = Enum.AnimationPriority.Action3;
                    end;
                    if l_Aim_0 then
                        l_Aim_0.Priority = Enum.AnimationPriority.Action;
                    end;
                    v855.p = v1520.data.RightArmEquipOffset and v1520.data.RightArmEquipOffset.p or Vector3.new(0.8999999761581421, -2.75, -1.2000000476837158, 0);
                    v874.p = v871 or Vector3.new(-1.3962633609771729, 0, 0, 0);
                    v856.p = v1520.data.LeftArmEquipOffset and v1520.data.LeftArmEquipOffset.p or Vector3.new(-0.05000000074505806, -3, -1, 0);
                    v875.p = v872 or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
                    local v1599 = v1520.data.EquipTime or 0.75;
                    local v1600 = 0.75 / v1599;
                    v855.v = l_new_1();
                    v856.v = l_new_1();
                    v874.v = l_new_1();
                    v875.v = l_new_1();
                    v855.s = 15 * v1600;
                    v856.s = 15 * v1600;
                    v874.s = 15 * v1600;
                    v875.s = 15 * v1600;
                    v855.d = 1;
                    v856.d = 1;
                    v874.d = 1;
                    v875.d = 1;
                    v855.t = v1520.data.RightArmOffset.p;
                    v874.t = v868;
                    v856.t = v1520.data.LeftArmOffset.p;
                    v875.t = v867;
                    if v1520.data.EquipSequence then
                        v1520:playGunAnimation(v1520.data.EquipSequence, nil, true);
                    end;
                    delay(v1599, function() --[[ Line: 8141 ]]
                        -- upvalues: v1520 (copy), v855 (ref), v856 (ref), v874 (ref), v875 (ref), l_new_1 (ref)
                        v1520.puttingAway = false;
                        v855.s = 15;
                        v855.d = 1;
                        v856.s = 15;
                        v856.d = 1;
                        v874.s = 15;
                        v874.d = 1;
                        v875.s = 15;
                        v875.d = 1;
                        v855.v = l_new_1();
                        v856.v = l_new_1();
                        v874.v = l_new_1();
                        v875.v = l_new_1();
                    end);
                    local v1601 = 0;
                    local v1602 = nil;
                    v1520.FullyEquipped = false;
                    v1602 = l_RunService_0.RenderStepped:Connect(function(v1603) --[[ Line: 8164 ]]
                        -- upvalues: l_l_BaseSpeed_0_2 (ref), v1601 (ref), v1599 (copy), l_l_l_BaseSpeed_0_2_0 (ref), v1520 (copy), l_l_l_Bullet_0_0_0 (ref), l_new_0 (ref), l_l_Bullet_0_0 (ref), v1602 (ref)
                        local l_l_l_BaseSpeed_0_2_1 = l_l_BaseSpeed_0_2;
                        v1601 = v1601 + v1603;
                        local v1605 = math.max(1, v1601 / v1599);
                        l_l_l_BaseSpeed_0_2_0 = l_l_l_BaseSpeed_0_2_1:lerp(v1520.data.MainOffset, v1605);
                        l_l_l_Bullet_0_0_0 = l_l_l_BaseSpeed_0_2_1:lerp(v1520.data.MainOffsetAngle or l_new_0(), v1605);
                        if v1605 >= 1 then
                            v1520.FullyEquipped = true;
                            v1520.puttingAway = false;
                            if l_l_BaseSpeed_0_2 == l_l_l_BaseSpeed_0_2_1 then
                                l_l_BaseSpeed_0_2 = v1520.data.MainOffset;
                                l_l_Bullet_0_0 = v1520.data.MainOffsetAngle or l_new_0();
                            end;
                            v1602:Disconnect();
                        end;
                    end);
                    local v1606 = v1520.AmmoType and l_Character_0:FindFirstChild(v1520.AmmoType .. "Ammo");
                    v1606 = v1606 and v1606.Value;
                    if v1520.model and v1606 and v1606 <= 0 and v1520.data.HideOnEmpty then
                        v1520:setvisible(false);
                    end;
                    if v1520.data.BoltLock and v1606 and v1606 <= 0 then
                        v1520:updateBolt();
                    end;
                    local v1607 = v1520.AmmoType and l_Character_0:FindFirstChild(v1520.AmmoType .. "Ammo");
                    if v30.Current and v30.Current.tool.Name == "RPG-7" and v1520.model and v1607.Value <= 0 then
                        v1520.model.Mag.LocalTransparencyModifier = 1;
                        v1520.model.Mag.Transparency = 0;
                    elseif v1520.data.HideBullets then
                        for _, v1609 in v1520.Bullets do
                            local v1610 = v1609.Name:match("%d+");
                            v1610 = v1610 and tonumber(v1610);
                            if v1610 and v1607.Value < v1610 then
                                v1520:setvisible(false, v1609);
                            end;
                        end;
                    end;
                    local l_FirstChild_8 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Weapons"):FindFirstChild(v1520.tool.Name);
                    if l_FirstChild_8 then
                        v1577 = {};
                        local v1612 = {};
                        for _, v1614 in v826:GetChildren() do
                            if v1614:HasTag("Attachment") then
                                v1612[v1614.Name] = true;
                            end;
                        end;
                        v1520.model:Destroy();
                        v1520.leftarm:Destroy();
                        v1520.rightarm:Destroy();
                        if v1520.model2 then
                            v1520.model2:Destroy();
                        end;
                        v1520.ViewModel = l_FirstChild_8:Clone();
                        v1520.model = v1520.ViewModel.Model;
                        v1520.model2 = v1520.ViewModel:FindFirstChild("Model2");
                        for _, v1616 in v1520.ViewModel:GetDescendants() do
                            if v1616:IsA("BasePart") then
                                v1616.CanCollide = false;
                                v1616.CanQuery = false;
                                v1616.CanTouch = false;
                                v1616.Massless = true;
                                v1616.CastShadow = false;
                            end;
                            if v1616:FindFirstChild("LaserPointer") then
                                table.insert(v1577, v1616);
                            end;
                            if v1616:GetAttribute("BloodTexture") then
                                if not v1520.BloodTextures then
                                    v1520.BloodTextures = {};
                                end;
                                table.insert(v1520.BloodTextures, v1616);
                                v1616.Transparency = v1520.BloodTransparency or 1;
                            end;
                            if v1616:HasTag("Attachment") then
                                if not v1527[v1616.Name] then
                                    v1616:Destroy();
                                else
                                    local l_model_0 = v1520.model;
                                    if v1520.model2 and v1616:IsDescendantOf(v1520.model2) then
                                        l_model_0 = v1520.model2;
                                    end;
                                    local l_v1616_Attribute_0 = v1616:GetAttribute("NewName");
                                    if l_v1616_Attribute_0 then
                                        local v1619 = v1616:GetAttribute("Replace") and l_model_0:FindFirstChild(l_v1616_Attribute_0);
                                        v1616.Parent = v1619 and v1619.Parent or l_model_0;
                                        if v1619 then
                                            v1619:Destroy();
                                        end;
                                        v1616.Name = l_v1616_Attribute_0;
                                    end;
                                    if v1616:GetAttribute("NewMuzzle") then
                                        local v1620 = l_model_0:FindFirstChild("Muzzle") or l_model_0:FindFirstChild("Muzzle2");
                                        v1616.Parent = v1620 and v1620.Parent or l_model_0;
                                        if v1620 then
                                            v1616.Name = v1620.Name;
                                            v1620:Destroy();
                                        end;
                                    end;
                                end;
                            end;
                            local l_v1616_Attribute_1 = v1616:GetAttribute("AttachmentHide");
                            if l_v1616_Attribute_1 and v1528[l_v1616_Attribute_1] then
                                v1616:Destroy();
                            end;
                            local l_v1616_Attribute_2 = v1616:GetAttribute("AttachmentShow");
                            if l_v1616_Attribute_2 and v1528[l_v1616_Attribute_2] then
                                v1616.Transparency = 0;
                            end;
                        end;
                        local l_Attributes_0 = v1520.tool:GetAttributes();
                        local l_Skin_0 = l_Attributes_0.Skin;
                        local v1625 = {
                            l_Attributes_0.Pattern1, 
                            l_Attributes_0.Pattern2, 
                            l_Attributes_0.Pattern3, 
                            l_Attributes_0.Pattern4, 
                            l_Attributes_0.Pattern5, 
                            l_Attributes_0.Pattern6
                        };
                        if l_Skin_0 or #v1625 > 0 then
                            print("Loading skins for  gun");
                            local l_Name_0 = v1520.model.Name;
                            v1520.model.Name = v1520.tool.Name;
                            if l_Skin_0 then
                                v10:LoadSkinFromDescription(v1520.model, l_Skin_0);
                            end;
                            if #v1625 > 0 then
                                for v1627, v1628 in v1625 do
                                    if v1628 then
                                        v10:LoadSkinFromDescription(v1520.model, v1628, v1627);
                                    end;
                                end;
                            end;
                            v1520.model.Name = l_Name_0;
                            local l_Model2_0 = v1520.tool:FindFirstChild("Model2");
                            if l_Model2_0 and v1520.model2 then
                                l_Name_0 = v1520.model2.Name;
                                v1520.model2.Name = v1520.tool.Name;
                                print("Loading skins for second gun");
                                local l_l_Model2_0_Attributes_0 = l_Model2_0:GetAttributes();
                                local l_Skin_1 = l_l_Model2_0_Attributes_0.Skin;
                                local v1632 = {
                                    l_l_Model2_0_Attributes_0.Pattern1, 
                                    l_l_Model2_0_Attributes_0.Pattern2, 
                                    l_l_Model2_0_Attributes_0.Pattern3, 
                                    l_l_Model2_0_Attributes_0.Pattern4, 
                                    l_l_Model2_0_Attributes_0.Pattern5, 
                                    l_l_Model2_0_Attributes_0.Pattern6
                                };
                                if l_Skin_1 then
                                    v10:LoadSkinFromDescription(v1520.model2, l_Skin_1);
                                end;
                                if #v1632 > 0 then
                                    for v1633, v1634 in v1632 do
                                        if v1634 then
                                            v10:LoadSkinFromDescription(v1520.model2, v1634, v1633);
                                        end;
                                    end;
                                end;
                                v1520.model2.Name = l_Name_0;
                            end;
                        end;
                        for _, v1636 in v1520.model:GetDescendants() do
                            local v1637 = v1636:GetAttribute("AimShow") or false;
                            local l_v1636_Attribute_0 = v1636:GetAttribute("AimHide");
                            local l_v1636_Attribute_1 = v1636:GetAttribute("AltAim");
                            if v1637 or l_v1636_Attribute_0 then
                                if l_v1636_Attribute_1 then
                                    v840[v1636] = v1637;
                                else
                                    v839[v1636] = v1637;
                                end;
                                for _, v1641 in v1636:GetChildren() do
                                    if v1641:IsA("Decal") or v1641:IsA("Texture") then
                                        if l_v1636_Attribute_1 then
                                            v840[v1641] = v1637;
                                        else
                                            v839[v1641] = v1637;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                        v1519(v1520.ViewModel, 1.2);
                        v1520.ViewModel.Parent = v95;
                        v1520.ViewModelAnimations = {};
                        local function _(v1642) --[[ Line: 8503 ]] --[[ Name: animationEvent ]]
                            -- upvalues: v1520 (copy)
                            local v1643, v1644 = string.split(v1642, "|");
                            if v1643 and v1644 then
                                v1520:animationaction(v1643, v1644);
                                return;
                            else
                                v1520:animationaction(v1642);
                                return;
                            end;
                        end;
                        local function v1646(v1647, v1648) --[[ Line: 8514 ]] --[[ Name: loadAnimation ]]
                            -- upvalues: v1520 (copy), v1646 (copy)
                            local v1649 = {};
                            for _, v1651 in v1647:GetChildren() do
                                local v1652 = nil;
                                if v1651:IsA("Animation") then
                                    v1652 = v1648:LoadAnimation(v1651);
                                    v1652:GetMarkerReachedSignal("Sound"):Connect(function(v1653) --[[ Line: 8521 ]]
                                        -- upvalues: v1520 (ref)
                                        local l_PrimaryPart_1 = v1520.ViewModel.PrimaryPart;
                                        local v1655 = l_PrimaryPart_1 and l_PrimaryPart_1:FindFirstChild(v1653);
                                        if v1655 then
                                            if v1655.IsPlaying then
                                                v1655:Stop();
                                            end;
                                            v1655:Play();
                                        end;
                                    end);
                                    v1652:GetMarkerReachedSignal("Event"):Connect(function(v1656) --[[ Line: 8534 ]]
                                        -- upvalues: v1520 (ref)
                                        local v1657, v1658 = string.split(v1656, "|");
                                        if v1657 and v1658 then
                                            v1520:animationaction(v1657, v1658);
                                            return;
                                        else
                                            v1520:animationaction(v1656);
                                            return;
                                        end;
                                    end);
                                else
                                    v1652 = v1646(v1651, v1648);
                                end;
                                v1649[v1651.Name] = v1652;
                            end;
                            return v1649;
                        end;
                        v1520.ViewModelAnimations = v1646(v1520.ViewModel.Animations, v1520.ViewModel.Animator:WaitForChild("Animator"));
                        local l_MeleeAnimations_0 = v1520.ViewModel:FindFirstChild("MeleeAnimations");
                        if l_MeleeAnimations_0 then
                            v1520.GunAnimations = v1520.ViewModelAnimations;
                            v1520.MeleeAnimations = v1646(l_MeleeAnimations_0, v1520.ViewModel.Animator:WaitForChild("Animator"));
                            if v1520.data.FireMode:match("Melee") then
                                v1520.ViewModelAnimations = v1520.MeleeAnimations;
                            end;
                        end;
                        v1520.EquipOffset = l_new_0(0, -1000, 0);
                        local v1660 = v1520.ViewModelAnimations and v1520.ViewModelAnimations.Equip;
                        if v1660 then
                            v1660:Stop(0);
                            v1660:Play(0);
                        end;
                        v1520.ViewModelAnimations.Idle:Stop(0);
                        v1520.ViewModelAnimations.Idle:Play(0);
                        task.delay(0.05, function() --[[ Line: 8577 ]]
                            -- upvalues: v1520 (copy), l_new_0 (ref)
                            v1520.EquipOffset = l_new_0();
                        end);
                    end;
                    local l_FirstChild_9 = v1520.model:FindFirstChild("AIM", true);
                    if l_FirstChild_9 then
                        v1520.aimpart = l_FirstChild_9.Parent:IsA("BasePart") and l_FirstChild_9.Parent;
                        v1520.aimfov = v1520.aimpart and v1520.aimpart:GetAttribute("FOV") or nil;
                        v831 = v1520.aimfov or v831;
                        local l_FirstChild_10 = v1520.model:FindFirstChild("AIM2", true);
                        if l_FirstChild_10 then
                            v1520.altaimpart = l_FirstChild_10.Parent;
                            v1520.altaimfov = l_FirstChild_10.Parent:GetAttribute("FOV") or v831;
                        end;
                    end;
                    l_Parts_0:AddToFilter(l_LocalPlayer_0.Character);
                    l_Parts_0:AddToFilter(v1520.model);
                    local v1663 = {};
                    local l_CreateLaser_0 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("CreateLaser");
                    for _, v1666 in v1577 do
                        l_CreateLaser_0:Fire("New", v1666, {
                            ShootFrom = nil, 
                            RaycastParameters = l_Parts_0, 
                            UpdateRate = 0.0033333333333333335, 
                            Animation = ""
                        });
                        task.wait();
                        print(v1666);
                        table.insert(v1663, v1666:FindFirstChild("LASER_EFFECT", true));
                    end;
                    for _, v1668 in v1663 do
                        v1668:SetAttribute("Enabled", true);
                    end;
                    v1520.LaserList = v1663;
                    return;
                end;
            end;
            local v1669 = false;
            l_l_Data_0_0.putAway = function(v1670, v1671, v1672) --[[ Line: 8633 ]] --[[ Name: putAway ]]
                -- upvalues: v30 (ref), v1669 (ref), l_l_BaseSpeed_0_2 (ref), l_l_Bullet_0_0 (ref), l_new_0 (ref), v855 (copy), v856 (copy), v874 (copy), v875 (copy), v871 (ref), v872 (ref), l_new_1 (ref), v868 (ref), v867 (ref)
                task.spawn(function() --[[ Line: 8634 ]]
                    -- upvalues: v1670 (copy), v30 (ref)
                    v1670.playing = false;
                    if v1670.reloading then
                        v1670.CancelReload = true;
                    end;
                    if v1670.inspecting then
                        v30.Current:setinspecting(false);
                    end;
                    if v1670.shooting then
                        v30.Current:setshooting(false);
                        if v30.Current.data.Dual and v30.Current.shooting then
                            v30.Current:setshooting(false, {
                                SecondGun = true
                            });
                        end;
                    end;
                    if v1670.shieldDeployed then
                        v30.Current:setshield(false);
                    end;
                end);
                v1672 = v1672 or v1670.data.UnequipTime or v1670.data.EquipTime or v1671 and 0.75 or 0.45;
                if v1671 then
                    local v1673 = v1670.ViewModelAnimations and v1670.ViewModelAnimations.Unequip;
                    if v1673 then
                        v1673:Play(0.1, 1, v1673.Length / v1672);
                    else
                        v1673 = v1670.ViewModelAnimations and v1670.ViewModelAnimations.Equip;
                        if v1673 then
                            v1673:Stop();
                            local v1674 = v1673.Length / v1672;
                            v1673.TimePosition = v1673.Length;
                            v1673:Play(0.1, 1, -v1674);
                            v1673.TimePosition = v1673.Length;
                        end;
                    end;
                    v1670:setaim(false);
                    v1669 = false;
                    l_l_BaseSpeed_0_2 = v1670.data.MainOffset;
                    l_l_Bullet_0_0 = v1670.data.MainOffsetAngle or l_new_0();
                    v1670.puttingAway = true;
                    local l_v1672_0 = v1672;
                    local v1676 = v1670.toolAnimations.Unequip or v1670.toolAnimations.Equip;
                    local v1677 = v1676 and v1676.Length / l_v1672_0;
                    if v1670.toolAnimations then
                        for _, v1679 in v1670.toolAnimations do
                            if v1676 == v1679 then
                                v1679:Play(0.05, 1, v1677);
                                v1679.TimePosition = v1679.Name == "Equip" and v1679.Length or 0;
                                v1679.Priority = Enum.AnimationPriority.Action3;
                            else
                                v1679:Stop();
                            end;
                        end;
                    end;
                    v1670:cancelAnimation();
                    task.wait();
                    for _, v1681 in v1670.LaserList do
                        v1681:SetAttribute("Enabled", false);
                    end;
                    local v1682 = 2.3 / v1672;
                    v855.s = 15 * v1682;
                    v856.s = 15 * v1682;
                    v874.s = 15 * v1682;
                    v875.s = 15 * v1682;
                    v855.d = 1;
                    v856.d = 1;
                    v874.d = 1;
                    v875.d = 1;
                    v855.t = v1670.data.RightArmEquipOffset and v1670.data.RightArmEquipOffset.p or Vector3.new(0.8999999761581421, -2.75, -1.2000000476837158, 0);
                    v874.t = v871 or Vector3.new(-1.3962633609771729, 0, 0, 0);
                    v856.t = v1670.data.LeftArmEquipOffset and v1670.data.LeftArmEquipOffset.p or Vector3.new(-0.05000000074505806, -3, -1, 0);
                    v875.t = v872 or Vector3.new(-1.0471975803375244, 0, 0.027415568009018898, 0);
                    delay(v1672, function() --[[ Line: 8733 ]]
                        -- upvalues: v1669 (ref), v855 (ref), l_new_1 (ref), v856 (ref), v874 (ref), v875 (ref)
                        if not v1669 then
                            v855.v = l_new_1();
                            v856.v = l_new_1();
                            v874.v = l_new_1();
                            v875.v = l_new_1();
                        end;
                    end);
                    return;
                else
                    if v1670.toolAnimations then
                        local l_Idle_1 = v1670.toolAnimations.Idle;
                        local l_Equip_1 = v1670.toolAnimations.Equip;
                        if l_Idle_1 then
                            l_Idle_1:Play();
                            l_Idle_1.Priority = Enum.AnimationPriority.Movement;
                        end;
                        if l_Equip_1 then
                            l_Equip_1:Play(0.1, 1, l_Equip_1.Length / v1672);
                            l_Equip_1.Priority = Enum.AnimationPriority.Action3;
                        end;
                    end;
                    local v1685 = v1670.ViewModelAnimations and v1670.ViewModelAnimations.Equip;
                    if v1685 then
                        v1685:Play(0);
                    end;
                    for _, v1687 in v1670.LaserList do
                        v1687:SetAttribute("Enabled", true);
                    end;
                    local v1688 = 2.3 / v1672;
                    v1669 = true;
                    v855.v = l_new_1();
                    v856.v = l_new_1();
                    v874.v = l_new_1();
                    v875.v = l_new_1();
                    v855.s = 15 * v1688;
                    v856.s = 15 * v1688;
                    v874.s = 15 * v1688;
                    v875.s = 15 * v1688;
                    v855.d = 1;
                    v856.d = 1;
                    v874.d = 1;
                    v875.d = 1;
                    v855.t = v1670.data.RightArmOffset.p;
                    v874.t = v868;
                    v856.t = v1670.data.LeftArmOffset.p;
                    v875.t = v867;
                    delay(v1672, function() --[[ Line: 8805 ]]
                        -- upvalues: v1669 (ref), v1670 (copy), v855 (ref), v856 (ref), v874 (ref), v875 (ref), l_new_1 (ref)
                        if v1669 then
                            v1670.CancelReload = false;
                            v1670.puttingAway = false;
                            v855.s = 15;
                            v855.d = 1;
                            v856.s = 15;
                            v856.d = 1;
                            v874.s = 15;
                            v874.d = 1;
                            v875.s = 15;
                            v875.d = 1;
                            v855.v = l_new_1();
                            v856.v = l_new_1();
                            v874.v = l_new_1();
                            v875.v = l_new_1();
                        end;
                    end);
                    return;
                end;
            end;
            l_l_Data_0_0.unload = function(v1689) --[[ Line: 8853 ]] --[[ Name: unload ]]
                -- upvalues: v95 (ref)
                v95:ClearAllChildren();
                v1689.loaded = false;
                if v1689.toolAnimations then
                    for _, v1691 in v1689.toolAnimations do
                        if not v1691.Name:lower():match("equip") then
                            v1691:Stop();
                        end;
                    end;
                end;
            end;
            l_l_Data_0_0.unequip = function(v1692) --[[ Line: 8871 ]] --[[ Name: unequip ]]
                -- upvalues: v30 (ref)
                print("Unequipping");
                v1692:unload();
                v1692:setshooting(false);
                if v1692.data.Dual and v1692.shooting then
                    v1692:setshooting(false, {
                        SecondGun = true
                    });
                end;
                v30.Current = nil;
            end;
            l_l_Data_0_0.maskOn = function(v1693) --[[ Line: 8881 ]] --[[ Name: maskOn ]]
                -- upvalues: v30 (ref), l_new_0 (ref), l_Angles_0 (ref), v855 (copy), v874 (copy), l_new_1 (ref), v856 (copy), v875 (copy), v879 (copy), l_TweenService_0 (ref), l_PlayerGui_0 (ref)
                v30.Current.model.Handle.Transparency = 0;
                v1693:cancelAnimation();
                if v1693.inspecting then
                    v1693:setinspecting(false);
                end;
                v1693.reloading = true;
                if v1693.toolAnimations.MaskOn then
                    v1693.toolAnimations.MaskOn.Priority = Enum.AnimationPriority.Action3;
                    v1693.toolAnimations.MaskOn:Play(0);
                end;
                local v1694 = {
                    {
                        l_new_0(1.5, 0, 0), 
                        l_Angles_0(-0.4363323129985824, 0, 0), 
                        l_new_0(-1.5, 0, 0), 
                        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
                        1, 
                        0, 
                        "", 
                        ""
                    }, 
                    {
                        l_new_0(0.905, 0.6, 0.3), 
                        l_Angles_0(0.5235987755982988, 0, 0), 
                        l_new_0(-1.5, 0, 0), 
                        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
                        12, 
                        0.2, 
                        "", 
                        ""
                    }, 
                    {
                        l_new_0(0.905, 1, 1), 
                        l_Angles_0(0, 0, 0), 
                        l_new_0(-1.5, 0, 0), 
                        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
                        14, 
                        0.3, 
                        "", 
                        ""
                    }, 
                    {
                        l_new_0(0.905, 0.9, 2.2), 
                        l_Angles_0(0, 0, 0), 
                        l_new_0(-1.5, 0, 0), 
                        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
                        14, 
                        0.3, 
                        "FadeMask", 
                        ""
                    }, 
                    {
                        l_new_0(0.905, 0.8, 2.2), 
                        l_Angles_0(0, 0, 0), 
                        l_new_0(-1.5, 0, 0), 
                        l_Angles_0(-0.4363323129985824, 0, 0) * l_Angles_0(0, 0, 1.5707963267948966), 
                        7, 
                        0.1, 
                        "ApplyMask", 
                        ""
                    }
                };
                for _, v1696 in pairs(v1694) do
                    if v1696[6] > 0 then
                        local v1697, v1698, v1699 = v1696[4]:toEulerAnglesXYZ();
                        local v1700, v1701, v1702 = v1696[2]:toEulerAnglesXYZ();
                        v855.t = v1696[1].p;
                        v874.t = l_new_1(v1700, v1701, v1702);
                        v856.t = v1696[3].p;
                        v875.t = l_new_1(v1697, v1698, v1699);
                        v855.s = v1696[5];
                        v875.s = v1696[5];
                        v874.s = v1696[5];
                        v856.s = v1696[5];
                        v879.s = v1696[5];
                        local v1703 = v1696[7];
                        local v1704 = v1696[8];
                        if v1704 ~= "" then
                            local v1705 = v1693.model and v1693.model:FindFirstChild("Handle") and v1693.model:FindFirstChild("Handle"):FindFirstChild(v1704);
                            if v1705 then
                                v1705:Play();
                            end;
                        end;
                        if v1703 ~= "" and v1693.model and v1693.model:FindFirstChild("Handle") then
                            l_TweenService_0:Create(v1693.model:FindFirstChild("Handle"), TweenInfo.new(0.1), {
                                Transparency = 1
                            });
                            if v1703 == "ApplyMask" then
                                v1693.model:FindFirstChild("Handle").Transparency = 1;
                            elseif v1703 == "FadeMask" then
                                l_TweenService_0:Create(v1693.model:FindFirstChild("Handle"), TweenInfo.new(0.3), {
                                    Transparency = 1
                                }):Play();
                            end;
                        end;
                        wait(v1696[6]);
                    end;
                end;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("MobileUI"):WaitForChild("MobileInfo"):Fire("SwitchWeapon", "Primary");
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmo.TextTransparency = 0;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmoTotal.TextTransparency = 0;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmo.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmoTotal.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryFiremode.TextTransparency = 0;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryFiremode.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmo.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmoTotal.TextTransparency = 0.7;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetFiremode.TextTransparency = 0.7;
                v1693.reloading = false;
            end;
            local _ = v25.Spring.new();
            local v1707 = tick();
            l_l_Data_0_0.shoottick0 = tick();
            l_l_Data_0_0.shoottick0_2 = tick();
            local v1708 = l_new_0();
            l_l_Data_0_0.step = function(v1709) --[[ Line: 9016 ]] --[[ Name: step ]]
                -- upvalues: l_l_Data_0_0 (copy), v849 (copy), l_l_UserInputService_0_GamepadConnected_0 (ref), l_v217_4 (ref), v850 (copy), l_new_1 (ref), v27 (ref), v28 (ref), v855 (copy), v857 (copy), v874 (copy), v858 (copy), v856 (copy), v875 (copy), l_new_0 (ref), l_Angles_0 (ref), l_l_l_BaseSpeed_0_2_0 (ref), l_l_l_Bullet_0_0_0 (ref), v892 (ref), v1708 (ref), v839 (copy), l_TweenService_0 (ref), v196 (ref), v30 (ref), l_Character_0 (ref), l_HumanoidRootPart_0 (ref), l_CurrentCamera_0 (ref), l_SprintOffset_0 (ref), v848 (copy), l_ArmFix_0 (copy), v879 (copy), v883 (copy), l_WeaponFix_0 (ref), v885 (copy), v889 (copy), v1707 (ref), v853 (ref), v852 (ref), v197 (ref)
                local _ = v1709 / 0.016666666666666666;
                if not l_l_Data_0_0.isrendering then
                    return;
                else
                    l_l_Data_0_0.aim = v849.p;
                    if l_l_UserInputService_0_GamepadConnected_0 then

                    end;
                    local l_l_v217_4_0 = l_v217_4;
                    v850.t = l_new_1(-math.min(math.max(l_l_v217_4_0.x, -30), 30), -math.min(math.max(l_l_v217_4_0.y, -30), 30), 0);
                    for _, v1713 in l_l_Data_0_0.LaserList do
                        if l_l_Data_0_0.reloading or v27.Sprint > 0.1 or l_l_Data_0_0.postshooting or l_l_Data_0_0.grenade or l_l_Data_0_0.inspecting or l_l_Data_0_0.aim > 0.5 or l_l_Data_0_0.puttingAway then
                            v1713:SetAttribute("CenterShoot", 0);
                        else
                            v1713:SetAttribute("CenterShoot", l_l_Data_0_0.data.Dual and 0 or 1);
                        end;
                    end;
                    local l_Aim_1 = l_l_Data_0_0.toolAnimations.Aim;
                    local v1715 = l_l_Data_0_0.aiming or l_l_Data_0_0.shieldDeployed;
                    if l_Aim_1 then
                        if v1715 and not l_Aim_1.IsPlaying then
                            l_Aim_1:Play(0.1);
                            l_Aim_1.Priority = Enum.AnimationPriority.Action;
                        elseif not v1715 and l_Aim_1.IsPlaying then
                            l_Aim_1:Stop(0.1);
                        end;
                    end;
                    if v28.Mode == "FirstPerson" then
                        if not l_l_Data_0_0.loaded then
                            l_l_Data_0_0:load();
                        end;
                        if l_l_Data_0_0.loaded then
                            l_l_Data_0_0.currentmodel = l_l_Data_0_0.model;
                            local v1716 = v855.p + v857.p;
                            local v1717 = v874.p + v858.p;
                            local l_p_6 = v856.p;
                            local l_p_7 = v875.p;
                            local v1720 = l_new_0(l_p_6.X, l_p_6.Y, l_p_6.Z) * l_Angles_0(l_p_7.X, l_p_7.Y, l_p_7.Z);
                            local v1721 = l_new_0(v1716.X, v1716.Y, v1716.Z) * l_Angles_0(v1717.X, v1717.Y, v1717.Z);
                            local v1722 = l_l_l_BaseSpeed_0_2_0 * l_l_l_Bullet_0_0_0;
                            local v1723 = l_l_Data_0_0.altaim and l_l_Data_0_0.altaimpart or l_l_Data_0_0.aimpart;
                            if l_l_Data_0_0.ViewModel then
                                v1723 = l_l_Data_0_0.altaim and l_l_Data_0_0.ViewModel:FindFirstChild("AimPart2", true) or l_l_Data_0_0.ViewModel:FindFirstChild("AimPart", true);
                            elseif v1723 then
                                v892 = v1723:GetAttribute("AimOffset") or v892;
                                v1708 = v1708:lerp(v892, 0.4);
                            else
                                v1708 = v1708:lerp(v892, 0.4);
                            end;
                            local v1724 = v1723 and v1723:GetAttribute("DisableAimHide");
                            if not v1724 and l_l_Data_0_0.aiming and not l_l_Data_0_0.aimfade and v849.p > 0.7 then
                                if not l_l_Data_0_0.ViewModel then

                                end;
                                l_l_Data_0_0.aimfade = true;
                                for v1725, v1726 in v839 do
                                    local l_v1725_Attribute_0 = v1725:GetAttribute("Transparency");
                                    if not l_v1725_Attribute_0 then
                                        l_v1725_Attribute_0 = v1725.Transparency;
                                        v1725:SetAttribute("Transparency", v1725.Transparency);
                                    end;
                                    l_TweenService_0:Create(v1725, TweenInfo.new(l_l_Data_0_0.postshooting and 0.05 or 0.1), {
                                        Transparency = v1726 and l_v1725_Attribute_0 or 1
                                    }):Play();
                                end;
                            elseif (not l_l_Data_0_0.aiming or v1724) and l_l_Data_0_0.aimfade then
                                l_l_Data_0_0.aimfade = false;
                                for v1728, v1729 in v839 do
                                    local l_v1728_Attribute_0 = v1728:GetAttribute("Transparency");
                                    if not l_v1728_Attribute_0 then
                                        l_v1728_Attribute_0 = v1728.Transparency;
                                        v1728:SetAttribute("Transparency", v1728.Transparency);
                                    end;
                                    l_TweenService_0:Create(v1728, TweenInfo.new(l_l_Data_0_0.waspostshooting and 0.1 or 0.1), {
                                        Transparency = v1729 and 1 or l_v1728_Attribute_0
                                    }):Play();
                                end;
                            end;
                            if l_l_Data_0_0.ViewModel then
                                if l_l_Data_0_0.ViewModel.PrimaryPart then
                                    local v1731 = l_l_Data_0_0.ViewModel:FindFirstChild("CameraBone") or l_l_Data_0_0.ViewModel:FindFirstChild("CameraBone2");
                                    v1731 = v1731 and l_l_Data_0_0.ViewModel.PrimaryPart.CFrame:ToObjectSpace(v1731.CFrame);
                                    v1731 = v1731 and v1731:Inverse();
                                    local v1732 = l_l_Data_0_0.EquipOffset or l_new_0();
                                    local v1733 = v1731 and v1731 or l_new_0(-0.5, -1.5, 0.5);
                                    v1723 = l_l_Data_0_0.altaim and l_l_Data_0_0.ViewModel:FindFirstChild("AimPart2", true) or l_l_Data_0_0.ViewModel:FindFirstChild("AimPart", true);
                                    local v1734 = v1723 and l_l_Data_0_0.ViewModel.PrimaryPart.CFrame:ToObjectSpace(v1723.CFrame):Inverse() or l_new_0();
                                    v1708 = v1708:lerp(v1734, 0.4);
                                    local v1735 = l_new_0(-v196.p.X / 2 * 1, -v196.p.Y / 2 * 1, 0) * l_Angles_0(v196.p.Y * 1, v196.p.X * 1, 0);
                                    local v1736 = v30.calculateBreath(v849.p);
                                    local l_ViewModel_0 = l_l_Data_0_0.ViewModel;
                                    local v1738 = workspace.Camera.CFrame * v1733:lerp(v1708, v849.p);
                                    local v1739 = 1 - l_l_Data_0_0.aim * 0.9;
                                    local v1740 = 1 - l_l_Data_0_0.aim * 0.9;
                                    local l_aim_0 = l_l_Data_0_0.aim;
                                    l_ViewModel_0:PivotTo(v1738 * v30.calculateBob(v1739, v1740, l_aim_0) * l_Angles_0(v850.p.y / 360 * 1.05, v850.p.x / 360 * 1.05, v850.p.z / 360 * 1.05) * v1735 * v1736 * v1732);
                                    l_ViewModel_0 = l_l_Data_0_0.ViewModelAnimations.Sprint;
                                    local l_SprintMotion_0 = l_l_Data_0_0.ViewModelAnimations.SprintMotion;
                                    local l_SprintTransition_0 = l_l_Data_0_0.ViewModelAnimations.SprintTransition;
                                    local v1744 = l_Character_0.PrimaryPart.AssemblyLinearVelocity.Magnitude > 2;
                                    if l_ViewModel_0 then
                                        l_ViewModel_0.Priority = Enum.AnimationPriority.Idle;
                                        if l_SprintMotion_0 then
                                            l_SprintMotion_0.Priority = Enum.AnimationPriority.Movement;
                                        end;
                                        if l_SprintTransition_0 then
                                            l_SprintTransition_0.Priority = Enum.AnimationPriority.Movement;
                                        end;
                                        if v27.Sprint > 0.1 or v27.Sliding then
                                            if not l_ViewModel_0.IsPlaying and (not l_SprintTransition_0 or not l_SprintTransition_0.IsPlaying) then
                                                if l_SprintTransition_0 then
                                                    l_SprintTransition_0:Play(0.1);
                                                    task.delay(0.1, function() --[[ Line: 9173 ]]
                                                        -- upvalues: v27 (ref), l_ViewModel_0 (copy)
                                                        if v27.Sprint > 0.1 then
                                                            l_ViewModel_0:Play(0.1);
                                                        end;
                                                    end);
                                                else
                                                    l_ViewModel_0:Play(0.1);
                                                end;
                                            end;
                                            if v27.Sliding and l_SprintMotion_0 then
                                                l_SprintMotion_0:Stop(0.05);
                                            elseif v1744 and l_SprintMotion_0 then
                                                if not l_SprintMotion_0.IsPlaying then
                                                    l_SprintMotion_0:Play(0.5);
                                                    if l_SprintTransition_0 then
                                                        l_SprintTransition_0:Stop(0.2);
                                                    end;
                                                end;
                                            elseif not v1744 and l_SprintMotion_0 then
                                                l_SprintMotion_0:Stop(0.3);
                                            end;
                                        else
                                            if l_SprintTransition_0 and l_SprintTransition_0.IsPlaying then
                                                l_SprintTransition_0:Stop(0.1);
                                            end;
                                            if l_ViewModel_0.IsPlaying then
                                                l_ViewModel_0:Stop(0.2);
                                                local l_SprintTransitionOut_0 = l_l_Data_0_0.ViewModelAnimations.SprintTransitionOut;
                                                if l_SprintTransitionOut_0 then
                                                    l_SprintTransitionOut_0:Play(0);
                                                    l_SprintTransitionOut_0.Priority = Enum.AnimationPriority.Movement;
                                                    l_SprintTransition_0:Stop();
                                                elseif l_SprintTransition_0 then
                                                    l_SprintTransition_0.TimePosition = l_SprintTransition_0.Length;
                                                    l_SprintTransition_0:Play(0.1, 1, -1);
                                                    l_SprintTransition_0.TimePosition = l_SprintTransition_0.Length;
                                                end;
                                            end;
                                            if l_SprintMotion_0 and l_SprintMotion_0.IsPlaying then
                                                l_SprintMotion_0:Stop(0.3);
                                            end;
                                        end;
                                    end;
                                    l_l_Data_0_0.EquipOffset = v1732:Lerp(l_new_0(), 0.3 * v1709);
                                end;
                            else
                                local v1746 = l_HumanoidRootPart_0:GetAttribute("ArmOffset") or l_new_0(0.5, -0.5, -2);
                                local v1747 = l_new_0(-v196.p.X / 2 * 1, -v196.p.Y / 2 * 1, 0) * l_Angles_0(v196.p.Y * 1, v196.p.X * 1, 0);
                                if l_l_Data_0_0.inspecting then
                                    v27.ViewmodelSprint.t = 0;
                                else
                                    v27.ViewmodelSprint.t = v27.Sprint;
                                end;
                                local v1748 = v30.calculateBreath(v849.p);
                                local v1749 = l_HumanoidRootPart_0.CFrame:inverse() * l_CurrentCamera_0.CFrame * v1722:lerp(v1708, v849.p);
                                local v1750 = 1 - l_l_Data_0_0.aim * 0.9;
                                local v1751 = 1 - l_l_Data_0_0.aim * 0.9;
                                local l_aim_1 = l_l_Data_0_0.aim;
                                local v1753 = v1749 * v30.calculateBob(v1750, v1751, l_aim_1) * l_new_0():lerp(l_SprintOffset_0, v27.ViewmodelSprint.p) * v1746 * v1748 * l_Angles_0(v850.p.y / 360 * 1.05, v850.p.x / 360 * 1.05, v850.p.z / 360 * 1.05) * l_new_0(-0.5, 0.5, 1.25) * l_new_0(0, 0, v848.p) * v1747;
                                l_l_Data_0_0.leftweld.C0 = v1753 * v1720 * l_ArmFix_0;
                                l_l_Data_0_0.rightweld.C0 = v1753 * v1721 * l_ArmFix_0;
                                l_l_Data_0_0.weaponweld.C1 = l_new_0(v879.p) * l_Angles_0(v883.p.X, v883.p.Y, v883.p.Z) * l_WeaponFix_0;
                                if l_l_Data_0_0.weaponweld2 then
                                    l_l_Data_0_0.weaponweld2.C1 = l_new_0(v885.p) * l_Angles_0(v889.p.X, v889.p.Y, v889.p.Z) * l_WeaponFix_0;
                                end;
                            end;
                        end;
                    else
                        l_l_Data_0_0:unload();
                        l_l_Data_0_0.currentmodel = l_l_Data_0_0.tool;
                    end;
                    l_v217_4 = l_new_1();
                    if l_l_Data_0_0.data.Shield then
                        l_l_Data_0_0:updateshield();
                    end;
                    local l_shooting_0 = l_l_Data_0_0.shooting;
                    local l_shooting2_0 = l_l_Data_0_0.shooting2;
                    local l_FireMode_0 = l_l_Data_0_0.data.FireMode;
                    local v1757 = l_l_Data_0_0.data.FireDelay or 0.05;
                    local l_WeaponType_0 = l_l_Data_0_0.data.WeaponType;
                    if tick() - v1707 >= 0.075 and v848.t > 0 then
                        v1707 = tick();
                        if v848.t > 0.01 then
                            v848.t = v848.t / 2;
                        else
                            v848.t = 0;
                        end;
                    end;
                    local v1759 = l_l_Data_0_0.data.Dual and l_shooting2_0 and (l_FireMode_0:match("Auto") or l_FireMode_0 == "AutoShotgun") and tick() - l_l_Data_0_0.shoottick0_2 >= v1757 + 0;
                    if l_shooting_0 and (l_FireMode_0:match("Auto") or l_FireMode_0 == "AutoShotgun") and tick() - l_l_Data_0_0.shoottick0 >= v1757 + 0 then
                        if l_l_Data_0_0.data.Dual then
                            v853 = true;
                        else
                            v852 = true;
                        end;
                        l_l_Data_0_0:shoot(nil, {
                            SecondGun = l_l_Data_0_0.data.Dual and true or false
                        });
                        l_l_Data_0_0.shoottick0 = tick();
                    elseif l_shooting_0 and l_FireMode_0 == "Semi" and v1757 <= tick() - l_l_Data_0_0.shoottick0 then
                        v852 = true;
                        v27:SetSprint(false);
                        l_l_Data_0_0.shoottick0 = tick();
                    elseif l_shooting_0 and l_FireMode_0:match("Shotgun") and v1757 <= tick() - l_l_Data_0_0.shoottick0 then
                        v852 = true;
                        v27:SetSprint(false);
                        l_l_Data_0_0.shoottick0 = tick();
                    elseif l_shooting_0 and l_FireMode_0 == "Burst" and v1757 <= tick() - l_l_Data_0_0.shoottick0 then
                        v852 = true;
                        v27:SetSprint(false);
                        l_l_Data_0_0.shoottick0 = tick();
                    elseif not v1759 and l_WeaponType_0 ~= "Melee" and tick() - l_l_Data_0_0.shoottick0 >= 0.075 and tick() - l_l_Data_0_0.shoottick0_2 >= v1757 + 0 and (v196.t.Magnitude > 0 or v197.t.Magnitude > 0) and (not l_l_Data_0_0.lastrecoilt0 or l_l_Data_0_0.lastrecoilt0 <= tick()) then
                        v196.t = v196.t.Magnitude > 0.5 and v196.t / 2 or Vector2.new();
                        v197.t = v197.t.Magnitude > 0.5 and v197.t / 2 or Vector2.new();
                        l_l_Data_0_0.lastrecoilt0 = tick() + 0.016666666666666666;
                    end;
                    if v1759 then
                        v852 = true;
                        if v27.Sprinting then
                            v27:SetSprint(false);
                        end;
                        l_l_Data_0_0:shoot(nil, {});
                        l_l_Data_0_0.shoottick0_2 = tick();
                    end;
                    return;
                end;
            end;
            v826.Equipped:Connect(function() --[[ Line: 9353 ]]
                -- upvalues: v30 (ref), l_l_Data_0_0 (copy), v826 (copy), l_status_0 (ref), v892 (ref), v831 (ref), v137 (ref), l_Keybinds_0 (ref), v27 (ref), l_v215_3 (ref)
                v30.Equipped = true;
                if l_l_Data_0_0.isrendering then
                    return;
                else
                    l_l_Data_0_0.isrendering = true;
                    l_l_Data_0_0:load();
                    local l_v826_Attribute_1 = v826:GetAttribute("FiremodeIndex");
                    if l_v826_Attribute_1 then
                        l_l_Data_0_0:switchFiremode(l_v826_Attribute_1);
                    end;
                    l_status_0 = 0;
                    if l_l_Data_0_0.data.AimOffsetAttachments then
                        for _, v1762 in pairs(l_l_Data_0_0.tool:GetChildren()) do
                            if v1762:IsA("BasePart") and game:GetService("CollectionService"):HasTag(v1762, "Attachment") and l_l_Data_0_0.data.AimOffsetAttachments[v1762.Name] then
                                v892 = l_l_Data_0_0.data.AimOffsetAttachments[v1762.Name][1];
                                v831 = l_l_Data_0_0.data.AimOffsetAttachments[v1762.Name][2];
                                break;
                            end;
                        end;
                    end;
                    for v1763, v1764 in pairs(v137) do
                        if v1763 and v1764 and MatchKeys(v1764, l_Keybinds_0.AimKeys) then
                            l_l_Data_0_0:setaim(true);
                        end;
                    end;
                    v27:ResetWalkSpeed();
                    l_v215_3();
                    return;
                end;
            end);
            if v826.Parent == l_Character_0 then
                task.wait();
                v30.Equipped = true;
                l_l_Data_0_0.isrendering = true;
                l_l_Data_0_0:load();
                if l_l_Data_0_0.data.AimOffsetAttachments then
                    for _, v1766 in pairs(l_l_Data_0_0.tool:GetChildren()) do
                        if v1766:IsA("BasePart") and game:GetService("CollectionService"):HasTag(v1766, "Attachment") and l_l_Data_0_0.data.AimOffsetAttachments[v1766.Name] then
                            if not l_l_Data_0_0.aimpart then
                                v892 = l_l_Data_0_0.data.AimOffsetAttachments[v1766.Name][1];
                            end;
                            if not l_l_Data_0_0.aimfov then
                                v831 = l_l_Data_0_0.data.AimOffsetAttachments[v1766.Name][2];
                                break;
                            else
                                break;
                            end;
                        end;
                    end;
                end;
                for v1767, v1768 in pairs(v137) do
                    if v1767 and v1768 and MatchKeys(v1768, l_Keybinds_0.AimKeys) then
                        l_l_Data_0_0:setaim(true);
                    end;
                end;
            end;
            v826.Unequipped:Connect(function() --[[ Line: 9428 ]]
                -- upvalues: v30 (ref), l_l_Data_0_0 (copy)
                v30.Equipped = false;
                l_l_Data_0_0:unequip();
                l_l_Data_0_0.isrendering = false;
                l_l_Data_0_0:setaim(false);
            end);
            local v1769 = v826:FindFirstChild("Primary", true) and "primary" or v826:FindFirstChild("Secondary", true) and "secondary" or v826:FindFirstChild("Gadget", true) and "gadget" or nil;
            if v1769 then
                local _ = l_l_Data_0_0.data.FireMode:match("Auto") and "Auto" or "Semi";
                local l_FireMode_1 = l_l_Data_0_0.data.FireMode;
                local v1772 = l_FireMode_1:match("Auto") and "Auto" or l_FireMode_1:match("Melee") and "Melee" or "Semi";
                if l_AkimboMode_0.Value then
                    if l_FireMode_1:match("Alt") then
                        l_FireMode_1 = l_FireMode_1:gsub("Alt", "");
                    end;
                elseif l_FireMode_1:match("Alt") then
                    l_FireMode_1 = l_FireMode_1:gsub("Alt", "");
                    l_l_Data_0_0.AlternateGuns = true;
                    v1772 = "Single";
                else
                    l_l_Data_0_0.AlternateGuns = false;
                    if l_l_Data_0_0.data.Dual and l_FireMode_1:match("Semi") then
                        v1772 = "Both";
                    end;
                end;
                l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("PlayerStats"):WaitForChild("LocalPlayerStats").info_weapons[v1769 .. "Firemode"].Text = l_l_Data_0_0.data.HideFireMode and "" or string.format("[%s]", v1772);
            end;
            print(v826.Name .. " loaded...");
            return l_l_Data_0_0;
        end;
    end;
    l_HitObject_0 = {};
    CheckIfAdded = function(v1773) --[[ Line: 9473 ]] --[[ Name: CheckIfAdded ]]
        -- upvalues: l_HitObject_0 (copy), v30 (copy)
        if l_HitObject_0[v1773] then
            return l_HitObject_0[v1773];
        else
            for _, v1775 in pairs(v30.List) do
                if v1775 and v1775.tool == v1773 then
                    return v1775;
                end;
            end;
            return false;
        end;
    end;
    v583 = {};
    v599 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Weapons");
    v600 = script.SampleModel:Clone();
    v600.Parent = workspace.Camera;
    v600:PivotTo(CFrame.new(100000, 100000, 100000));
    l_Effects_0 = v600:WaitForChild("Animator");
    v602 = function(v1776) --[[ Line: 9495 ]] --[[ Name: checkTool ]]
        -- upvalues: v583 (copy), v599 (copy), l_Effects_0 (copy)
        if v583[v1776.Name] then
            return;
        else
            local v1777 = {};
            local l_v599_FirstChild_0 = v599:FindFirstChild(v1776.Name);
            if l_v599_FirstChild_0 then
                local l_Animations_1 = l_v599_FirstChild_0:FindFirstChild("Animations");
                if l_Animations_1 then
                    print("Loading animations for: " .. v1776.Name);
                    for _, v1781 in l_Animations_1:GetDescendants() do
                        if v1781:IsA("Animation") then
                            local v1782 = l_Effects_0:LoadAnimation(v1781);
                            v1782:Play(0.001, 0.001, 0.001);
                            table.insert(v1777, v1782);
                        end;
                    end;
                end;
            end;
            v583[v1776.Name] = true;
            if #v1777 > 0 then
                task.delay(1, function() --[[ Line: 9521 ]]
                    -- upvalues: v1777 (copy)
                    for _, v1784 in v1777 do
                        v1784:Stop();
                        v1784:Destroy();
                    end;
                end);
            end;
            return;
        end;
    end;
    l_MaterialReference_0 = function(v1785, v1786) --[[ Line: 9531 ]] --[[ Name: loadMobileButton ]]
        -- upvalues: l_MobileUI_0 (ref), l_GunInfo_0 (copy), l_LocalPlayer_0 (copy), v30 (copy)
        local l_FirstChild_11 = l_MobileUI_0.Hotbar:FindFirstChild(v1786.Name);
        if l_FirstChild_11 then
            local v1788 = l_FirstChild_11:FindFirstChild("Equipped") or l_FirstChild_11;
            local _ = v1788:FindFirstChild("Stats");
            local l_SelectButton_0 = v1788:FindFirstChild("SelectButton");
            local l_WeaponIcon_0 = v1788:FindFirstChild("WeaponIcon");
            local v1792 = l_GunInfo_0.weaponGFX[v1785.Name];
            if v1792 and l_WeaponIcon_0 then
                l_WeaponIcon_0.Image = v1792;
            end;
            if l_SelectButton_0 then
                l_SelectButton_0.Active = false;
                l_SelectButton_0.MouseButton1Down:Connect(function() --[[ Line: 9548 ]]
                    -- upvalues: v1786 (copy), l_LocalPlayer_0 (ref), v30 (ref)
                    if v1786:IsDescendantOf(l_LocalPlayer_0.Backpack) then
                        v30:switch(v1786);
                    end;
                end);
            end;
            return v1788;
        else
            return;
        end;
    end;
    v30.AddToList = function(_, v1794) --[[ Line: 9562 ]] --[[ Name: AddToList ]]
        -- upvalues: v602 (copy), l_HitObject_0 (copy), v30 (copy), l_MaterialReference_0 (copy)
        if not v1794 then
            return;
        else
            local v1795 = CheckIfAdded(v1794);
            if v1795 then
                print("Weapon^^already added");
                return v1795;
            else
                local v1796 = os.clock();
                print("Loading weapon: " .. v1794.Name);
                v602(v1794);
                l_HitObject_0[v1794] = true;
                local v1797 = v30.new(v1794);
                print("Added " .. v1794.Name .. " in " .. os.clock() - v1796);
                l_HitObject_0[v1794] = v1797;
                local v1798 = v1794.Name .. tostring(#v30.List + 1);
                v30.List[v1798] = v1797;
                local v1799 = v1794:FindFirstChild("Primary", true) or v1794:FindFirstChild("Secondary", true) or v1794:FindFirstChild("Melee", true) or v1794:FindFirstChild("Gadget", true);
                if v1799 then
                    local v1800 = l_MaterialReference_0(v1794, v1799);
                    if v1800 then
                        v1797.MobileFrame = v1800;
                    end;
                end;
                print("Fully loaded " .. v1794.Name .. " in " .. os.clock() - v1796);
                return v1797;
            end;
        end;
    end;
    v30.Load = function() --[[ Line: 9601 ]] --[[ Name: Load ]]
        -- upvalues: l_Backpack_0 (ref), v30 (copy)
        local v1801 = os.clock();
        for _, v1803 in pairs(l_Backpack_0:GetChildren()) do
            if v1803 then
                task.spawn(function() --[[ Line: 9605 ]]
                    -- upvalues: v30 (ref), v1803 (copy)
                    v30:AddToList(v1803);
                end);
            end;
        end;
        print("DONE LOADING ALL WEAPONS IN " .. os.clock() - v1801);
        l_Backpack_0.ChildAdded:Connect(function(v1804) --[[ Line: 9612 ]]
            -- upvalues: v30 (ref)
            v30:AddToList(v1804);
        end);
    end;
    v30.Load();
    v646 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("NumPadInteraction");
    v655 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("SimonSaysInteraction");
    v664 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("SwitchInteraction");
    v665 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("ConnectShapesInteraction");
    local l_frame_lobbyMenu_0 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_lobbyMenu");
    local function v1816(v1806) --[[ Line: 9626 ]] --[[ Name: useMask ]]
        -- upvalues: l_Character_0 (ref), v41 (ref), v30 (copy), l_Humanoid_0 (ref), l_LocalPlayer_0 (copy), l_PlayerGui_0 (ref), l_Remotes_0 (copy), l_MobileUI_0 (ref)
        local l_Mask_0 = l_Character_0:FindFirstChild("Mask");
        if l_Mask_0 == nil and not v41 then
            if not v30.Current then
                v30:AddToList(l_Mask_0);
                l_Humanoid_0:EquipTool(l_Mask_0);
            end;
            print("ERROR FOUND");
            local l_Mask_1 = l_LocalPlayer_0.Backpack:FindFirstChild("Mask");
            if l_Mask_1 then
                l_Mask_1.Parent = l_Character_0;
                print("Error fixed");
            end;
        elseif l_Mask_0 and not v30.Current then
            v30:AddToList(l_Mask_0);
            l_Humanoid_0:EquipTool(l_Mask_0);
        end;
        if v30.Current == nil or v30.Current.tool == nil then
            print("Tool not found, getting tool");
            local l_Mask_2 = l_LocalPlayer_0.Backpack:FindFirstChild("Mask");
            if l_Mask_2 then
                print("TOOL FOUND (POTENTIAL MASK BUG FIXED)");
                l_Humanoid_0:EquipTool(l_Mask_2);
            else
                print("TOOL NOT FOUND (REPORT THIS AS ERROR)");
            end;
        end;
        if v30.Current.tool.Name == "Mask" or not v41 then
            print("used the mask!");
            print(v30.Current.tool.Name == "Mask", v41);
            v41 = true;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MaskOn").Value = true;
            v30.Load();
            local l_status_5, l_result_5 = pcall(function() --[[ Line: 9664 ]]
                -- upvalues: v30 (ref)
                v30.Current:maskOn();
            end);
            if not l_status_5 then
                warn(l_result_5);
            end;
            l_Remotes_0:WaitForChild("MaskOn"):FireServer();
            l_MobileUI_0.Buttons.Action.MaskUp.Visible = false;
            task.delay(0.5, function() --[[ Line: 9674 ]]
                -- upvalues: l_MobileUI_0 (ref)
                l_MobileUI_0.Hotbar.Visible = true;
                for _, v1813 in l_MobileUI_0.Buttons.Weapons:GetChildren() do
                    if v1813.Name ~= "Equipment" and v1813.Name ~= "Grenade" then
                        v1813.Visible = true;
                    end;
                end;
                for _, v1815 in l_MobileUI_0.Buttons.Action:GetChildren() do
                    if v1815.Name == "Sprint" or v1815.Name == "Crouch" or v1815.Name == "JumpButton" then
                        v1815.Visible = true;
                    end;
                end;
            end);
            if v1806 then
                return;
            end;
        end;
    end;
    local v1817 = nil;
    local v1818 = 0;
    v30.switch = function(_, v1820, _) --[[ Line: 9704 ]] --[[ Name: switch ]]
        -- upvalues: v41 (ref), v51 (ref), v28 (copy), l_frame_lobbyMenu_0 (copy), v646 (copy), v655 (copy), v664 (copy), v665 (copy), v23 (ref), v43 (ref), v20 (ref), l_Character_0 (ref), v1818 (ref), l_LocalPlayer_0 (copy), v1817 (ref), v42 (ref), l_PlayerGui_0 (ref), v30 (copy), v18 (ref), v19 (ref), v21 (ref), l_Humanoid_0 (ref)
        if not v41 or v51 or v28.Mode ~= "FirstPerson" or l_frame_lobbyMenu_0.Parent:GetAttribute("UsingUI") or v646.Visible or v655.Visible or v664.Visible or v665.Visible or l_frame_lobbyMenu_0.Visible or v23 or v43 or v20 or l_Character_0:GetAttribute("CarryingBody") or v28.TaseActive then
            return;
        else
            local v1822 = (v1818 + 1) % 100;
            v1818 = v1822;
            local l_Tool_0 = l_LocalPlayer_0.Character:FindFirstChildOfClass("Tool");
            if typeof(v1820) == "string" then
                v1820 = l_LocalPlayer_0.Backpack:FindFirstChild(v1820, true) or l_Tool_0 and l_Tool_0:FindFirstChild(v1820);
            end;
            v1817 = v1820;
            v42 = true;
            local v1824 = 0.7;
            local v1825 = 0.7;
            local v1826 = 0.7;
            if v1820.Name == "Primary" then
                v1824 = 0;
            elseif v1820.Name == "Secondary" then
                v1825 = 0;
            elseif v1820.Name == "Gadget" then
                v1826 = 0;
            end;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("MobileUI").MobileInfo:Fire("SwitchWeapon", v1820);
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmo.TextTransparency = v1824;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryAmmoTotal.TextTransparency = v1824;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.primaryFiremode.TextTransparency = v1824;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmo.TextTransparency = v1825;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryAmmoTotal.TextTransparency = v1825;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.secondaryFiremode.TextTransparency = v1825;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmo.TextTransparency = v1826;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetAmmoTotal.TextTransparency = v1826;
            l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui").PlayerStats.LocalPlayerStats.info_weapons.gadgetFiremode.TextTransparency = v1826;
            local v1827 = nil;
            if v30.Current and v1820 and v30.Current.tool ~= v1820.Parent then
                if not v30.Current.reloading and not v42 and v30.Current.tool.Name ~= "Mask" then
                    return;
                elseif not v1820 then
                    return;
                else
                    local v1828 = v30.Current and v30.Current.data;
                    if v1828 and v1828.GadgetType == "Throwable" then
                        v1827 = true;
                    end;
                    local v1829 = nil;
                    local v1830 = v1828 and v1828.UnequipSpeed or 0.5;
                    local l_Data_1 = v1820.Parent:FindFirstChild("Data");
                    l_Data_1 = l_Data_1 and require(l_Data_1);
                    if l_Data_1 and l_Data_1.GadgetType == "Throwable" then
                        v1829 = 0.1;
                        v1830 = 0.1;
                    end;
                    v30.Current:putAway(true, v1829);
                    task.wait(v1830);
                end;
            end;
            if v1817 ~= v1820 or v1818 ~= v1822 then
                return;
            else
                local v1832 = 0.6;
                if v1820 then
                    local v1833 = v30:AddToList(v1820.Parent);
                    if v1833 and v1833.data then
                        v1832 = v1833.data.EquipTime or v1832;
                    end;
                    v18 = v1820.Parent;
                    if v19 then
                        v21 = v1820.Parent;
                        return;
                    else
                        l_Humanoid_0:EquipTool(v1820.Parent);
                    end;
                end;
                task.wait(v1832);
                v42 = false;
                return;
            end;
        end;
    end;
    local v1834 = {
        "Primary", 
        "Secondary", 
        "Gadget"
    };
    local v1835 = 1;
    local v1836 = os.clock();
    local l_consoleMaskingUp_0 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("consoleMaskingUp");
    local function _(v1838, v1839) --[[ Line: 9815 ]] --[[ Name: getCircleOffset ]]
        local v1840 = v1838 / v1839 * 100;
        return (Vector2.new(math.floor(v1840 % 10) * 80, math.floor(v1840 / 10) * 80));
    end;
    l_UserInputService_0.InputBegan:Connect(function(v1842, v1843) --[[ Line: 9821 ]]
        -- upvalues: l_PlayerGui_0 (ref), v30 (copy), v23 (ref), v19 (ref), v20 (ref), v43 (ref), l_Humanoid_0 (ref), v18 (ref), v51 (ref), v28 (copy), l_frame_lobbyMenu_0 (copy), v646 (copy), v655 (copy), v664 (copy), v665 (copy), l_Options_0 (copy), v97 (copy), v41 (ref), l_Keybinds_0 (copy), l_LocalPlayer_0 (copy), l_l_UserInputService_0_GamepadConnected_0 (ref), v1836 (ref), l_consoleMaskingUp_0 (copy), v1816 (copy), v42 (ref), l_Character_0 (ref), v1835 (ref), v1834 (copy), l_AkimboMode_0 (copy), v0 (copy)
        if not workspace:GetAttribute("MaskReady") then
            return;
        else
            local l_Attribute_3 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):GetAttribute("InDialog");
            if not v1843 and v1842.KeyCode == Enum.KeyCode.Backspace and v30.Current == nil and not v23 and not v19 and not v20 and not v43 then
                l_Humanoid_0:EquipTool(v18);
            end;
            if v51 or v30.Current == nil or l_Attribute_3 or v28.Mode ~= "FirstPerson" or l_frame_lobbyMenu_0.Parent:GetAttribute("UsingUI") or v646.Visible or v655.Visible or v664.Visible or v665.Visible or l_frame_lobbyMenu_0.Visible or v23 or v43 then
                return;
            else
                local l_GadgetEquip_0 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild("GadgetEquip");
                l_GadgetEquip_0 = l_GadgetEquip_0 and Enum.KeyCode[l_GadgetEquip_0.Value] or Enum.KeyCode.Four;
                local v1846 = v97 and Enum.KeyCode[v97.ToggleGun.Value] or Enum.KeyCode.ButtonY;
                local v1847 = v97 and Enum.KeyCode[v97["Melee/LeanR"].Value] or Enum.KeyCode.ButtonR3;
                local v1848 = v30.Current and v30.Current.tool.Name ~= "Mask" and v41;
                if not v1843 and not v41 and MatchKeys(v1842, l_Keybinds_0.MaskKeys) and l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("DifficultyDisplay").BackgroundTransparency >= 1 then
                    if l_l_UserInputService_0_GamepadConnected_0 then
                        v1836 = os.clock();
                        task.wait();
                        l_consoleMaskingUp_0.progress.ImageRectOffset = Vector2.new(0, 0);
                        l_consoleMaskingUp_0.Visible = true;
                        while v1836 and IsKeyDown(l_Keybinds_0.MaskKeys) and not v41 do
                            local v1849 = os.clock() - v1836;
                            local l_progress_0 = l_consoleMaskingUp_0.progress;
                            local v1851 = v1849 / 0.5 * 100;
                            l_progress_0.ImageRectOffset = Vector2.new(math.floor(v1851 % 10) * 80, math.floor(v1851 / 10) * 80);
                            if v1849 > 0.5 then
                                l_consoleMaskingUp_0.Visible = false;
                                v1816(true);
                                break;
                            else
                                task.wait();
                            end;
                        end;
                        l_consoleMaskingUp_0.Visible = false;
                        v1836 = nil;
                    else
                        v1816(true);
                    end;
                elseif v1848 and v30.Current and (v1846 or not v42) then
                    local v1852 = false;
                    local v1853 = l_Character_0:FindFirstChild("Primary", true) and "Primary" or l_Character_0:FindFirstChild("Secondary", true) and "Secondary" or "Gadget";
                    local v1854 = nil;
                    local v1855 = l_l_UserInputService_0_GamepadConnected_0 and (IsKeyDown(l_Keybinds_0.AimKeys) or v30.Current and v30.Current.aiming);
                    if v1842.KeyCode == Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("ToggleGun").Value] then
                        v1854 = v1853 == "Secondary" and l_LocalPlayer_0.Backpack:FindFirstChild("Gadget", true) or v1853 == "Primary" and l_LocalPlayer_0.Backpack:FindFirstChild("Secondary", true) or l_LocalPlayer_0.Backpack:FindFirstChild("Primary", true);
                        if v1854 then
                            v1852 = true;
                        end;
                    elseif v1842.KeyCode == v1846 then
                        v1835 = v1835 + 1;
                        v1835 = v1835 > #v1834 and 1 or v1835;
                        v1854 = v1834[v1835];
                        v1852 = true;
                    elseif v1842.KeyCode == v1847 and not v1855 then
                        v1854 = l_LocalPlayer_0.Backpack:FindFirstChild("Melee", true);
                        v1835 = 1;
                        if v1854 then
                            v1852 = true;
                        end;
                    elseif v1842.KeyCode == Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Primary").Value] then
                        v1854 = l_LocalPlayer_0.Backpack:FindFirstChild("Primary", true);
                        if v1854 then
                            v1852 = true;
                        end;
                    elseif v1842.KeyCode == Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Secondary").Value] then
                        v1854 = l_LocalPlayer_0.Backpack:FindFirstChild("Secondary", true);
                        if v1854 then
                            v1852 = true;
                        end;
                    elseif v1842.KeyCode == l_GadgetEquip_0 then
                        v1854 = l_LocalPlayer_0.Backpack:FindFirstChild("Gadget", true);
                        if v1854 then
                            v1852 = true;
                        end;
                    elseif v1842.KeyCode == Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Melee").Value] then
                        v1854 = l_LocalPlayer_0.Backpack:FindFirstChild("Melee", true);
                        if v1854 then
                            v30:AddToList(v1854.Parent);
                            v1852 = true;
                        end;
                    end;
                    if v1852 then
                        v30:switch(v1854);
                    end;
                end;
                if v30.Current then
                    local v1856 = l_AkimboMode_0.Value and l_l_UserInputService_0_GamepadConnected_0 and v30.Current and v30.Current.data.Dual and l_Keybinds_0.AttackKeys or l_Keybinds_0.AimKeys;
                    local v1857 = l_AkimboMode_0.Value and l_l_UserInputService_0_GamepadConnected_0 and v30.Current and v30.Current.data.Dual and l_Keybinds_0.AimKeys or l_Keybinds_0.AttackKeys;
                    if v30.Current then
                        local _ = v30.Current.data.FireMode;
                    end;
                    local v1859 = v30.Current.AlternateGuns or false;
                    local l_fireSecondGun_0 = v30.Current.fireSecondGun;
                    v30.Current.fireSecondGun = not l_fireSecondGun_0;
                    local v1861 = not l_AkimboMode_0.Value and MatchKeys(v1842, l_Keybinds_0.AimKeys) or MatchKeys(v1842, l_Keybinds_0.SecondAimKeys);
                    local v1862 = false;
                    if v30.Equipped and v30.Current and v30.Current.data.Dual and v30.Current.data.WeaponType == "Gun" and v1861 then
                        v1862 = true;
                        v30.Current:setaim(true);
                    end;
                    if MatchKeys(v1842, v1856) and not v1862 and v30.Equipped and v30.Current then
                        if v30.Current.data.ShortThrow then
                            v30.Current:attack(v30.Current.data.WeaponType, "ShortThrow");
                        elseif v30.Current.data.Dual and v30.Current.data.WeaponType == "Gun" then
                            if l_AkimboMode_0.Value then
                                v30.Current:attack(v30.Current.data.WeaponType, {
                                    SecondGun = true
                                });
                            end;
                        else
                            v30.Current:setaim(true);
                        end;
                    end;
                    if MatchKeys(v1842, v1857) and v30.Equipped then
                        if v1859 then
                            v30.Current:attack(v30.Current.data.WeaponType, {
                                SecondGun = l_fireSecondGun_0
                            });
                        else
                            if not l_AkimboMode_0.Value then
                                task.spawn(function() --[[ Line: 9980 ]]
                                    -- upvalues: v30 (ref)
                                    v30.Current:attack(v30.Current.data.WeaponType, {
                                        SecondGun = true
                                    });
                                end);
                            end;
                            v30.Current:attack(v30.Current.data.WeaponType);
                        end;
                    end;
                    if not MatchKeys(v1842, l_Keybinds_0.GrenadeKeys) or not v30.Equipped or not v30.Current or v30.Current.throwGrenade then

                    end;
                    if MatchKeys(v1842, l_Keybinds_0.FiremodeKeys) and v30.Equipped and v30.Current and v30.Current.switchFiremode then
                        v30.Current:switchFiremode();
                    end;
                    if MatchKeys(v1842, l_Keybinds_0.InspectKeys) and v30.Equipped and v30.Current then
                        v30.Current:setinspecting(true);
                    end;
                    if MatchKeys(v1842, {
                        Enum.KeyCode.M
                    }) and v0 and v30.Equipped and v30.Current then
                        v30.Current:reloaddata();
                    end;
                end;
                return;
            end;
        end;
    end);
    local v1863 = false;
    local v1864 = 0;
    local v1865 = nil;
    local v1866 = nil;
    local v1867 = {};
    local l_lookAt_0 = CFrame.lookAt;
    local l_BodyCarryAttachment_0 = l_Character_0.Torso:WaitForChild("BodyCarryAttachment");
    l_BodyCarryAttachment_0.Parent = l_Character_0:WaitForChild("HumanoidRootPart");
    local l_BodyCarryAttachment2_0 = l_Character_0.Torso:WaitForChild("BodyCarryAttachment2");
    l_BodyCarryAttachment2_0.Parent = l_Character_0:WaitForChild("HumanoidRootPart");
    local v1871 = CFrame.new();
    local v1872 = nil;
    table.insert(v105, function(v1873) --[[ Line: 10040 ]] --[[ Name: step ]]
        -- upvalues: v1867 (copy), l_Character_0 (ref), v1872 (ref), l_BodyCarryAttachment2_0 (copy), l_BodyCarryAttachment_0 (copy), v30 (copy), l_CurrentCamera_0 (copy), v1871 (ref)
        for v1874, v1875 in v1867 do
            if not v1874 then
                return;
            elseif v1875 then
                v1875(v1873);
                if l_Character_0:GetAttribute("CarryingBody") then
                    local v1876 = v1872 and v1872.Parent == workspace.Criminals;
                    local v1877 = v1876 and l_BodyCarryAttachment2_0 or l_BodyCarryAttachment_0;
                    if v1872 and v1872.PrimaryPart then
                        local l_AlignPosition_0 = l_Character_0.Torso:FindFirstChild("AlignPosition");
                        local l_AlignOrientation_0 = l_Character_0.Torso:FindFirstChild("AlignOrientation");
                        if not l_AlignPosition_0 or l_AlignOrientation_0 then

                        end;
                        local v1880 = v30.calculateBob(1, 1);
                        local v1881 = (v1872:GetAttribute("Offset") or v1876 and CFrame.new(0.5, 0.5, -1.5) * CFrame.fromOrientation(0, 1.5707963267948966, 0) or CFrame.new(2, -0, -0) * CFrame.Angles(1.5707963267948966, 3.141592653589793, 0)) * v1880;
                        local v1882 = l_CurrentCamera_0.CFrame * v1871 * v1881;
                        v1872.PrimaryPart.Anchored = true;
                        v1872:PivotTo(v1882);
                    else
                        v1877.WorldCFrame = l_CurrentCamera_0.CFrame * CFrame.new(2.4, -1, 0.5) * CFrame.Angles(1.5707963267948966, 3.141592653589793, 0);
                    end;
                end;
            end;
        end;
    end);
    local function v1902(v1883) --[[ Line: 10082 ]] --[[ Name: viewmodelLoop ]]
        -- upvalues: v1871 (ref), l_CurrentCamera_0 (copy), l_new_0 (copy), l_lookAt_0 (copy), v30 (copy), v1867 (copy)
        local _ = workspace.CurrentCamera;
        local l_Focus_1 = v1883:WaitForChild("Focus");
        local v1886 = v1883:GetAttribute("Offset") or CFrame.new(0, -1, 0);
        v1871 = CFrame.new(0, -4, 0);
        local l_v1886_0 = v1886;
        local l_v1883_Attribute_0 = v1883:GetAttribute("Equipped");
        local v1889 = CFrame.new();
        v1883.PrimaryPart.Anchored = true;
        v1883:GetAttributeChangedSignal("Offset"):Connect(function() --[[ Line: 10099 ]]
            -- upvalues: l_v1886_0 (ref), v1883 (copy)
            l_v1886_0 = v1883:GetAttribute("Offset");
        end);
        local _ = os.clock();
        v1867[v1883] = function(v1891) --[[ Line: 10107 ]]
            -- upvalues: v1883 (copy), l_Focus_1 (copy), l_CurrentCamera_0 (ref), l_v1886_0 (ref), l_new_0 (ref), l_lookAt_0 (ref), v30 (ref), v1889 (ref), v1871 (ref), l_v1883_Attribute_0 (ref)
            if not v1883.PrimaryPart then
                return;
            else
                local l_Value_22 = l_Focus_1.Value;
                local l_CFrame_6 = l_CurrentCamera_0.CFrame;
                local v1894 = l_CFrame_6 * l_v1886_0;
                if l_Value_22 and l_Focus_1:GetAttribute("LookAt") then
                    local v1895 = l_Value_22:GetPivot() * (l_Focus_1:GetAttribute("FocusOffset") or l_new_0());
                    v1894 = l_lookAt_0(v1894.Position, v1895.Position);
                    local l_Magnitude_2 = (l_CFrame_6.Position - v1895.Position).Magnitude;
                    local l_l_Focus_1_Attribute_0 = l_Focus_1:GetAttribute("ViewmodelDistance");
                    if l_l_Focus_1_Attribute_0 and l_Magnitude_2 < l_l_Focus_1_Attribute_0 and l_Magnitude_2 > 0 then
                        v1894 = v1894 * l_new_0(0, 0, l_l_Focus_1_Attribute_0 - l_Magnitude_2);
                    end;
                    local _, _, _ = v1883.Torso.Neck.Transform:ToEulerAnglesXYZ();
                end;
                local v1901 = v30.calculateBob(1, 1);
                v1889 = v1894 * v1871 * v1901;
                v1883.PrimaryPart.CFrame = v1889;
                if l_v1883_Attribute_0 then
                    v1871 = v1871:Lerp(CFrame.new(0, 0, 0), 1 - math.exp(-30 * v1891));
                    return;
                else
                    v1871 = v1871:Lerp(CFrame.new(0, -4, 0), 1 - math.exp(-30 * v1891));
                    return;
                end;
            end;
        end;
        v1883:GetAttributeChangedSignal("Equipped"):Connect(function() --[[ Line: 10156 ]]
            -- upvalues: l_v1883_Attribute_0 (ref), v1883 (copy)
            l_v1883_Attribute_0 = v1883:GetAttribute("Equipped");
        end);
    end;
    if not v12 then
        v12 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("GetCharacterData"):InvokeServer();
    end;
    local function v1922(v1903) --[[ Line: 10169 ]] --[[ Name: applyAppeareance_Deprecated ]]
        -- upvalues: v59 (copy), l_Character_0 (ref), l_Assets_0 (copy), l_new_0 (copy), l_Angles_0 (copy), l_HeartWatch_0 (copy)
        local l_FirstChild_12 = v59:WaitForChild("OwnedWeapons"):FindFirstChild("(Suit)0");
        local v1905 = "Default";
        if l_FirstChild_12 then
            v1905 = l_FirstChild_12.Skin.Value;
        end;
        local l_Color_3 = l_Character_0.Head.Color;
        local l_Color_4 = l_Character_0["Right Arm"].Color;
        local l_Color_5 = l_Character_0["Left Arm"].Color;
        local l_Arms_3 = l_Assets_0.Character.Arms;
        local v1910 = l_Arms_3.Appeareance:FindFirstChild(v1905) or l_Arms_3.Appeareance:FindFirstChild("Default");
        if v1910 then
            v1910 = v1910:Clone();
            local v1911 = v1910.Right:Clone();
            local v1912 = v1910.Left:Clone();
            for _, v1914 in {
                v1911, 
                v1912
            } do
                v1914.Name = v1914.Name .. "Appeareance";
                local v1915 = v1914 == v1911 and v1903.RSkin or v1903.LSkin;
                if typeof(v1903) == "table" then
                    v1915 = v1914 == v1911 and v1903[2] or v1903[1];
                end;
                for _, v1917 in pairs(v1914:GetDescendants()) do
                    if v1917:IsA("BasePart") then
                        v1917.CanCollide = false;
                        v1917.CanTouch = false;
                        v1917.CastShadow = false;
                        v1917.CollisionGroup = "Ammo";
                        if v1917.Name:match("Skin") then
                            v1917.Color = v1914 == v1911 and l_Color_4 or v1914 == v1912 and l_Color_5 or l_Color_3;
                        end;
                        if v1917 ~= v1914.PrimaryPart then
                            local l_WeldConstraint_5 = Instance.new("WeldConstraint");
                            l_WeldConstraint_5.Parent = v1914.PrimaryPart;
                            l_WeldConstraint_5.Part0 = v1914.PrimaryPart;
                            l_WeldConstraint_5.Part1 = v1917;
                            l_WeldConstraint_5.Name = l_WeldConstraint_5.Part0.Name .. "-to-" .. l_WeldConstraint_5.Part1.Name;
                        end;
                        v1917.Anchored = false;
                    end;
                end;
                v1914:PivotTo(v1915.CFrame * l_new_0(0, 0.35, 0) * l_Angles_0(-3.141592653589793, math.rad(v1914 == v1911 and -0 or 0), 0));
                local l_WeldConstraint_6 = Instance.new("WeldConstraint");
                l_WeldConstraint_6.Parent = v1915;
                l_WeldConstraint_6.Part0 = v1915;
                l_WeldConstraint_6.Part1 = v1914.PrimaryPart;
                v1914.Parent = v1915;
            end;
            if v1912 then
                local _ = v1912:FindFirstChild("Watch");
            end;
            local v1921 = v1912 and v1912:FindFirstChild("WatchFace", true);
            task.delay(0.1, function() --[[ Line: 10238 ]]
                -- upvalues: v1921 (copy), l_HeartWatch_0 (ref)
                if v1921 then
                    l_HeartWatch_0.Adornee = v1921;
                    v1921.Color = l_HeartWatch_0:GetAttribute("WatchColor") or Color3.fromRGB(209, 87, 89);
                end;
            end);
            v1910:Destroy();
        end;
    end;
    local function v1943(v1923, v1924) --[[ Line: 10252 ]] --[[ Name: applyAppeareance ]]
        -- upvalues: v59 (copy), v1922 (copy), v12 (ref), l_CharInfo_0 (copy), l_new_0 (copy), l_Angles_0 (copy), l_HeartWatch_0 (copy), l_Assets_0 (copy)
        local l_Using_2 = v59:WaitForChild("Classes"):WaitForChild("Using");
        if not l_Using_2:FindFirstChild("Character") then
            return v1922(v1923);
        else
            local v1926 = l_Using_2 and l_Using_2.Character.Value;
            local v1927 = v12 and v12[v1926];
            local v1928 = game:GetService("ReplicatedStorage"):WaitForChild("SkinService"):WaitForChild("CharacterCustomization"):WaitForChild("ViewmodelItems"):WaitForChild("ViewmodelBase"):Clone();
            l_CharInfo_0.applyCharacterSkinToViewmodel(v1928, v1927);
            for _, v1930 in v1928:GetDescendants() do
                if v1930:IsA("BasePart") then
                    v1930.Anchored = false;
                    v1930.CanCollide = false;
                    v1930.Massless = false;
                end;
            end;
            v1928:ScaleTo(v1924 or 1);
            local v1931 = nil;
            local v1932 = nil;
            if typeof(v1923) == "table" then
                v1931 = v1923[1];
                v1932 = v1923[2];
            else
                v1931 = v1923:FindFirstChild("LSkin");
                v1932 = v1923:FindFirstChild("RSkin");
            end;
            local v1933 = typeof(v1923) == "table";
            local l_Left_1 = v1928:FindFirstChild("Left");
            local l_Right_1 = v1928:FindFirstChild("Right");
            local v1936 = l_new_0(0, 0.15, 0) * CFrame.Angles(3.141592653589793, 0, 0);
            if v1933 then
                v1936 = l_new_0(0, 0.35, 0) * l_Angles_0(0, -1.5707963267948966, 0);
            end;
            l_Left_1:PivotTo(v1931:GetPivot() * v1936);
            l_Left_1.Parent = v1931;
            local l_WeldConstraint_7 = Instance.new("WeldConstraint");
            l_WeldConstraint_7.Parent = v1931;
            l_WeldConstraint_7.Part0 = v1931;
            l_WeldConstraint_7.Part1 = l_Left_1;
            l_WeldConstraint_7.Name = l_WeldConstraint_7.Part0.Name .. "-to-" .. l_WeldConstraint_7.Part1.Name;
            local v1938 = l_new_0(0, 0.15, 0) * CFrame.Angles(3.141592653589793, 0, 0);
            if v1933 then
                v1938 = l_new_0(0, 0.35, 0) * l_Angles_0(0, 3.141592653589793, 0);
            end;
            l_Right_1:PivotTo(v1932:GetPivot() * v1938);
            l_Right_1.Parent = v1932;
            local l_WeldConstraint_8 = Instance.new("WeldConstraint");
            l_WeldConstraint_8.Parent = v1932;
            l_WeldConstraint_8.Part0 = v1932;
            l_WeldConstraint_8.Part1 = l_Right_1;
            l_WeldConstraint_8.Name = l_WeldConstraint_8.Part0.Name .. "-to-" .. l_WeldConstraint_8.Part1.Name;
            if l_Left_1 then
                local _ = l_Left_1:FindFirstChild("Watch");
            end;
            local v1941 = l_Left_1 and l_Left_1:FindFirstChild("WatchFace", true);
            task.delay(0.1, function() --[[ Line: 10321 ]]
                -- upvalues: v1941 (copy), l_HeartWatch_0 (ref)
                if v1941 then
                    l_HeartWatch_0.Adornee = v1941;
                    v1941.Color = l_HeartWatch_0:GetAttribute("WatchColor") or Color3.fromRGB(209, 87, 89);
                end;
            end);
            local _ = l_Assets_0.Character.Arms;
            return;
        end;
    end;
    local function v1948(_) --[[ Line: 10398 ]] --[[ Name: createViewmodel ]]
        -- upvalues: v1943 (copy), v1902 (copy)
        local v1945 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Assets"):WaitForChild("Character"):WaitForChild("InteractViewmodel"):Clone();
        v1943(v1945);
        for _, v1947 in v1945:GetDescendants() do
            if v1947:IsA("BasePart") then
                v1947.CanCollide = false;
                v1947.CanTouch = false;
                v1947.CastShadow = false;
                v1947.CanQuery = false;
            end;
        end;
        v1945.Parent = workspace;
        v1945:ScaleTo(1);
        v1902(v1945);
        return v1945;
    end;
    local function v1960(v1949, v1950, v1951) --[[ Line: 10424 ]] --[[ Name: handleFPInteraction ]]
        -- upvalues: v30 (copy), v19 (ref), l_Character_0 (ref), v1864 (ref), v42 (ref), v21 (ref), v1863 (ref), l_Humanoid_0 (ref), v1865 (ref), v1866 (ref), v1948 (copy), v60 (ref), v20 (ref), v1867 (copy), v43 (ref), v23 (ref), v18 (ref)
        local v1952 = nil;
        local v1953 = 1;
        local v1954 = v1949 and v1949.Parent;
        local v1955 = v1954 and v1954.Parent;
        if v1949 and v1949:IsA("ProximityPrompt") then
            v1952 = v1955 and v1955.Parent == workspace.Criminals and "DownedPlayer" or v1955.Name;
            v1953 = v1949.HoldDuration;
        end;
        if v1951 then
            v1953 = v1951.Duration or 2;
            v1955 = v1951.Model;
            v1954 = v1951.RootPart or v1955.PrimaryPart;
            v1949 = not v1951.Stop;
            v1952 = v1955 and v1955.Name;
        end;
        print(v1953, v1952);
        if v1953 < 0.5 and not v1952:match("KickDoor") and not v1955:GetAttribute("NoGrabAnim") then
            if v30.Current then
                v30.Current:playGesture("Grab");
            end;
            return;
        else
            print("INTERACT: " .. (v1949 and "TRUE" or "FALSE") .. " - " .. (v1952 or "N/A"));
            v19 = v1949;
            if l_Character_0:GetAttribute("InteractDebounce") and v1949 then
                warn("FIRED WHEN UNDER DEBOUNCE?");
            end;
            if v1949 then
                v1864 = (v1864 + 1) % 100;
                local l_v1864_0 = v1864;
                v42 = true;
                v21 = v21 or v30.Current and v30.Current.tool;
                if not v1863 then
                    v1863 = true;
                    if v30.Current then
                        v30.Current:putAway(true);
                    end;
                end;
                if v19 and v1864 == l_v1864_0 and v19 and v1864 == l_v1864_0 then
                    l_Humanoid_0:UnequipTools();
                end;
                if v1865 then
                    print("VIEWMODEL ALREADY EXISTS, DESTROYING");
                    if v1866 then
                        v1866.stop(true);
                    end;
                    v1865:SetAttribute("Equipped", false);
                    v1865:Destroy();
                end;
                v1865 = v1948(v1952);
                if v1865 then
                    local l_Focus_2 = v1865:FindFirstChild("Focus");
                    if l_Focus_2 then
                        l_Focus_2.Value = v1954;
                    end;
                    print("SETTING FOCUS");
                    v1866 = require(v1865.Animate);
                    if v1866.animate(v1952, v1953, v1949) then
                        v1865:SetAttribute("Equipped", true);
                        v60 = v1865;
                        return;
                    else
                        v1865:Destroy();
                        v1865 = nil;
                        v1866 = nil;
                        return;
                    end;
                end;
            elseif not v1949 and v21 then
                v20 = true;
                local l_v1865_0 = v1865;
                print(v1865);
                if l_v1865_0 then
                    if v1866 then
                        v1866.stop(v1950);
                    end;
                    l_Character_0:SetAttribute("InteractDebounce", true);
                    task.delay(0.5, function() --[[ Line: 10523 ]]
                        -- upvalues: l_Character_0 (ref)
                        l_Character_0:SetAttribute("InteractDebounce", false);
                    end);
                    game.Debris:AddItem(l_v1865_0, 0.5);
                    task.wait(0.3);
                    if l_v1865_0 and l_v1865_0.Parent ~= nil then
                        l_v1865_0:SetAttribute("Equipped", false);
                        if v1867[l_v1865_0] then
                            v1867[l_v1865_0] = nil;
                        end;
                        if v60 == l_v1865_0 then
                            v60 = nil;
                        end;
                    end;
                end;
                if v1863 and not v30.Current then
                    if not v43 then
                        l_Humanoid_0:EquipTool(v21);
                    end;
                elseif v30.Current then
                    v30.Current:putAway(false);
                end;
                v21 = nil;
                if v30.Current and v30.Current.toolAnimations and v30.Current.toolAnimations.Grab then
                    v30.Current.toolAnimations.Grab.Priority = Enum.AnimationPriority.Action3;
                    v30.Current.toolAnimations.Grab:Play(0.1, 1, 1.2);
                end;
                task.wait(0.1);
                if v30.Current then
                    v30.Current:putAway(false);
                end;
                v20 = false;
                repeat
                    task.wait();
                until not v30.Current or not v30.Current or not v30.Current.puttingAway;
                if not v21 then
                    v1863 = false;
                    v42 = false;
                    return;
                end;
            elseif not v1949 and v30.Current == nil and not v23 and not v43 then
                local v1959 = v18:FindFirstChild("Primary") or v18:FindFirstChild("Secondary") or v18:FindFirstChild("Melee") or v18:FindFirstChild("Gadget");
                if v1959 then
                    v30:switch(v1959.Name);
                    return;
                else
                    l_Humanoid_0:EquipTool(v18);
                end;
            end;
            return;
        end;
    end;
    l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("Interact").Event:Connect(function(v1961, v1962, v1963) --[[ Line: 10592 ]]
        -- upvalues: v1960 (copy)
        v1960(v1961, v1962, v1963);
    end);
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("AnimEvent").OnClientEvent:Connect(function(v1964, v1965, v1966) --[[ Line: 10599 ]]
        -- upvalues: v1960 (copy)
        v1960(v1964, v1965, v1966);
    end);
    local v1967 = nil;
    local v1968 = nil;
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("EquipEvent").OnClientEvent:Connect(function(v1969, v1970) --[[ Line: 10606 ]]
        -- upvalues: v1872 (ref), v1967 (ref), v1968 (ref), v1865 (ref), v1866 (ref), v1948 (copy), v60 (ref), l_Humanoid_0 (ref), v43 (ref), v30 (copy), v23 (ref), v18 (ref)
        if v1872 and v1872.PrimaryPart and v1872 ~= v1970 then
            v1872.PrimaryPart.Anchored = false;
        end;
        if v1967 then
            if v1872 then
                if v1872.PrimaryPart then
                    v1872.PrimaryPart.Anchored = false;
                end;
                v1872 = nil;
            end;
            if v1968 then
                v1968.stop(true);
                task.wait(0.3);
            end;
            v1967:SetAttribute("Equipped", false);
            task.wait(0.2);
            game.Debris:AddItem(v1967, 0.3);
            v1967 = nil;
            v1968 = nil;
        end;
        local v1971 = v1970 and v1970.Parent == workspace.Criminals;
        if v1970 then
            v1872 = v1970;
            if v1865 then
                if v1866 then
                    v1866.stop(true);
                end;
                task.wait(0.2);
                v1865:SetAttribute("Equipped", false);
                game.Debris:AddItem(v1865, 0.2);
            end;
            v1967 = v1948("CarryingBody");
            if v1967 then
                v1968 = require(v1967.Animate);
                local v1972 = v1971 and "CarryingAlly" or "CarryingBody";
                if v1968.animate(v1972, 0.2) then
                    v1967:SetAttribute("Equipped", true);
                    v60 = v1967;
                else
                    v1967:Destroy();
                    v1967 = nil;
                    v1968 = nil;
                end;
            end;
        end;
        task.spawn(function() --[[ Line: 10669 ]]
            -- upvalues: v1969 (copy), l_Humanoid_0 (ref), v43 (ref), v30 (ref), v23 (ref), v18 (ref)
            if v1969 then
                l_Humanoid_0:UnequipTools();
                v43 = false;
                if v30.Current == nil and not v23 and not v43 then
                    local v1973 = v18:FindFirstChild("Primary") or v18:FindFirstChild("Secondary") or v18:FindFirstChild("Melee") or v18:FindFirstChild("Gadget");
                    if v1973 then
                        v30:switch(v1973.Name);
                        print("reequipnig tools 4");
                        return;
                    else
                        print("reequipnig tools 3");
                        l_Humanoid_0:EquipTool(v18);
                        return;
                    end;
                end;
            else
                v43 = true;
                l_Humanoid_0:UnequipTools();
            end;
        end);
    end);
    game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("YellEvent").Event:Connect(function(v1974) --[[ Line: 10696 ]]
        -- upvalues: v30 (copy)
        if typeof(v1974) == "table" and v1974.Type then
            print(v1974);
            if v1974.Type == "Gesture" then
                if v30.Current then
                    v30.Current:playGesture(v1974.Name);
                    return;
                end;
            elseif v1974.Type == "Inspect" then
                if v30.Current then
                    v30.Current:setinspecting(true);
                    return;
                end;
            elseif v1974.Type == "Interact" then

            end;
        end;
    end);
    l_UserInputService_0.InputEnded:Connect(function(v1975, _) --[[ Line: 10716 ]]
        -- upvalues: v51 (ref), l_AkimboMode_0 (copy), l_l_UserInputService_0_GamepadConnected_0 (ref), v30 (copy), l_Keybinds_0 (copy)
        if v51 then
            return;
        else
            local v1977 = l_AkimboMode_0.Value and l_l_UserInputService_0_GamepadConnected_0 and v30.Current and v30.Current.data.Dual and l_Keybinds_0.AttackKeys or l_Keybinds_0.AimKeys;
            local v1978 = l_AkimboMode_0.Value and l_l_UserInputService_0_GamepadConnected_0 and v30.Current and v30.Current.data.Dual and l_Keybinds_0.AimKeys or l_Keybinds_0.AttackKeys;
            local v1979 = false;
            local v1980 = not l_AkimboMode_0.Value and MatchKeys(v1975, l_Keybinds_0.AimKeys) or MatchKeys(v1975, l_Keybinds_0.SecondAimKeys);
            if v30.Equipped and v30.Current and v30.Current.data and v30.Current.data.Dual and v30.Current.data.WeaponType == "Gun" and v1980 then
                v1979 = true;
                v30.Current:setaim(false);
            end;
            if MatchKeys(v1975, v1977) and not v1979 and v30.Equipped and v30.Current then
                if v30.Current.data and v30.Current.data.WeaponType == "Gadget" and v30.Current.data.ShortThrow then
                    v30.Current:usegadget(false);
                elseif v30.Current.data.Dual and v30.Current.data.WeaponType == "Gun" then
                    if l_AkimboMode_0.Value then
                        v30.Current:setshooting(false, {
                            SecondGun = v30.Current.data.Dual
                        });
                    end;
                elseif not v30.Current.data.Dual or v30.Current.data.Shield then
                    v30.Current:setaim(false);
                end;
            end;
            if MatchKeys(v1975, v1978) and v30.Current ~= nil then
                if v30.Current.data and v30.Current.data.WeaponType == "Gun" then
                    if not l_AkimboMode_0.Value then
                        task.spawn(function() --[[ Line: 10749 ]]
                            -- upvalues: v30 (ref)
                            v30.Current:setshooting(false, {
                                SecondGun = v30.Current.data.Dual
                            });
                        end);
                    end;
                    v30.Current:setshooting(false, {
                        SecondGun = not v30.Current.data.Dual
                    });
                    return;
                elseif v30.Current.data and v30.Current.data.WeaponType == "Melee" then
                    v30.Current:usemelee(false);
                    return;
                elseif v30.Current.data and v30.Current.data.WeaponType == "Gadget" then
                    v30.Current:usegadget(false);
                end;
            end;
            return;
        end;
    end);
    Step = function(v1981) --[[ Line: 10766 ]] --[[ Name: Step ]]
        -- upvalues: v30 (copy)
        for _, v1983 in pairs(v30.List) do
            if v1983 then
                v1983.step(v1981);
            end;
        end;
    end;
    table.insert(v105, Step);
    l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("Mask").Event:connect(function(_) --[[ Line: 10777 ]]
        -- upvalues: v41 (ref), v1816 (copy)
        if not v41 then
            warn("mask evnet");
            v1816();
        end;
    end);
    local l_Caught_1 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("Caught");
    local l_GameStarted_2 = game:GetService("ReplicatedStorage"):WaitForChild("RS_Package"):WaitForChild("ReplicatedGameStatus"):WaitForChild("GameStarted");
    spawn(function() --[[ Line: 10796 ]]
        -- upvalues: l_GameStarted_2 (copy), v24 (ref), l_MobileUI_0 (ref), l_PlayerGui_0 (ref), v95 (copy), l_Character_0 (ref), v30 (copy), l_Humanoid_0 (ref), l_LocalPlayer_0 (copy), v41 (ref), v14 (ref), l_Keybinds_0 (copy), l_l_UserInputService_0_GamepadConnected_0 (ref), v1816 (copy), v32 (copy), l_Caught_1 (copy)
        repeat
            wait();
            game:GetService("GuiService").TouchControlsEnabled = false;
        until l_GameStarted_2.Value;
        if v24 then
            l_MobileUI_0.Visible = true;
            if l_PlayerGui_0:FindFirstChild("TouchGui") then

            end;
        end;
        game:GetService("GuiService").TouchControlsEnabled = true;
        print("GAME STARTED~~~");
        local l_PlaceId_0 = game.PlaceId;
        l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("AddIgnorable"):Fire(v95);
        print("Checking for mask!");
        repeat
            wait();
            local l_Mask_3 = l_Character_0:FindFirstChild("Mask");
            if l_Mask_3 then
                v30:AddToList(l_Mask_3);
                l_Humanoid_0:EquipTool(l_Mask_3);
            end;
        until v30.Current;
        task.spawn(function() --[[ Line: 10823 ]]
            -- upvalues: v30 (ref)
            task.wait(0.05);
            if v30.Current then
                v30.Current:setinspecting(true);
            end;
        end);
        local v1989 = l_Character_0:WaitForChild("Mask", 0.5);
        if not v1989 then
            repeat
                task.wait();
                v1989 = l_LocalPlayer_0.Backpack:FindFirstChild("Mask") or l_Character_0:FindFirstChild("Backpack");
            until v1989;
        end;
        if v1989 and v1989.Parent == l_LocalPlayer_0.Backpack then
            print("MASK WAS IN WRONG PLACE, EQUIPPING");
            l_Humanoid_0:EquipTool(v1989);
        end;
        local v1990 = false;
        print("Weapon selected and detected!");
        task.spawn(function() --[[ Line: 10846 ]]
            -- upvalues: v41 (ref), v14 (ref), l_Character_0 (ref), v30 (ref), l_Humanoid_0 (ref), l_LocalPlayer_0 (ref), l_Keybinds_0 (ref), l_l_UserInputService_0_GamepadConnected_0 (ref), v1816 (ref)
            while not v41 do
                if not v14 then
                    local l_Mask_4 = l_Character_0:FindFirstChild("Mask");
                    if l_Mask_4 == nil and not v41 then
                        if not v30.Current then
                            v30:AddToList(l_Mask_4);
                            l_Humanoid_0:EquipTool(l_Mask_4);
                        end;
                        print("ERROR FOUND");
                        local l_Mask_5 = l_LocalPlayer_0.Backpack:FindFirstChild("Mask");
                        if l_Mask_5 then
                            l_Mask_5.Parent = l_Character_0;
                            print("Error fixed");
                        end;
                    elseif l_Mask_4 and not v30.Current then
                        v30:AddToList(l_Mask_4);
                        l_Humanoid_0:EquipTool(l_Mask_4);
                    end;
                    if IsKeyDown(l_Keybinds_0.MaskKeys) and workspace:GetAttribute("MaskReady") and not l_l_UserInputService_0_GamepadConnected_0 then
                        v1816(true);
                    end;
                end;
                task.wait();
            end;
        end);
        for _, v1994 in pairs(v32) do
            if v1994 == l_PlaceId_0 and not v41 then
                v1990 = true;
                break;
            end;
        end;
        if v1990 or workspace:GetAttribute("AutoMask") then
            if workspace:GetAttribute("MaskReady") then
                task.delay(3, function() --[[ Line: 10897 ]]
                    -- upvalues: v41 (ref), v1816 (ref)
                    if not v41 then
                        v1816();
                    end;
                end);
            else
                local v1995 = nil;
                do
                    local l_v1995_0 = v1995;
                    l_v1995_0 = workspace:GetAttributeChangedSignal("MaskReady"):connect(function() --[[ Line: 10905 ]]
                        -- upvalues: v41 (ref), v1816 (ref), l_v1995_0 (ref)
                        if workspace:GetAttribute("MaskReady") then
                            task.delay(3, function() --[[ Line: 10907 ]]
                                -- upvalues: v41 (ref), v1816 (ref)
                                if not v41 then
                                    v1816();
                                end;
                            end);
                            l_v1995_0:Disconnect();
                        end;
                    end);
                end;
            end;
        end;
        l_Caught_1.Changed:connect(function(v1997) --[[ Line: 10918 ]]
            -- upvalues: v41 (ref), v1816 (ref)
            if v1997 and not v41 then
                v1816();
            end;
        end);
        if l_Caught_1.Value and not v41 then
            v1816();
        end;
    end);
end;
l_Remotes_0.Bullet.OnClientEvent:Connect(function(v1998) --[[ Line: 10971 ]]
    -- upvalues: l_LocalPlayer_0 (copy), l_Value_2 (copy), v29 (copy)
    if not v1998.Player or v1998.Player ~= l_LocalPlayer_0 then
        local v1999 = v1998.Model and v1998.Model:FindFirstChild("Muzzle");
        if v1998.GunData and v1998.GunData.Dual and not v1998.SecondGun and v1998.Model then
            local l_Model2_1 = v1998.Model:FindFirstChild("Model2");
            v1999 = l_Model2_1 and l_Model2_1:FindFirstChild("Muzzle2") or v1999;
        end;
        do
            local l_v1999_0 = v1999;
            if l_v1999_0 then
                for _, v2003 in pairs(l_v1999_0:GetChildren()) do
                    if v2003 then
                        if v2003:IsA("Attachment") and v2003.Name == "FX" then
                            for _, v2005 in v2003:GetChildren() do
                                if v2005:IsA("ParticleEmitter") then
                                    v2005:Emit(v2005.Rate);
                                end;
                            end;
                        elseif l_Value_2 == 2 and v2003:IsA("ParticleEmitter") then
                            v2003:Emit(v2003.Rate);
                        elseif l_Value_2 == 2 and (v2003:IsA("PointLight") or v2003:IsA("SpotLight")) then
                            spawn(function() --[[ Line: 10994 ]]
                                -- upvalues: v2003 (copy)
                                v2003.Enabled = true;
                                wait();
                                v2003.Enabled = false;
                            end);
                        elseif l_Value_2 == 2 and v2003:IsA("Smoke") then
                            spawn(function() --[[ Line: 11000 ]]
                                -- upvalues: v2003 (copy)
                                v2003.Enabled = true;
                                wait(0.1);
                                v2003.Enabled = false;
                            end);
                        elseif v2003:IsA("Sound") and v1998.UseAmmo and (not v2003.Looped or not v1998.IsNPC) and v2003.Name ~= "PlayingSound" then
                            if v2003.Looped then
                                local l_ShotEnd_1 = v2003:FindFirstChild("ShotEnd");
                                v2003.Playing = true;
                                v2003:SetAttribute("LastShot", tick());
                                if l_ShotEnd_1 then
                                    l_ShotEnd_1:Stop();
                                end;
                                do
                                    local l_l_ShotEnd_1_0 = l_ShotEnd_1;
                                    task.delay(0.14166666666666666, function() --[[ Line: 11018 ]]
                                        -- upvalues: v2003 (copy), l_l_ShotEnd_1_0 (ref), l_v1999_0 (ref)
                                        if tick() >= v2003:GetAttribute("LastShot") then
                                            v2003:Stop();
                                            if l_l_ShotEnd_1_0 then
                                                l_l_ShotEnd_1_0 = l_l_ShotEnd_1_0:Clone();
                                                l_l_ShotEnd_1_0.Parent = l_v1999_0;
                                                l_l_ShotEnd_1_0.PlayOnRemove = true;
                                                l_l_ShotEnd_1_0:Destroy();
                                            end;
                                        end;
                                    end);
                                end;
                            else
                                local v2008 = v2003:Clone();
                                v2008.Name = "PlayingSound";
                                local l_v2003_Attribute_0 = v2003:GetAttribute("PitchShift");
                                if l_v2003_Attribute_0 then
                                    v2008.PlaybackSpeed = math.random(l_v2003_Attribute_0.Min, l_v2003_Attribute_0.Max) / 100;
                                end;
                                if not l_v1999_0.Parent:FindFirstChild("Handle2") and not l_v1999_0.Parent:FindFirstChild("Handle") then
                                    local _ = l_v1999_0;
                                end;
                                v2008.Parent = l_v1999_0;
                                local l_Echo_1 = v2008:FindFirstChild("Echo");
                                do
                                    local l_l_Echo_1_0 = l_Echo_1;
                                    if l_l_Echo_1_0 then
                                        l_l_Echo_1_0 = l_l_Echo_1_0:Clone();
                                        local v2013 = l_l_Echo_1_0:GetAttribute("Delay") or 0.05;
                                        task.delay(v2013, function() --[[ Line: 11047 ]]
                                            -- upvalues: l_l_Echo_1_0 (ref), l_v1999_0 (ref)
                                            l_l_Echo_1_0.Name = "PlayingSound";
                                            l_l_Echo_1_0.Parent = l_v1999_0;
                                            l_l_Echo_1_0.PlayOnRemove = true;
                                            l_l_Echo_1_0:Destroy();
                                        end);
                                    end;
                                    v2008.PlayOnRemove = true;
                                    v2008:Destroy();
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            v29.new(v1998);
        end;
    end;
end);
v215 = false;
CharAdded = function(_) --[[ Line: 11069 ]] --[[ Name: CharAdded ]]
    -- upvalues: l_LocalPlayer_0 (copy), l_Backpack_0 (ref), l_PlayerGui_0 (ref), l_Character_0 (ref), l_HumanoidRootPart_0 (ref), l_Humanoid_0 (ref), l_Head_0 (ref), v93 (ref), v94 (ref), l_Stamina_0 (ref), l_MaxStamina_0 (ref), v30 (copy), v215 (ref), v41 (ref), l_Keybinds_0 (copy), l_Options_0 (copy), v97 (copy), l_MobileUI_0 (ref), l_UserInputService_0 (copy), v27 (copy), v86 (copy)
    repeat
        wait();
    until l_LocalPlayer_0.Character ~= nil;
    l_Backpack_0 = l_LocalPlayer_0:WaitForChild("Backpack");
    l_PlayerGui_0 = l_LocalPlayer_0:WaitForChild("PlayerGui");
    l_Character_0 = l_LocalPlayer_0.Character;
    l_HumanoidRootPart_0 = l_Character_0:WaitForChild("HumanoidRootPart");
    l_Humanoid_0 = l_Character_0:WaitForChild("Humanoid");
    l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
    l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
    local l_JumpVel_0 = l_HumanoidRootPart_0:FindFirstChild("JumpVel");
    if l_JumpVel_0 then
        l_JumpVel_0:Destroy();
    end;
    l_Head_0 = l_Character_0:WaitForChild("Head");
    v93 = Instance.new("ScreenGui", l_PlayerGui_0);
    v93.Name = "MouceIcon";
    v93.Enabled = false;
    v94 = Instance.new("ImageLabel", v93);
    v94.Name = "Icon";
    v94.BackgroundTransparency = 1;
    v94.Size = UDim2.new(0, 10, 0, 10);
    v94.Position = UDim2.new(0.5, -v94.Size.X.Offset / 2, 0.5, -v94.Size.Y.Offset / 2);
    v94.Image = "";
    l_Stamina_0 = l_Character_0:FindFirstChild("Stamina");
    l_MaxStamina_0 = l_Character_0:FindFirstChild("MaxStamina");
    if l_Stamina_0 == nil then
        local v2016 = nil;
        do
            local l_v2016_0 = v2016;
            l_v2016_0 = l_Character_0.ChildAdded:connect(function(v2018) --[[ Line: 11102 ]]
                -- upvalues: l_Stamina_0 (ref), l_v2016_0 (ref)
                if v2018.Name == "Stamina" then
                    l_Stamina_0 = v2018;
                    l_v2016_0:Disconnect();
                end;
            end);
        end;
    end;
    if l_MaxStamina_0 == nil then
        local v2019 = nil;
        do
            local l_v2019_0 = v2019;
            l_v2019_0 = l_Character_0.ChildAdded:connect(function(v2021) --[[ Line: 11111 ]]
                -- upvalues: l_MaxStamina_0 (ref), l_v2019_0 (ref)
                if v2021.Name == "MaxStamina" then
                    l_MaxStamina_0 = v2021;
                    l_v2019_0:Disconnect();
                end;
            end);
        end;
    end;
    if v30.List then
        v30.Current = {};
        for _, v2023 in pairs(v30.List) do
            if v2023 then

            end;
        end;
        v30.Load();
    end;
    if v215 then
        v41 = false;
    else
        v215 = true;
    end;
    l_Keybinds_0.SprintKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Run").Value], 
        v97 and Enum.KeyCode[v97:WaitForChild("Run/LeanL").Value]
    };
    l_Keybinds_0.AimKeys = {
        Enum.UserInputType.MouseButton2, 
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Aim").Value], 
        v97 and Enum.KeyCode[v97:WaitForChild("Aim").Value]
    };
    l_Keybinds_0.SecondAimKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Aim").Value]
    };
    l_Keybinds_0.AltAimKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("AltAim").Value], 
        v97 and Enum.KeyCode[v97:WaitForChild("AltAim").Value]
    };
    l_Keybinds_0.AttackKeys = {
        Enum.UserInputType.MouseButton1, 
        v97 and Enum.KeyCode[v97:WaitForChild("Use/Attack").Value]
    };
    l_Keybinds_0.JumpKeys = {
        Enum.KeyCode.Space, 
        v97 and Enum.KeyCode[v97:WaitForChild("Jump").Value]
    };
    l_Keybinds_0.LeanRightKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("LeanR").Value], 
        v97 and Enum.KeyCode[v97:WaitForChild("Melee/LeanR").Value]
    };
    l_Keybinds_0.LeanLeftKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("LeanL").Value], 
        v97 and Enum.KeyCode[v97:WaitForChild("Run/LeanL").Value]
    };
    l_Keybinds_0.ReloadKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Reload").Value], 
        v97 and Enum.KeyCode[v97:WaitForChild("Reload/Interact/Mask").Value]
    };
    l_Keybinds_0.MaskKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("MaskEquipment").Value], 
        v97 and Enum.KeyCode[v97:WaitForChild("Reload/Interact/Mask").Value]
    };
    l_Keybinds_0.GrenadeKeys = {};
    l_Keybinds_0.FiremodeKeys = {
        Enum.KeyCode[l_Options_0:WaitForChild("Keybinds"):WaitForChild("Firemode").Value], 
        Enum.KeyCode.DPadLeft
    };
    local v2024 = {
        Equipment = true
    };
    local v2025 = {
        Gadget = "GadgetEquip", 
        Interact = "InteractShout", 
        Equipment = "MaskEquipment", 
        Sprint = "Run"
    };
    local v2026 = {
        One = "1", 
        Two = "2", 
        Three = "3", 
        Four = "4", 
        Five = "5", 
        LeftControl = "LCTRL", 
        RightControl = "RCTRL", 
        LeftShift = "LSHIFT", 
        RightShift = "RSHIFT", 
        LeftAlt = "LALT", 
        RightAlt = "RALT"
    };
    print("setting up keybinds.");
    local l_controls_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("frame_lobbyMenu"):WaitForChild("controls");
    for _, v2029 in l_controls_0.keys:GetChildren() do
        if v2029:IsA("TextLabel") then
            local v2030 = v2025[v2029.Name] or v2029.Name;
            local v2031 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild(v2029.Name) or l_Options_0:WaitForChild("Keybinds"):FindFirstChild(v2030);
            local v2032 = l_Options_0:WaitForChild("Gameplay"):FindFirstChild("Toggle" .. v2030) or l_Options_0:WaitForChild("Gameplay"):FindFirstChild("Toggle" .. v2029.Name);
            if v2031 then
                local l_Value_23 = v2031.Value;
                v2029.Text = (v2026[l_Value_23] or l_Value_23):upper();
            elseif v2030 == "Movement" then
                local v2034 = "%s / %s / %s / %s";
                local l_Forward_0 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild("Forward");
                l_Forward_0 = l_Forward_0 and l_Forward_0.Value or "W";
                local l_Backward_0 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild("Backward");
                l_Backward_0 = l_Backward_0 and l_Backward_0.Value or "S";
                local l_Left_2 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild("Left");
                l_Left_2 = l_Left_2 and l_Left_2.Value or "A";
                local l_Right_2 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild("Right");
                local v2039 = l_Right_2 and l_Right_2.Value or "D";
                v2029.Text = string.format(v2034, l_Forward_0, l_Left_2, l_Backward_0, v2039):upper();
            elseif v2030 == "Lean" then
                local l_LeanL_0 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild("LeanL");
                l_LeanL_0 = l_LeanL_0 and l_LeanL_0.Value or "Q";
                local l_LeanR_0 = l_Options_0:WaitForChild("Keybinds"):FindFirstChild("LeanR");
                v2029.Text = (l_LeanL_0 .. " / " .. (l_LeanR_0 and l_LeanR_0.Value or "E")):upper();
            else
                print(v2030, v2029.Name);
            end;
            if v2030 == "Aim" then
                v2029.Text = "RMB / " .. v2029.Text;
            end;
            if v2032 and not v2032.Value or v2024[v2029.Name] then
                v2029.Text = "(HOLD) " .. v2029.Text;
            end;
        end;
    end;
    for _, v2043 in l_controls_0.Parent:WaitForChild("controlsGamepad"):WaitForChild("keys"):GetChildren() do
        if v2043:IsA("ImageButton") then
            task.spawn(function() --[[ Line: 11287 ]]
                -- upvalues: v2025 (copy), v2043 (copy), v97 (ref)
                local v2044 = v2025[v2043.Name] or v2043.Name;
                local v2045 = v97:FindFirstChild(v2043.Name) or v97:FindFirstChild(v2044);
                local v2046 = v2045 and Enum.KeyCode[v2045.Value];
                local v2047 = v2046 and game:GetService("UserInputService"):GetImageForKeyCode(v2046);
                if v2047 then
                    v2043.functionBind.Image = v2047;
                end;
            end);
        end;
    end;
    l_MobileUI_0 = l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("MobileUI");
    local l_Buttons_0 = l_MobileUI_0:WaitForChild("Buttons");
    local function v2051(v2049, v2050) --[[ Line: 11308 ]] --[[ Name: setActive ]]
        if v2049.Name:match("Jump") then
            v2049.ImageRectOffset = Vector2.new(v2050 and 146 or 1, 146);
            return;
        else
            v2049.ImageColor3 = v2050 and Color3.fromRGB(152, 152, 152) or Color3.fromRGB(0, 0, 0);
            return;
        end;
    end;
    local v2052 = false;
    local v2053 = false;
    local v2054 = false;
    local v2055 = false;
    for _, v2057 in l_Buttons_0:GetDescendants() do
        if v2057:IsA("ImageButton") then
            v2057.Active = false;
        end;
    end;
    l_UserInputService_0.TouchStarted:Connect(function() --[[ Line: 11329 ]]
        -- upvalues: v2054 (ref)
        v2054 = true;
    end);
    l_UserInputService_0.TouchEnded:Connect(function() --[[ Line: 11333 ]]
        -- upvalues: v2054 (ref)
        v2054 = false;
    end);
    l_Buttons_0.Action.Sprint.MouseButton1Down:Connect(function() --[[ Line: 11337 ]]
        -- upvalues: v2055 (ref), v27 (ref), v2051 (copy), l_Buttons_0 (copy)
        v2055 = not v2055;
        v27:SetSprint(v2055);
        v2051(l_Buttons_0.Action.Sprint, v2055);
    end);
    l_Buttons_0.Action.JumpButton.MouseButton1Down:Connect(function() --[[ Line: 11344 ]]
        -- upvalues: v2052 (ref), v2051 (copy), l_Buttons_0 (copy), v27 (ref), v2054 (ref)
        v2052 = true;
        v2051(l_Buttons_0.Action.JumpButton, true);
        while v2052 do
            v27:Jump();
            task.wait();
            if not v2054 then
                break;
            end;
        end;
        v2051(l_Buttons_0.Action.JumpButton, false);
    end);
    l_Buttons_0.Weapons.Aim.MouseButton1Down:Connect(function() --[[ Line: 11366 ]]
        -- upvalues: v30 (ref), v2051 (copy), l_Buttons_0 (copy), v2055 (ref), v27 (ref)
        if v30.Equipped and v30.Current then
            v30.Current:setaim(not v30.Current.aiming);
            v2051(l_Buttons_0.Weapons.Aim, v30.Current.aiming);
            v2051(l_Buttons_0.Weapons.Aim2, v30.Current.aiming);
            if not v30.Current.aiming and v2055 then
                v27:SetSprint(v2055);
            end;
        end;
    end);
    l_Buttons_0.Weapons.Aim2.MouseButton1Down:Connect(function() --[[ Line: 11379 ]]
        -- upvalues: v30 (ref), v2051 (copy), l_Buttons_0 (copy), v2055 (ref), v27 (ref)
        if v30.Equipped and v30.Current then
            v30.Current:setaim(not v30.Current.aiming);
            v2051(l_Buttons_0.Weapons.Aim, v30.Current.aiming);
            v2051(l_Buttons_0.Weapons.Aim2, v30.Current.aiming);
            if not v30.Current.aiming and v2055 then
                v27:SetSprint(v2055);
            end;
        end;
    end);
    local function v2059(v2058) --[[ Line: 11393 ]] --[[ Name: attackButtonUp ]]
        -- upvalues: v30 (ref), v2053 (ref), v2051 (copy), v2055 (ref), v27 (ref)
        if v30.Equipped and v30.Current then
            v2053 = false;
            v2051(v2058, false);
            if v30.Current.data and v30.Current.data.WeaponType == "Gun" then
                v30.Current:setshooting(false);
            elseif v30.Current.data and v30.Current.data.WeaponType == "Melee" then
                v30.Current:usemelee(false);
            elseif v30.Current.data and v30.Current.data.WeaponType == "Gadget" then
                v30.Current:usegadget(false);
            end;
            if v2055 and not v27.Sprinting then
                v27:SetSprint(v2055);
            end;
        end;
    end;
    local function v2061(v2060) --[[ Line: 11413 ]] --[[ Name: attackButtonDown ]]
        -- upvalues: v30 (ref), v27 (ref), v86 (ref), v2051 (copy), v2053 (ref), v2054 (ref), v2059 (copy)
        if v30.Equipped and v30.Current then
            if v27.Sprinting and not v86("G", "J") then
                v27:SetSprint(false);
            end;
            v2051(v2060, true);
            v2053 = true;
            while v2053 do
                if v30.Current.inspecting then
                    v30.Current.CancelInspect = true;
                elseif v30.Current.data and v30.Current.data.WeaponType == "Gun" then
                    v30.Current:setshooting(true);
                elseif v30.Current.data and v30.Current.data.WeaponType == "Melee" then
                    v30.Current:usemelee(true);
                elseif v30.Current.data and v30.Current.data.WeaponType == "Gadget" then
                    v30.Current:usegadget(true);
                end;
                task.wait();
                if not v2054 then
                    break;
                end;
            end;
            v2059(v2060);
        end;
    end;
    l_Buttons_0.Weapons.Attack.MouseButton1Down:Connect(function() --[[ Line: 11448 ]]
        -- upvalues: v2061 (copy), l_Buttons_0 (copy)
        v2061(l_Buttons_0.Weapons.Attack);
    end);
    l_Buttons_0.Weapons.Attack.MouseButton1Up:Connect(function() --[[ Line: 11453 ]]

    end);
    l_Buttons_0.Weapons.Reload.MouseButton1Down:Connect(function() --[[ Line: 11460 ]]
        -- upvalues: v30 (ref), v2051 (copy), l_Buttons_0 (copy), v2055 (ref), v27 (ref)
        if v30.Current then
            local v2062 = v30.Current:getAmmo() or {};
            local l_Ammo_3 = v2062.Ammo;
            local _ = v2062.Spare;
            local l_AmmoCapacity_2 = v2062.AmmoCapacity;
            if (v30.Current.data.WeaponType == "Gun" or v30.Current.data.WeaponType == "Gadget") and l_Ammo_3 and l_Ammo_3 < l_AmmoCapacity_2 then
                v2051(l_Buttons_0.Weapons.Reload, true);
                v30.Current:setreloading(true);
                v2051(l_Buttons_0.Weapons.Reload, false);
                if v2055 and not v27.Sprinting then
                    v27:SetSprint(v2055);
                    return;
                end;
            else
                v30.Current:setinspecting(true);
            end;
        end;
    end);
    l_Buttons_0.Action.MaskUp.MouseButton1Down:Connect(function() --[[ Line: 11486 ]]
        -- upvalues: v2051 (copy), l_Buttons_0 (copy), l_PlayerGui_0 (ref)
        v2051(l_Buttons_0.Action.MaskUp, true);
        l_PlayerGui_0:WaitForChild("SG_Package"):WaitForChild("MainGui"):WaitForChild("Events"):WaitForChild("Mask"):Fire();
    end);
end;
l_LocalPlayer_0.CharacterAdded:Connect(CharAdded);
l_ReplicatedStorage_0:WaitForChild("RS_Package"):WaitForChild("Remotes"):WaitForChild("HitBySniper").OnClientEvent:Connect(function() --[[ Line: 11499 ]]
    -- upvalues: l_TweenService_0 (copy)
    local l_BlurEffect_0 = Instance.new("BlurEffect");
    l_BlurEffect_0.Name = "SniperBlur";
    l_BlurEffect_0.Size = 16;
    l_BlurEffect_0.Parent = workspace.CurrentCamera;
    local v2067 = l_TweenService_0:Create(l_BlurEffect_0, TweenInfo.new(1), {
        Size = 0
    });
    v2067:Play();
    v2067.Completed:Wait();
    l_BlurEffect_0:Destroy();
end);
if l_LocalPlayer_0.Character then
    task.spawn(function() --[[ Line: 11510 ]]
        -- upvalues: l_LocalPlayer_0 (copy)
        CharAdded(l_LocalPlayer_0.Character);
    end);
end;
l_RunService_0.Heartbeat:Connect(function(v2068) --[[ Line: 11515 ]]
    -- upvalues: v104 (copy)
    for _, v2070 in pairs(v104) do
        if v2070 then
            v2070(v2068);
        end;
    end;
end);
l_RunService_0.RenderStepped:Connect(function(v2071) --[[ Line: 11523 ]]
    -- upvalues: v105 (copy)
    for _, v2073 in pairs(v105) do
        if v2073 then
            v2073(v2071);
        end;
    end;
end);
