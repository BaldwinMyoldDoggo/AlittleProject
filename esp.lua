-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

local _ = game:GetService("CollectionService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local _ = game:GetService("SoundService");
local l_RunService_0 = game:GetService("RunService");
local l_LocalPlayer_0 = game:GetService("Players").LocalPlayer;
local function v5() --[[ Line: 9 ]]
    return (Vector3.new());
end;
local l_ControlModule_0 = l_LocalPlayer_0.PlayerScripts:WaitForChild("PlayerModule", 5).ControlModule;
if l_ControlModule_0 then
    local v7 = require(l_ControlModule_0);
    local l_v7_0 = v7 --[[ copy: 7 -> 43 ]];
    v5 = function() --[[ Line: 15 ]]
        return l_v7_0:GetMoveVector();
    end;
end;
local v9 = require(l_ReplicatedStorage_0.Game.Garage.EnumMake);
local _ = function(v10, _, _, _) --[[ Line: 21 ]] --[[ Name: u6 ]]
    if v10 ~= v9.Model3 and v10 ~= v9.Roadster and v10 ~= v9.Cybertruck and v10 ~= v9.Volt then
        return;
    else
        return;
    end;
end;
u3 = function(v15, v16, v17, v18, v19) --[[ Line: 28 ]]
    local l_Gear_0 = v15.Gear;
    local l_LastGear_0 = v15.LastGear;
    local l_t3_0 = v15.t3;
    local v23 = v17 / (v15.Model.WheelBackRight.Wheel.Size.Y / 2.9) * 1000 / 3600 / 0.34;
    if l_LastGear_0 ~= l_Gear_0 then
        local _ = v16[2 + l_LastGear_0] * (1 - l_t3_0 * l_t3_0) + v16[2 + l_Gear_0] * l_t3_0 * l_t3_0;
        local v25 = l_t3_0 + v19 * 1 / 0.26;
        v15.t3 = v25;
        if v25 >= 1 then
            v15.LastGear = l_Gear_0;
            v15.t3 = 0;
        end;
    else
        v26 = v16[2 + l_Gear_0];
    end;
    local v26_ = v23 * v16[1] * v16[2 + l_Gear_0] * 60 / 6.283185307179586;
    local v27 = v26_ - v15.LastRPM;
    if not v15.NoGears then
        if v18 > 0 and v27 > 0 and v26_ > 6000 and l_Gear_0 < 6 then
            v15.Gear = l_Gear_0 + 1;
        elseif v27 < 0 and v26_ < 3400 and l_Gear_0 > 1 then
            v15.Gear = l_Gear_0 - 1;
        end;
    end;
    local l_EnumMakeId_0 = v15.EnumMakeId;
    local _ = v15.Sounds;
    local _ = v23 * v16[1] * v26 * 60 / 6.283185307179586;
    if l_EnumMakeId_0 == v9.Model3 or l_EnumMakeId_0 == v9.Roadster or l_EnumMakeId_0 == v9.Cybertruck or l_EnumMakeId_0 == v9.Volt then

    end;
    v15.LastRPM = v26_;
    return l_Gear_0, v26;
end;
local v31 = {};
local v32 = {
    0, 
    0, 
    0, 
    0, 
    0, 
    0
};
local function v33(v34) --[[ Line: 59 ]] --[[ Name: u7 ]]
    local v35 = 0;
    for _, v37 in ipairs(v34:GetChildren()) do
        if v37:IsA("BasePart") then
            local l_v37_Mass_0 = v37:GetMass();
            if v37.CustomPhysicalProperties then
                local l_Density_0 = v37.CustomPhysicalProperties.Density;
                if l_Density_0 ~= l_Density_0 then
                    l_Density_0 = 0;
                end;
                l_v37_Mass_0 = l_v37_Mass_0 * l_Density_0;
            end;
            v35 = v35 + l_v37_Mass_0;
        end;
        v35 = v35 + v33(v37);
    end;
    return v35;
end;
local v40 = false;
local v41 = nil;
local l_new_0 = Vector3.new;
v31.SetGravity = function(v43, v44) --[[ Line: 84 ]] --[[ Name: SetGravity ]]
    local l_Mass_0 = v43.Mass;
    local v46 = 1 - v44 / 196.20000000000002;
    if l_Mass_0 ~= l_Mass_0 then
        l_Mass_0 = 0;
    end;
    if v46 ~= v46 then
        v46 = 0;
    end;
    v43.Lift.Force = l_new_0(0, l_Mass_0 * v46, 0);
end;
v31.UpdateStats = function(v47) --[[ Line: 95 ]] --[[ Name: UpdateStats ]]
    local l_Suspension_0 = v47.Suspension;
    if l_Suspension_0 ~= l_Suspension_0 then
        l_Suspension_0 = 4;
    end;
    local l_Bounce_0 = v47.Bounce;
    if l_Bounce_0 ~= l_Bounce_0 then
        l_Bounce_0 = 100;
    end;
    local v50 = (v33(v47.Model) + v33(l_LocalPlayer_0.Character)) * 9.81 * 20;
    if v50 ~= v50 then
        v50 = 1;
    end;
    local v51 = v50 * l_Suspension_0;
    if v51 ~= v51 then
        v51 = 0;
    end;
    local v52 = v51 / l_Bounce_0;
    if v52 ~= v52 then
        v52 = 0;
    end;
    v47.Mass = v50;
    v47.Force = v51;
    v47.Damping = v52;
    v31.SetGravity(v47, 100);
end;
local _ = function(v53, v54) --[[ Line: 121 ]] --[[ Name: u17 ]]
    for _, v56 in ipairs(Enum.HumanoidStateType:GetEnumItems()) do
        if v56 ~= Enum.HumanoidStateType.Dead and v56 ~= Enum.HumanoidStateType.None and v56 ~= Enum.HumanoidStateType.Jumping then
            v53.Humanoid:SetStateEnabled(v56, v54);
        end;
    end;
end;
local _ = function(v58) --[[ Line: 128 ]]
    local l_v58_ConnectedParts_0 = v58:GetConnectedParts();
    for _, v61 in ipairs(l_v58_ConnectedParts_0) do
        if tostring(v61) == "Thrust" then
            return v61;
        end;
    end;
end;
local l_CurrentCamera_0 = workspace.CurrentCamera;
v31.VehicleEnter = function(v64) --[[ Line: 138 ]] --[[ Name: VehicleEnter ]]
    local v65 = false;
    local v66 = false;
    local v67 = false;
    local v68 = false;
    local v69 = false;
    local v70 = false;
    local v71 = false;
    local v72 = false;
    local v73 = false;
    local v74 = false;
    local v75 = false;
    local v76 = false;
    local l_Character_0 = v64.Character;
    local l_Model_0 = v64.Model;
    l_Model_0.Step.CanCollide = false;
    l_CurrentCamera_0.CameraSubject = l_Model_0.Camera;
    l_Character_0.HumanoidRootPart.Anchored = true;
    l_Character_0:MoveTo((Vector3.new(0, workspace.FallenPartsDestroyHeight, 0)));
    local v79 = {
        AreTiresPopped = false, 
        Bounce = 100, 
        Cb = 18000, 
        Cd = 0.4257, 
        Character = l_Character_0, 
        Crr = 320, 
        Damping = 31024.808962601, 
        DespawnTime = 120, 
        Drift = false, 
        DriveThruster = l_Model_0.Engine.BodyThrust, 
        Echo = {
            Delay = 1.3268895149231, 
            DryLevel = 0, 
            Feedback = 0, 
            WetLevel = -39.911930084229
        }, 
        EnumMakeId = v9[l_Model_0.Make.Value], 
        EnvironmentTransition = false, 
        Equalizer = {
            HighGain = 0, 
            LowGain = -0.37632721662521, 
            MidGain = -0.37632721662521
        }, 
        Force = 3102480.8962601, 
        GarageBrakes = 0, 
        GarageEngineSpeed = 0, 
        GarageSelection = {
            BodyColor = "Grey", 
            Brakes = "Level 1", 
            Engine = "Level 1", 
            Rim = "Blade", 
            SuspensionHeight = "Normal", 
            WheelColor = "Grey", 
            WindowColor = "Black"
        }, 
        GarageSuspensionHeight = 0, 
        Gear = 1, 
        Gears = {
            3.27, 
            3.2, 
            4.06, 
            2.37, 
            1.55, 
            1.16, 
            0.85, 
            0.67
        }, 
        HasSpoiler = false, 
        Height = 3, 
        IK = {
            LeftAngle = 0.6, 
            LeftArm = Vector3.new(-1806, 111, 1868, 0), 
            LeftElbow = l_Character_0.LeftLowerArm.LeftElbow, 
            LeftShoulder = l_Character_0.LeftUpperArm.LeftShoulder, 
            LeftWrist = l_Character_0.LeftHand.LeftWrist, 
            RightAngle = -0.6, 
            RightArm = Vector3.new(-1805, 111, 1866, 0), 
            RightElbow = l_Character_0.RightLowerArm.RightElbow, 
            RightShoulder = l_Character_0.RightUpperArm.RightShoulder, 
            RightWrist = l_Character_0.RightHand.RightWrist
        }, 
        LastAudioScale = 1.6138647557626E9, 
        LastDrift = 0, 
        LastEnvironment = "Outside", 
        LastForward = 1, 
        LastGear = 1, 
        LastRPM = 0.96561392267763, 
        Lift = l_Model_0.Engine.BodyForce, 
        Locked = false, 
        Make = l_Model_0.Make.Value, 
        Mass = 775620.22406503, 
        Model = l_Model_0, 
        Nitro = false, 
        Nitrof1 = false, 
        Nitrous = {}
    };
    local l_ConnectedParts_0 = l_Model_0.WheelBackLeft.Wheel:GetConnectedParts();
    local v81;
    for _, v83 in ipairs(l_ConnectedParts_0) do
        if tostring(v83) == "Thrust" then
            v81 = v83;
            v65 = true;
        end;
        if v65 then
            break;
        end;
    end;
    if not v65 then
        v81 = nil;
    end;
    v65 = false;
    v79.PartBackLeft = v81;
    l_ConnectedParts_0 = l_Model_0.WheelBackLeft.Wheel:GetConnectedParts();
    for _, v85 in ipairs(l_ConnectedParts_0) do
        if tostring(v85) == "Thrust" then
            v81 = v85;
            v66 = true;
        end;
        if v66 then
            break;
        end;
    end;
    if not v66 then
        v81 = nil;
    end;
    v66 = false;
    v79.PartBackRight = v81;
    l_ConnectedParts_0 = l_Model_0.WheelBackLeft.Wheel:GetConnectedParts();
    for _, v87 in ipairs(l_ConnectedParts_0) do
        if tostring(v87) == "Thrust" then
            v81 = v87;
            v67 = true;
        end;
        if v67 then
            break;
        end;
    end;
    if not v67 then
        v81 = nil;
    end;
    v67 = false;
    v79.PartFrontLeft = v81;
    l_ConnectedParts_0 = l_Model_0.WheelBackLeft.Wheel:GetConnectedParts();
    for _, v89 in ipairs(l_ConnectedParts_0) do
        if tostring(v89) == "Thrust" then
            v81 = v89;
            v68 = true;
        end;
        if v68 then
            break;
        end;
    end;
    if not v68 then
        v81 = nil;
    end;
    v68 = false;
    v79.PartFrontRight = v81;
    v79.PlayerTeam = "Police";
    v79.RadioSound = l_Model_0.Engine.Radio;
    v79.Reverb = {
        DecayTime = 9.0215492248535, 
        Density = 1, 
        Diffusion = 0.93966692686081, 
        DryLevel = 0.60212355852127, 
        WetLevel = -29.731420516968
    };
    v79.RotY = -2.5319828575598E-227;
    v79.Seat = l_Model_0.Seat;
    v79.Seats = {
        {
            Depart = l_Model_0.Seat.Depart, 
            IsPassenger = false, 
            Part = l_Model_0.Seat, 
            PlayerNamev = l_Model_0.Seat.PlayerName, 
            PlayerTag = l_Model_0.Seat.Player
        }, 
        {
            Depart = l_Model_0.Passenger.Depart, 
            IsPassenger = true, 
            Part = l_Model_0.Passenger, 
            PlayerNamev = l_Model_0.Passenger.PlayerName, 
            PlayerTag = l_Model_0.Passenger.Player
        }
    };
    v79.SirenSound = l_Model_0.Engine.Sound;
    v79.Sounds = {
        Asphalt = l_Model_0.Engine.Asphalt, 
        DriftSqueal = l_Model_0.Engine.DriftSqueal, 
        Grass = l_Model_0.Engine.Grass, 
        Idle = l_Model_0.Engine.Sound, 
        OffLow = l_Model_0.Engine.Sound, 
        OnHigh = l_Model_0.Engine.Sound, 
        OnLow = l_Model_0.Engine.Sound, 
        OnMid = l_Model_0.Engine.Sound, 
        Sandstone = l_Model_0.Engine.Sandstone
    };
    v79.Suspension = 4;
    v79.TireHealth = 1;
    v79.TirePopDuration = 7.5;
    v79.TirePopProportion = 0.5;
    v79.TiresLastPop = {
        0, 
        0, 
        0, 
        0
    };
    v79.Traction = 0.99999976431027;
    v79.TransitionSpeed = 2;
    v79.TurnSpeed = 1.4;
    v79.Type = l_Model_0.Make.Value;
    v79.VisualHalfHeight = 1.4000000953674;
    v79.WeldSteer = l_Model_0.Steer.Motor;
    v79.WheelRotation = 5.077804071102;
    v81 = {};
    local v90 = {};
    local l_ConnectedParts_1 = l_Model_0.WheelBackLeft.Wheel:GetConnectedParts();
    for _, v93 in ipairs(l_ConnectedParts_1) do
        if tostring(v93) == "Thrust" then
            l_ConnectedParts_0 = v93;
            v69 = true;
        end;
        if v69 then
            break;
        end;
    end;
    if not v69 then
        l_ConnectedParts_0 = nil;
    end;
    v69 = false;
    v90.Part = l_ConnectedParts_0;
    local l_ConnectedParts_2 = l_Model_0.WheelBackLeft.Wheel:GetConnectedParts();
    local v95;
    for _, v97 in ipairs(l_ConnectedParts_2) do
        if tostring(v97) == "Thrust" then
            v95 = v97;
            v70 = true;
        end;
        if v70 then
            break;
        end;
    end;
    if not v70 then
        v95 = nil;
    end;
    v70 = false;
    v90.Thruster = v95.BodyThrust;
    v81.WheelBackLeft = v90;
    v90 = {};
    l_ConnectedParts_1 = l_Model_0.WheelBackRight.Wheel:GetConnectedParts();
    for _, v99 in ipairs(l_ConnectedParts_1) do
        if tostring(v99) == "Thrust" then
            l_ConnectedParts_0 = v99;
            v71 = true;
        end;
        if v71 then
            break;
        end;
    end;
    if not v71 then
        l_ConnectedParts_0 = nil;
    end;
    v71 = false;
    v90.Part = l_ConnectedParts_0;
    l_ConnectedParts_2 = l_Model_0.WheelBackRight.Wheel:GetConnectedParts();
    for _, v101 in ipairs(l_ConnectedParts_2) do
        if tostring(v101) == "Thrust" then
            v95 = v101;
            v72 = true;
        end;
        if v72 then
            break;
        end;
    end;
    if not v72 then
        v95 = nil;
    end;
    v72 = false;
    v90.Thruster = v95.BodyThrust;
    v81.WheelBackRight = v90;
    v90 = {};
    l_ConnectedParts_1 = l_Model_0.WheelFrontLeft.Wheel:GetConnectedParts();
    for _, v103 in ipairs(l_ConnectedParts_1) do
        if tostring(v103) == "Thrust" then
            l_ConnectedParts_0 = v103;
            v73 = true;
        end;
        if v73 then
            break;
        end;
    end;
    if not v73 then
        l_ConnectedParts_0 = nil;
    end;
    v73 = false;
    v90.Part = l_ConnectedParts_0;
    l_ConnectedParts_2 = l_Model_0.WheelFrontLeft.Wheel:GetConnectedParts();
    for _, v105 in ipairs(l_ConnectedParts_2) do
        if tostring(v105) == "Thrust" then
            v95 = v105;
            v74 = true;
        end;
        if v74 then
            break;
        end;
    end;
    if not v74 then
        v95 = nil;
    end;
    v74 = false;
    v90.Thruster = v95.BodyThrust;
    v81.WheelFrontLeft = v90;
    v90 = {};
    l_ConnectedParts_1 = l_Model_0.WheelFrontRight.Wheel:GetConnectedParts();
    for _, v107 in ipairs(l_ConnectedParts_1) do
        if tostring(v107) == "Thrust" then
            l_ConnectedParts_0 = v107;
            v75 = true;
        end;
        if v75 then
            break;
        end;
    end;
    if not v75 then
        l_ConnectedParts_0 = nil;
    end;
    v75 = false;
    v90.Part = l_ConnectedParts_0;
    l_ConnectedParts_2 = l_Model_0.WheelFrontRight.Wheel:GetConnectedParts();
    for _, v109 in ipairs(l_ConnectedParts_2) do
        if tostring(v109) == "Thrust" then
            v95 = v109;
            v76 = true;
        end;
        if v76 then
            break;
        end;
    end;
    if not v76 then
        v95 = nil;
    end;
    v76 = false;
    v90.Thruster = v95.BodyThrust;
    v81.WheelFrontRight = v90;
    v79.Wheels = v81;
    v79.t3 = 0;
    v79.vAsphalt = 7.6234616783082E-112;
    v79.vGrass = 1.8363884935982E-74;
    v79.vHeading = -6.2169874631147E-308;
    v79.vSandstone = 0.5;
    v81 = Instance.new("BodyAngularVelocity");
    v81.MaxTorque = Vector3.new(v64.Mass, 1e999, v64.Mass);
    v81.Parent = l_Model_0.Engine;
    v79.Rotate = v81;
    v31.UpdateStats(v79);
    return v79;
end;
local _ = {
    Tunnel = {
        Echo = {
            Delay = 0.35, 
            DryLevel = 0, 
            Feedback = 0, 
            WetLevel = -27
        }, 
        Equalizer = {
            HighGain = 0, 
            LowGain = -2.5, 
            MidGain = -2.5
        }, 
        Reverb = {
            DecayTime = 3.5, 
            Density = 1, 
            Diffusion = 0.6, 
            DryLevel = 4, 
            WetLevel = 0
        }
    }, 
    Outside = {
        Echo = {
            Delay = 1.5, 
            DryLevel = 0, 
            Feedback = 0, 
            WetLevel = -42.2
        }, 
        Equalizer = {
            HighGain = 0, 
            LowGain = 0, 
            MidGain = 0
        }, 
        Reverb = {
            DecayTime = 10, 
            Density = 1, 
            Diffusion = 1, 
            DryLevel = 0, 
            WetLevel = -35
        }
    }, 
    City = {
        Echo = {
            Delay = 0.198, 
            DryLevel = 0, 
            Feedback = 0, 
            WetLevel = -9.8
        }, 
        Equalizer = {
            HighGain = 0, 
            LowGain = -8, 
            MidGain = 0
        }, 
        Reverb = {
            DecayTime = 4.6, 
            Density = 1, 
            Diffusion = 0.6, 
            DryLevel = 0, 
            WetLevel = -28
        }
    }
};
local _ = {
    Echo = {
        "Delay", 
        "DryLevel", 
        "Feedback", 
        "WetLevel"
    }, 
    Equalizer = {
        "HighGain", 
        "LowGain", 
        "MidGain"
    }, 
    Reverb = {
        "DecayTime", 
        "Density", 
        "Diffusion", 
        "DryLevel", 
        "WetLevel"
    }
};
local _ = {};
v31.VehicleLeave = function(v113) --[[ Line: 390 ]] --[[ Name: VehicleLeave ]]
    local l_Character_1 = v113.Character;
    local l_Model_1 = v113.Model;
    l_Character_1:MoveTo(l_Model_1.Seat.Position + -l_Model_1.Seat.CFrame.RightVector * 5);
    l_Character_1.HumanoidRootPart.Anchored = false;
    l_Model_1.Step.CanCollide = true;
    l_CurrentCamera_0.CameraSubject = l_Character_1.Humanoid;
    v113.Rotate:Destroy();
    v113.DriveThruster.Force = Vector3.new(0, 0, 0, 0);
    for _, v117 in pairs(v113.Wheels) do
        v117.Thruster.Force = Vector3.new(0, 0, 0, 0);
    end;
    return {
        Model = nil, 
        Character = l_Character_1
    };
end;
local l_Vehicles_0 = workspace:WaitForChild("Vehicles");
local l_new_1 = CFrame.new;
local l_min_0 = math.min;
local l_Angles_0 = CFrame.Angles;
v31.UpdateWheelLowQuality = function(v122, v123, v124, v125) --[[ Line: 412 ]] --[[ Name: UpdateWheelLowQuality ]]
    local l_Engine_0 = v122.Engine;
    local l_CFrame_0 = v124.CFrame;
    local l_p_0 = l_CFrame_0.p;
    local l_Motor_0 = v124.Motor;
    local _, v131 = u25.RayIgnoreNonCollide(l_p_0, l_CFrame_0:VectorToWorldSpace((Vector3.new(0, -1, 0, 0))), v123, l_Vehicles_0);
    local v132_ = l_new_1(0, -l_min_0((v131 - l_p_0).magnitude, v123) + l_Motor_0.Part0.Size.Y * 0.5, 0);
    if l_Engine_0.CFrame:ToObjectSpace(l_CFrame_0).Z < 0 then
        v132_ = v132_ * l_Angles_0(0, l_Engine_0.RotVelocity.Y * 0.5, 0);
    end;
    l_Motor_0.C1 = v132_ * l_Angles_0(v125, 0, 0);
end;
v31.UpdateSoundLowQuality = function(v133_, v134, v135) --[[ Line: 424 ]] --[[ Name: UpdateSoundLowQuality ]]
    if v133_.EnumMakeId == nil then
        v133_.EnumMakeId = v9[v133_.Make];
    end;
    u3(v133_, v134, v135.magnitude, -v135.Z, 0.016666666666666666);
end;
local l_abs_0 = math.abs;
local v137 = CFrame.new(0, 0, 0);
local l_new_2 = Ray.new;
local l_FindPartOnRayWithIgnoreList_0 = workspace.FindPartOnRayWithIgnoreList;
local l_UserInputService_0 = game:GetService("UserInputService");
local function _(v141, v142, v143) --[[ Line: 436 ]] --[[ Name: u37 ]]
    local v144 = nil;
    local v145 = nil;
    local v146 = nil;
    local l_magnitude_0 = v142.magnitude;
    v142 = v142.unit;
    local l_v141_0 = v141;
    local v149 = 0;
    local v150 = {
        v143
    };
    repeat
        local v151, v152, v153 = l_FindPartOnRayWithIgnoreList_0(workspace, l_new_2(l_v141_0, v142 * (l_magnitude_0 - v149)), v150, false, true);
        v144 = v151;
        v145 = v152;
        v146 = v153;
        local v154 = v144 and v144.CanCollide and v144.Material == Enum.Material.Concrete;
        if not v154 then
            table.insert(v150, v144);
        end;
        v149 = (v141 - v145).magnitude;
        l_v141_0 = v145;
    until v154 or l_magnitude_0 - v149 <= 0.001;
    if not v144 then
        v145 = v141 + v142 * l_magnitude_0;
        v146 = Vector3.new(0, -1, 0, 0);
    end;
    return v144, v145, v146;
end;
local _ = {
    tire_pop = 4534995816, 
    tire_leak = 4534995685
};
local l_tanh_0 = math.tanh;
local l_Lighting_0 = game:GetService("Lighting");
local function _(v159) --[[ Line: 478 ]] --[[ Name: u43 ]]
    return v159 ~= v159;
end;
local l_exp_0 = math.exp;
local l_max_0 = math.max;
local _ = l_RunService_0:IsStudio();
local v164 = 0;
local v165_ = 0;
v31.UpdatePrePhysics = function(v166, v167) --[[ Line: 489 ]] --[[ Name: UpdatePrePhysics ]]
    local l_Model_2 = v166.Model;
    local l_Engine_1 = l_Model_2:FindFirstChild("Engine");
    if not l_Engine_1 then
        return;
    else
        local l_CFrame_1 = l_Engine_1.CFrame;
        local v171 = l_Engine_1.Size * 0.5;
        local l_Rotate_0 = v166.Rotate;
        local l_Mass_1 = v166.Mass;
        local l_EnumMakeId_1 = v166.EnumMakeId;
        local v175 = l_CFrame_1:VectorToObjectSpace(l_Engine_1.Velocity);
        local l_Magnitude_0 = v175.Magnitude;
        local v177 = v32[1] - v32[3];
        local v178 = v32[2] - v32[4];
        if l_UserInputService_0.TouchEnabled then
            local l_Character_2 = l_LocalPlayer_0.Character;
            if l_Character_2 and l_Character_2:FindFirstChild("Humanoid") then
                local v180 = v5();
                local v181 = math.clamp(v180.X, -1, 1);
                local v182 = math.clamp(v180.Z, -1, 1);
                v177 = -v182 * l_abs_0(v182);
                v178 = -v181 * l_abs_0(v181);
            end;
        end;
        if v166.LockMovement or l_Model_2:FindFirstChild("LockMovement") then
            v177 = 0;
            v178 = 0;
        end;
        local l_vHeading_0 = v166.vHeading;
        if v178 == 0 then
            v164 = 0.3;
        else
            v164 = 0.16;
        end;
        local v184 = l_vHeading_0 + v178 - l_vHeading_0 * v164;
        v166.vHeading = v184;
        local l_Cb_0 = v166.Cb;
        local _ = v166.TirePopDuration;
        local _ = v166.TirePopProportion;
        local _ = v166.TiresLastPop;
        if v178 ~= 0 and v178 / l_abs_0(v178) ~= v175.X / l_abs_0(v175.X) and l_abs_0(v175.X) > 8 then
            v166.LastDrift = tick();
        end;
        local v189 = tick() - v166.LastDrift < 0.3;
        if l_EnumMakeId_1 == v9.Volt then
            v40 = false;
            v189 = false;
        end;
        v166.Drift = v189;
        local l_Volume_0 = v166.Sounds.DriftSqueal.Volume;
        if l_Magnitude_0 > 30 and (v189 or v40 and v178 ~= 0) then
            local _ = l_Volume_0 + (0.3 - l_Volume_0) * 0.06;
        else
            v126 = l_Volume_0 + (0 - l_Volume_0) * 0.1;
        end;
        v166.Sounds.DriftSqueal.Volume = v126;
        v31.UpdateForces(v166, v167);
        local v192 = v175.Z * v167;
        if v192 ~= v192 then
            v192 = 0;
        end;
        v166.WheelRotation = (v166.WheelRotation + v192 / (l_Model_2.WheelFrontRight.Wheel.Size.Y * 0.5)) % 6.283185307179586;
        local v193_ = l_tanh_0(l_abs_0(v175.magnitude) * 0.03);
        local l_Traction_0 = v166.Traction;
        if not v40 then
            v165_ = v189 and (1 - v193_) ^ 2 or 1;
        else
            v165_ = (1 - v193_) ^ 2 or 1;
        end;
        if l_Lighting_0:FindFirstChild("IsRaining") then
            v165_ = v165_ * 0.4;
        end;
        if v165_ >= 0.07 then
            v132 = v165_;
        end;
        if v132 >= l_Traction_0 then
            v133 = 0.01;
        end;
        local v195 = l_Traction_0 + (v132 - l_Traction_0) * v133;
        v166.Traction = v195;
        local l_Gears_0 = v166.Gears;
        local v197, v198 = u3(v166, l_Gears_0, l_Magnitude_0, v177, v167);
        if not v166.NoGears then
            v138 = v198;
        end;
        local v199 = v138 ^ 0.5 * (l_Magnitude_0 / 120);
        local l_v199_0 = v199;
        if l_v199_0 ~= l_v199_0 then
            v199 = 0;
        end;
        local v201 = math.clamp(v199, 0, 3);
        l_v199_0 = l_CurrentCamera_0.FieldOfView;
        l_CurrentCamera_0.FieldOfView = l_v199_0 + ((v201 < 0.825155 and v201 * v201 * v201 or 1 - l_exp_0(-v201)) * 30 + 70 - l_v199_0) * 0.7;
        local v202 = Ray.new(l_CFrame_1 * l_new_0(0, 0, v171.Z - 1), l_CFrame_1:vectorToWorldSpace((Vector3.new(0, -1, 0, 0))) * (v166.Height * 2));
        local l_workspace_PartOnRayWithIgnoreList_0, _, _, v206 = workspace:FindPartOnRayWithIgnoreList(v202, l_Model_2:GetDescendants(), false, false);
        local v207 = 0;
        v207 = (not (l_EnumMakeId_1 ~= v9.Bugatti and l_EnumMakeId_1 ~= v9.Torpedo and l_EnumMakeId_1 ~= v9.Firetruck and l_EnumMakeId_1 ~= v9.Surus) or l_EnumMakeId_1 == v9.BankTruck) and 650 or (not (l_EnumMakeId_1 ~= v9.Lamborghini) or l_EnumMakeId_1 == v9.MoltenM12) and 400 or 120;
        local v208 = 0;
        v208 = v177 < 0 and 80 or 1;
        local v209 = l_new_0(v207 * v195, 0, v208);
        local v210 = -v166.Crr * v175 * l_new_0(v207 * v195, 0, 1);
        if l_EnumMakeId_1 == v9.ATV and l_Mass_1 * 0.05 < math.abs(v210.X) then
            v210 = Vector3.new(math.clamp(v210.X, -l_Mass_1 * 0.05, l_Mass_1 * 0.05), 0, v210.Z);
        end;
        local v211 = -(l_Cb_0 * (1 + v166.GarageBrakes)) * v175.Z / l_abs_0(v175.Z);
        if v211 ~= v211 then
            v211 = 0;
        end;
        local v212 = v211 * Vector3.new(0, 0, 1, 0);
        local l_Nitro_0 = v166.Nitro;
        local v214 = (l_Nitro_0 and 0.17 * l_Mass_1 or 0) * Vector3.new(0, -0.10000000149011612, -1, 0);
        if l_Nitro_0 and not v166.Nitrof1 then
            v166.Nitrof1 = true;
            v31.SetGravity(v166, 20);
        elseif not l_Nitro_0 and v166.Nitrof1 then
            v166.Nitrof1 = false;
            v31.SetGravity(v166, 100);
        end;
        local v215 = v177 * Vector3.new(0, 0, -1, 0) * l_Gears_0[1] * 1 / 0.34 * 750;
        if v166.NoGears then
            if v177 <= 0 or not l_Gears_0[1] then
                local _ = l_Gears_0[2];
            end;
        else
            v156 = v177 > 0 and l_Gears_0[2 + v197] or l_Gears_0[2];
        end;
        local v217 = 4.4;
        if l_EnumMakeId_1 == v9.Lamborghini or l_EnumMakeId_1 == v9.Ferrari then
            v217 = 6.5;
        elseif l_EnumMakeId_1 == v9.Challenger then
            v217 = 6;
        elseif l_EnumMakeId_1 == v9.Surus or l_EnumMakeId_1 == v9.MoltenM12 then
            v217 = 8.2;
        elseif l_EnumMakeId_1 == v9.Bugatti then
            v217 = 8;
        elseif l_EnumMakeId_1 == v9.Chiron then
            v217 = 8;
        elseif l_EnumMakeId_1 == v9.Model3 then
            v217 = 4.2;
        elseif l_EnumMakeId_1 == v9.Roadster then
            v217 = 9;
        elseif l_EnumMakeId_1 == v9.Monster then
            v217 = 5;
        elseif l_EnumMakeId_1 == v9.Firetruck then
            v217 = 10;
        elseif l_EnumMakeId_1 == v9.ATV then
            v217 = 1.5;
        elseif l_EnumMakeId_1 == v9.BankTruck then
            v217 = 15;
        elseif l_EnumMakeId_1 == v9.BeamHybrid then
            v217 = 6.5;
        end;
        local v218 = v217 + v166.GarageEngineSpeed;
        if v166.GarageSpoilerSpeed then
            v218 = v218 + 0.5;
        end;
        local v219 = v215 * v156 * v218;
        if v206 and v206 == Enum.Material.Water then
            v219 = v219 * 0.625;
        end;
        local v220 = -v166.Cd * v175 * l_Magnitude_0 * v209 + v210;
        if v177 ~= 0 and v177 == v177 then
            v220 = v220 + v219;
            v166.LastForward = v177 / l_abs_0(v177);
        end;
        if v177 == 0 then
            if l_Magnitude_0 <= 1 then
                l_Engine_1.Velocity = Vector3.new(0, 0, 0, 0);
            else
                v220 = v220 + v212;
            end;
        end;
        if v40 and v178 == 0 and v177 == 0 then
            v220 = v220 + v212 * 3 + -l_Cb_0 * 0.3 * v175 * Vector3.new(1, 0, 0, 0);
        end;
        local v221 = 0;
        local v222 = 0;
        local v223 = 0;
        local l_RotY_0 = v166.RotY;
        v166.RotY = l_RotY_0 + (v178 - l_RotY_0) * 0.1;
        if l_workspace_PartOnRayWithIgnoreList_0 then
            if v206 == Enum.Material.Grass then
                v221 = 0.4;
            elseif v206 == Enum.Material.Concrete or v206 == Enum.Material.Basalt or v206 == Enum.Material.Asphalt then
                v222 = 0.94;
            elseif v206 == Enum.Material.Sandstone or v206 == Enum.Material.Sand then
                v223 = 0.5;
            end;
            if not v40 then
                v165 = 1.2;
            end;
            local v225 = math.exp(-l_max_0(v175.magnitude, 120) / 400) * v165;
            local v226 = -v175.Z / l_abs_0(v175.Z);
            if v226 ~= v226 then
                v226 = 0;
            end;
            if v166.LastForward ~= v226 and l_abs_0(v175.Z) > 2 and not v40 then
                v166.LastForward = v226;
            end;
            if v178 ~= 0 then
                l_Rotate_0.MaxTorque = l_new_0(0, v166.Mass * 30, 0);
            elseif v175.Z < 0 and not v40 then
                l_Rotate_0.MaxTorque = l_new_0(0, v166.Mass * 2, 0);
            end;
            l_Rotate_0.AngularVelocity = l_new_0(0, v184 * 0.16 * v166.TurnSpeed * v166.LastForward * v225 * v193_, 0);
        else
            l_Rotate_0.MaxTorque = l_new_0(v166.Mass * 0.5, v166.Mass, v166.Mass * 0.5);
        end;
        local v227 = Vector3.new(0, 0, 0, 0) + v214;
        local l_Grass_0 = v166.Sounds.Grass;
        local l_Asphalt_0 = v166.Sounds.Asphalt;
        local l_Sandstone_0 = v166.Sounds.Sandstone;
        v166.vGrass = v166.vGrass + (v221 - v166.vGrass) * 0.03;
        v166.vAsphalt = v166.vAsphalt + (v222 - v166.vAsphalt) * 0.03;
        v166.vSandstone = v166.vSandstone + (v223 - v166.vSandstone) * 0.03;
        local v231 = (l_Magnitude_0 < 60 and l_Magnitude_0 / 60 or 1) * 0.7;
        l_Grass_0.Volume = v166.vGrass * v231;
        l_Asphalt_0.Volume = v166.vAsphalt * v231;
        l_Sandstone_0.Volume = v166.vSandstone * v231;
        local v232 = l_Magnitude_0 > 0 and (l_Magnitude_0 / 120) ^ 0.5 or 0;
        l_Grass_0.PlaybackSpeed = v232;
        l_Asphalt_0.PlaybackSpeed = v232;
        l_Sandstone_0.PlaybackSpeed = v232;
        v166.DriveThruster.Force = v227 + v220;
        if v166.IK then
            local v233 = 0.6 * v166.RotY;
            v166.WeldSteer.C0 = l_Angles_0(0, v233, 0);
            local l_CFrame_2 = l_Model_2.Steer.CFrame;
            local v235 = l_Model_2.Steer.Size.X * 0.5 - 0.2;
            local l_IK_0 = v166.IK;
            l_IK_0.RightArm = l_CFrame_2 * l_new_0(v235, 0.1, 0);
            l_IK_0.LeftArm = l_CFrame_2 * l_new_0(-v235, 0.1, 0);
            l_IK_0.RightAngle = -v233 - 0.6;
            l_IK_0.LeftAngle = -v233 + 0.6;
        end;
        local _, _, _, _, _, _, _, v244, _, _, _, _ = l_CFrame_1:GetComponents();
        if v244 < -0.25 then
            if not v166.UpsideDownTime then
                v166.UpsideDownTime = tick();
            elseif tick() - v166.UpsideDownTime > 2 then
                l_Engine_1.BodyGyro.MaxTorque = Vector3.new(1e999, 0, 1e999, 0);
                wait(2.5);
                l_Engine_1.BodyGyro.MaxTorque = Vector3.new(0, 0, 0, 0);
            end;
        else
            v166.UpsideDownTime = nil;
        end;
        local v249 = Ray.new(l_CFrame_1 * l_new_0(0, 0, v171.Z - 1), l_CFrame_1:VectorToWorldSpace((Vector3.new(0, 1, 0, 0))) * 20);
        local l_workspace_PartOnRayWithIgnoreList_1, _ = workspace:FindPartOnRayWithIgnoreList(v249, l_Model_2:GetDescendants(), false, false);
        if l_workspace_PartOnRayWithIgnoreList_1 then
            return;
        else
            v193 = "Outside";
            return;
        end;
    end;
end;
local function v275(v252, v253, v254) --[[ Line: 847 ]] --[[ Name: u50 ]]
    local l_Part_0 = v253.Part;
    local l_Engine_2 = v252.Model.Engine;
    local l_CFrame_3 = l_Part_0.CFrame;
    local l_p_1 = l_CFrame_3.p;
    local l_Motor_1 = l_Part_0.Motor;
    local l_Thruster_0 = v253.Thruster;
    local l_Mass_2 = v252.Mass;
    local v262 = l_CFrame_3:VectorToObjectSpace(l_Part_0.Velocity);
    local v263 = v252.Height + v252.GarageSuspensionHeight;
    local v264 = Ray.new(l_p_1, l_CFrame_3:VectorToObjectSpace((Vector3.new(0, -1, 0, 0))) * v263);
    local l_workspace_PartOnRayWithIgnoreList_2, v266 = workspace:FindPartOnRayWithIgnoreList(v264, v252.Model:GetDescendants(), false, false);
    local l_Magnitude_1 = (v266 - l_p_1).Magnitude;
    local l_Y_0 = l_Motor_1.C1.Y;
    local v269 = l_new_1(0, l_Y_0 + (-l_min_0(l_Magnitude_1, v263) + l_Motor_1.Part0.Size.Y * 0.5 - l_Y_0) * 0.5, 0);
    if l_Engine_2.CFrame:ToObjectSpace(l_CFrame_3).Z < 0 then
        v269 = v269 * l_Angles_0(0, v252.RotY * 0.4 + l_Engine_2.RotVelocity.Y * 0.2, 0);
    elseif l_workspace_PartOnRayWithIgnoreList_2 and (v40 or v252.Drift) then
        l_Part_0.Drift.Part0.ParticleEmitter:Emit(2);
    end;
    local v270 = v269 * l_Angles_0(v252.WheelRotation, 0, 0);
    if v270.x ~= v270.x or v270.y ~= v270.y or v270.z ~= v270.z or l_abs_0(v270.x + v270.y + v270.z) > 100 then
        v270 = v137;
    end;
    l_Motor_1.C1 = v270;
    if not l_workspace_PartOnRayWithIgnoreList_2 then
        l_Thruster_0.Force = Vector3.new(0, 0, 0, 0);
        return;
    else
        local v271 = l_Mass_2 * 0.5;
        local v272 = -l_Mass_2 * 0.5;
        local v273 = (v263 - l_min_0(l_Magnitude_1, v263)) ^ 2 * (v252.Force / v263 ^ 2);
        if v262.magnitude > 0.01 then
            v273 = v273 - (v262 * v252.Damping).Y;
        end;
        if v273 ~= v273 then
            v273 = 0;
        end;
        local v274 = 1;
        if v254 <= 0.025 then
            v274 = 0.016666666666666666 / v254;
        end;
        if v274 ~= v274 then
            v274 = 0;
        end;
        l_Thruster_0.Force = l_new_0(0, (v271 < v273 and v271 or v273 < v272 and v272 or v273) * math.clamp(v274, 0, 1), 0);
        return;
    end;
end;
v31.UpdateForces = function(v276, v277) --[[ Line: 894 ]] --[[ Name: UpdateForces ]]
    local l_Wheels_0 = v276.Wheels;
    v275(v276, l_Wheels_0.WheelFrontRight, v277);
    v275(v276, l_Wheels_0.WheelFrontLeft, v277);
    v275(v276, l_Wheels_0.WheelBackRight, v277);
    v275(v276, l_Wheels_0.WheelBackLeft, v277);
end;
v31.UpdatePostPhysics = function(v279) --[[ Line: 901 ]] --[[ Name: UpdatePostPhysics ]]
    for _, v281 in ipairs(v279.Wheels) do
        v281.Thruster.Force = Vector3.new(0, 0, 0, 0);
    end;
end;
v31.Halt = function(v282) --[[ Line: 906 ]] --[[ Name: Halt ]]
    v282.DriveThruster.Force = Vector3.new(0, 0, 0, 0);
    v282.Rotate.MaxTorque = Vector3.new(0, 0, 0, 0);
end;
v31.SetWheelsVisible = function(v283, v284) --[[ Line: 910 ]] --[[ Name: SetWheelsVisible ]]
    local l_Model_3 = v283.Model;
    for _, v287 in ipairs({
        "WheelFrontRight", 
        "WheelFrontLeft", 
        "WheelBackRight", 
        "WheelBackLeft"
    }) do
        if not v284 then
            v229 = 1;
        end;
        assert(l_Model_3:FindFirstChild(v287)).Wheel.Transparency = v229;
    end;
end;
v31.SetTiresPoppedAt = function(v288, v289) --[[ Line: 921 ]] --[[ Name: SetTiresPoppedAt ]]
    v288.TiresLastPop[1] = v289;
    v288.TiresLastPop[2] = v289;
    v288.TiresLastPop[3] = v289;
    v288.TiresLastPop[4] = v289;
end;
v31.LockCamera = function(v290) --[[ Line: 927 ]] --[[ Name: LockCamera ]]
    assert(not v290.IsCameraLocked);
    local l_InsideCamera_0 = v290.Model:FindFirstChild("InsideCamera");
    if l_InsideCamera_0 == nil then
        return false;
    else
        v290.IsCameraLocked = true;
        l_CurrentCamera_0.CameraType = Enum.CameraType.Scriptable;
        v290.CameraLockRenderStepped = l_RunService_0.RenderStepped:Connect(function() --[[ Line: 935 ]]
            l_CurrentCamera_0.CFrame = l_InsideCamera_0.CFrame;
        end);
        return;
    end;
end;
v31.UnlockCamera = function(v292) --[[ Line: 939 ]] --[[ Name: UnlockCamera ]]
    assert(v292.IsCameraLocked);
    v292.IsCameraLocked = false;
    l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
    v292.CameraLockRenderStepped:Disconnect();
    v292.CameraLockRenderStepped = nil;
end;
local v293 = {
    [Enum.KeyCode.W] = 1, 
    [Enum.KeyCode.A] = 2, 
    [Enum.KeyCode.S] = 3, 
    [Enum.KeyCode.D] = 4, 
    [Enum.KeyCode.Q] = 5, 
    [Enum.KeyCode.E] = 6, 
    [Enum.KeyCode.ButtonR2] = 1, 
    [Enum.KeyCode.ButtonL2] = 3, 
    [Enum.KeyCode.Up] = 1, 
    [Enum.KeyCode.Left] = 2, 
    [Enum.KeyCode.Down] = 3, 
    [Enum.KeyCode.Right] = 4
};
v31.InputBegan = function(v294) --[[ Line: 960 ]] --[[ Name: InputBegan ]]
    if v294.UserInputType == Enum.UserInputType.Keyboard then
        local l_KeyCode_0 = v294.KeyCode;
        if v293[l_KeyCode_0] then
            v32[v293[l_KeyCode_0]] = 1;
        end;
    end;
end;
v31.InputEnded = function(v296) --[[ Line: 968 ]] --[[ Name: InputEnded ]]
    if v296.UserInputType == Enum.UserInputType.Keyboard then
        local l_KeyCode_1 = v296.KeyCode;
        if v293[l_KeyCode_1] then
            v32[v293[l_KeyCode_1]] = 0;
            return;
        end;
    elseif v296.UserInputType == Enum.UserInputType.Gamepad1 then
        local l_KeyCode_2 = v296.KeyCode;
        if l_KeyCode_2 == Enum.KeyCode.ButtonR2 or l_KeyCode_2 == Enum.KeyCode.ButtonL2 then
            v32[v293[l_KeyCode_2]] = 0;
        end;
    end;
end;
v31.InputChanged = function(v299) --[[ Line: 982 ]] --[[ Name: InputChanged ]]
    if v299.UserInputType == Enum.UserInputType.Gamepad1 then
        local l_KeyCode_3 = v299.KeyCode;
        if l_KeyCode_3 == Enum.KeyCode.Thumbstick1 then
            local l_Position_0 = v299.Position;
            local l_X_0 = l_Position_0.X;
            local _ = l_Position_0.Y;
            v32[2] = l_X_0 < -0.24 and (-l_X_0) ^ 2 or 0;
            v32[4] = l_X_0 > 0.24 and l_X_0 ^ 2 or 0;
            return;
        elseif l_KeyCode_3 == Enum.KeyCode.ButtonR2 or l_KeyCode_3 == Enum.KeyCode.ButtonL2 then
            local l_Z_0 = v299.Position.Z;
            v32[v293[l_KeyCode_3]] = l_Z_0 > 0.05 and l_Z_0 ^ 0.5 or 0;
        end;
    end;
end;
v31.SetEvent = function(v305) --[[ Line: 998 ]] --[[ Name: SetEvent ]]
    v41 = v305;
end;
local function _(v306, v307) --[[ Line: 1001 ]] --[[ Name: u52 ]]
    if v307 then
        v41:FireServer("d5f77b42", v306.Part);
    end;
    return true;
end;
return v31;
    _G.DisableKey = Enum.KeyCode.Q
    _G.TextTransparency = 0.75
end

UserInputService.TextBoxFocused:Connect(function()
    Typing = true
end)

UserInputService.TextBoxFocusReleased:Connect(function()
    Typing = false
end)

UserInputService.InputBegan:Connect(function(Input)
    if Input.KeyCode == _G.DisableKey and Typing == false then
        _G.ESPVisible = not _G.ESPVisible
        
        if _G.SendNotifications == true then
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Exunys Developer";
                Text = "The ESP's visibility is now set to "..tostring(_G.ESPVisible)..".";
                Duration = 5;
            })
        end
    end
end)

local Success, Errored = pcall(function()
    CreateESP()
end)

if Success and not Errored then
    if _G.SendNotifications == true then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Exunys Developer";
            Text = "ESP script has successfully loaded.";
            Duration = 5;
        })
    end
elseif Errored and not Success then
    if _G.SendNotifications == true then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "Exunys Developer";
            Text = "ESP script has errored while loading, please check the developer console! (F9)";
            Duration = 5;
        })
    end
    TestService:Message("The ESP script has errored, please notify me with the following information :")
    warn(Errored)
    print("!! Error no player found !!")
end
