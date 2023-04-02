local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Quiet","Ocean")
    -- MAIN
    local Main = Window:NewTab("Da Hood")
    local MainSection = Main:NewSection("go legit boy")
    
    
    MainSection:NewButton("ALT CONTROL (dots for cmds",".drop/.stop/.setup/.cdrop/.bring/.wallet/.freeze/.airlock/.god/.advert/.mask/.fps/.redeem/.crash", function()
        getgenv().Settings = {
            ['Controller'] = 12345, --// Controller ID
            ['Prefix'] = ".", --// Chat Prefix
            ['FPS'] = 3, --// Alts FPS
            ['Advert'] = ".gg/halloweens", --// Your Advert
            ['GUI'] = true, --// GUI Enabled/Disabled
        }
        
        getgenv().Alts = { --// Max is 38
            Alt1 = 12345,
            Alt2 = 12345,
            Alt3 = 12345,
        }
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/halloweevn/Spooky/main/main.lua", true))()
end)


    
    
    MainSection:NewButton("UnderGround AA","Underground", function()
        local Toggled = false
        local KeyCode = 'x'
        
        
        function AA()
            local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 4.14
        end
        
        game:GetService('UserInputService').InputBegan:Connect(function(Key)
            if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
                if Toggled then
                    Toggled = false
                    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1.85
        
                elseif not Toggled then
                    Toggled = true
        
                    while Toggled do
                        AA()
                        task.wait()
                    end
                end
            end
        end)
    
    
    
    
    MainSection:NewButton("Walkable Desync","Walk", function()
        getgenv().Desync = true





        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
                v:Destroy()
            end
        end
        
        
        game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
            repeat
                wait()
            until game.Players.LocalPlayer.Character
            char.ChildAdded:Connect(function(child)
                if child:IsA("Script") then 
                    wait(0.25)
                    if child:FindFirstChild("LocalScript") then
                        child.LocalScript:FireServer()
                    end
                end
            end)
        end)
        
        
        
        
        
        
        
        
        
        
        
        
        
        game.RunService.Heartbeat:Connect(function()
            if Desync then
                local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0.01),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(3000, 3000 ,3000)
                game.RunService.RenderStepped:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
            end
        end)
        
        wait(0.1)
        getgenv().Desync = false
        wait(0.1)
        getgenv().Desync1 = true
        
        game.RunService.Heartbeat:Connect(function()
            if getgenv().Desync1 then
                local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0.01),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(math.random(3000),math.random(3000),math.random(3000))
                game.RunService.RenderStepped:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
            end
        end)
        
        wait(0.5)
        
        game.RunService.Heartbeat:Connect(function()
            if Desync then
                local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0.01),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(3000, 3000 ,3000)
                game.RunService.RenderStepped:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
            end
        end)
        
        wait(0.1)
        getgenv().Desync = false
        wait(0.1)
        getgenv().Desync1 = true
        
        game.RunService.Heartbeat:Connect(function()
            if getgenv().Desync1 then
                local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0.01),0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(math.random(3000),math.random(3000),math.random(3000))
                game.RunService.RenderStepped:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
            end
        end)
end)
 
 
 
    MainSection:NewButton("Anti Aim Viewer","go legit though.", function()
        hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "jayson runs you", Text = "/quiethub", Duration = 4,});
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/AntiAimViewer"))()
 end)
    
    
    
    
     MainSection:NewButton("Network Anti","hard to resolve", function()
        local lp = game.Players.LocalPlayer
        local runservice = game:GetService("RunService")
        getgenv().kf = true
        getgenv().xd = 0
        while getgenv().kf do     
        task.wait()     
        local loop = runservice.Heartbeat:Connect(function()         
        sethiddenproperty(lp.Character.HumanoidRootPart, "NetworkIsSleeping", true)         
        task.wait()         
        sethiddenproperty(lp.Character.HumanoidRootPart, "NetworkIsSleeping", false)     
        end) 
        task.wait(getgenv().xd)             
        if loop then         
        loop:Disconnect()     
        end 
        end  
        setfflag("S2PhysicsSenderRate", 0.05) 
        setfflag("PhysicsSenderMaxBandwidthBps", math.pi/10)

     
     
     
     
     
    MainSection:NewButton("Velocity Anti Lock","bypasses resolvers, Keycode = Z", function()
        local Toggled = true
        local KeyCode = 'z'
        local hip = 2.80
        local val = -35
         
         
         
         
         
        function AA()
            local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = hip
        end
         
        game:GetService('UserInputService').InputBegan:Connect(function(Key)
            if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
                if Toggled then
                    Toggled = false
                    game.Players.LocalPlayer.Character.Humanoid.HipHeight = hip
         
                elseif not Toggled then
                    Toggled = true
         
                    while Toggled do
                        AA()
                        task.wait()
                    end
                end
            end
        end)
end)
    
    
    
    
    MainSection:NewButton("Aim Viewer","bypasses anti aim viewer", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Aim%20Viewer",true))()
end)
    
    
    MainSection:NewButton("#1 Streamable", "(W/OUT RESOLVER)", function()
            local Aiming = loadstring(game:HttpGet("https://pastebin.com/raw/YmUFTisy", true))()
                            Aiming.TeamCheck(false)
                             
                            
                            local Workspace = game:GetService("Workspace")
                            local Players = game:GetService("Players")
                            local RunService = game:GetService("RunService")
                            local UserInputService = game:GetService("UserInputService")
                            
                            
                            local LocalPlayer = Players.LocalPlayer
                            local Mouse = LocalPlayer:GetMouse()
                            local CurrentCamera = Workspace.CurrentCamera
                            
                            local DaHoodSettings = {
                                SilentAim = true,
                                AimLock = false,
                                Prediction = 0.14,
                                AimLockKeybind = Enum.KeyCode.Q
                            }
                            getgenv().DaHoodSettings = DaHoodSettings
                            
                            
                            function Aiming.Check()
                            -------------
                                if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
                                    return false
                                end
                            
                                -- // Check if downed
                                local Character = Aiming.Character(Aiming.Selected)
                                local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
                                local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                            
                                -- // Check B
                                if (KOd or Grabbed) then
                                    return false
                                end
                            
                                -- //
                                return true
                            end
                            
                            -- // Hook
                            local __index
                            __index = hookmetamethod(game, "__index", function(t, k)
                                -- // Check if it trying to get our mouse's hit or target and see if we can use it
                                if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
                                    local SelectedPart = Aiming.SelectedPart
                            
                                    -- // Hit/Target
                                    if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
                                        -- // Hit to account prediction
                                        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
                            
                                        -- // Return modded val
                                        return (k == "Hit" and Hit or SelectedPart)
                                    end
                                end
                            
                                -- // Return
                                return __index(t, k)
                            end)
                            
                            -- // Aimlock
                            RunService:BindToRenderStep("AimLock", 0, function()
                                if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then
                                    -- // Vars
                                    local SelectedPart = Aiming.SelectedPart
                            
                                    -- // Hit to account prediction
                                    local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)
                            
                                    CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
                                end
end)

    MainSection:NewButton("Resolver (kinda laggy)", "resolves all locks", function()
        getgenv().VelocityChanger = true
getgenv().Velocity = Vector3.new(200,0,200)


--// main scapt | realkscapter... omg
local Players     = game:GetService("Players")
local RunService  = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character   = LocalPlayer.Character
local RootPart    = Character:FindFirstChild("HumanoidRootPart")

local Heartbeat, RStepped, Stepped = RunService.Heartbeat, RunService.RenderStepped, RunService.Stepped

LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
   Character = NewCharacter
end)

local RVelocity, YVelocity = nil, 0.1

while true do
   if VelocityChanger then
       --// this a dumb check asnilsadsa
       if (not RootPart) or (not RootPart.Parent) or (not RootPart.Parent.Parent) then
           warn("weird ahh died")
           RootPart = Character:FindFirstChild("HumanoidRootPart")
       else
           RVelocity = RootPart.Velocity
   
           RootPart.Velocity = type(Velocity) == "vector" and Velocity or Velocity(RVelocity)
       
           RStepped:wait()
       
           RootPart.Velocity = RVelocity
       end
   end
   
   Heartbeat:wait()
end

    
    MainSection:NewButton("fake macro", "easy macro", function()
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        local SpeedGlitch = false
        Mouse.KeyDown:Connect(function(Key)
            if Key == "q" then
                SpeedGlitch = not SpeedGlitch
                if SpeedGlitch == true then
                    repeat game:GetService("RunService").Heartbeat:wait()
                        keypress(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keypress(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                    until SpeedGlitch == false
                end
            end
        end)
end)


    
--AUTO 3S
 local Auto3s = Window:NewTab("Auto3s")
 local Auto3sSection = Auto3s:NewSection("Mags")
 
    Auto3sSection:NewButton("mag gui","poetic n icy", function()
    local repo = 'https://raw.githubusercontent.com/uwuscutely/LinoriaLib/main/'
 
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
 
 
local metatable = getrawmetatable(game)
setreadonly(metatable,false)
local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__index
mt.__index = hookmetamethod(game,"__index",function(self,b)
    if self:IsA("Part") and b.Name == "Handle🏈" then
        return Vector3.new(10, 10, 10)
    end
    return old(self,b)
end)
 
local function bypass()
    game:GetService("ReplicatedStorage").Packages.Knit.Services.GameService.RF.GetTicker:Remove()
    wait(0.3)
    for i, v in pairs(game:GetService("JointsService"):GetChildren()) do
        if v:IsA("RemoteEvent") then
            v:Remove()
        end
    end
end
 
local function findClosestPartToVector3(v3)
    local part, dist = nil, math.huge
    for _,v in next, workspace:GetDescendants() do
        if v.Name == 'Handle🏈' then
            local m = (v3 - v.Position).magnitude
            if m < dist then
                dist = m
                part = v
            end
        end
    end
    return part, dist
end
 
--bypass()
 
local players = game:GetService("Players")
local rs = game:GetService("RunService")
local plr = game:GetService("Players").LocalPlayer.Character
 
ver = '1.0.0'
 
Library:Notify('Loading Quiet Hub v'..ver, 1)
 
wait(3)
 
local Window = Library:CreateWindow({
    Title = '                    Quiet Hub | Auto 3s | v'..ver,
    Center = true, 
    AutoShow = true,
})
 
local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('Settings'),
}
 
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('          Main Features')
 
LeftGroupBox:AddToggle('MagsToggle', {
    Text = 'LegitMags',
    Default = false, -- Default value (true / false)
    Tooltip = 'Ball teleports to you', -- Information shown when you hover over the toggle
})
 
getgenv().MagIsOn = false;
 
game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
    if getgenv().MagIsOn == true then
        print("on");
        spawn(function() 
            local ball = findClosestPartToVector3(game.Players.LocalPlayer.Character.Head.Position)
            ball.CanCollide = false
            local hum = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            local dis = (hum.position-ball.position).magnitude
            if (dis <= getgenv().MagsDistance) then
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
                ball.CFrame = CFrame.new(plr.Torso.Position)
                plr.Box.CFrame = CFrame.new(plr.Torso.Position)
                wait(.05)
            end
        end)        
    elseif getgenv().MagIsOn == false then
        print("off");
        return;
    end
end)
 
Toggles.MagsToggle:OnChanged(function()
    if Toggles.MagsToggle.Value == true then
        getgenv().MagIsOn = true
    elseif Toggles.MagsToggle.Value == false then
        getgenv().MagIsOn = false
    end
end)
 
LeftGroupBox:AddSlider('MagSlider', {
    Text = 'Mags Distance',
 
    Default = 30,
    Min = 10,
    Max = 105,
    Rounding = 0,
 
    Compact = false, -- If set to true, then it will hide the label
})
 
Options.MagSlider:OnChanged(function()
    getgenv().MagsDistance = Options.MagSlider.Value
end)
 
--start of speed
LeftGroupBox:AddToggle('SpeedToggle', {
    Text = 'Speed',
    Default = false, -- Default value (true / false)
    Tooltip = 'Makes you faster', -- Information shown when you hover over the toggle
})
 
Toggles.SpeedToggle:OnChanged(function()
    if Toggles.SpeedToggle.Value == true then
        rs:UnbindFromRenderStep("SpeedBounceThatAHH")
        local chr = players.LocalPlayer.Character
 
        rs:BindToRenderStep("SpeedBounceThatAHH", 2000, function(dt) 
            pcall(function() 
                local h = chr.HumanoidRootPart
                h.CFrame = h.CFrame + ((chr.Humanoid.MoveDirection*5*getgenv().speedamount)*dt) -- move direction * 5 * value * deltatime
            end)    
        end)
    elseif Toggles.SpeedToggle.Value == false then
        rs:UnbindFromRenderStep("SpeedBounceThatAHH")
    end
end)
 
LeftGroupBox:AddSlider('SpeedSlider', {
    Text = 'Speed Amount',
 
    Default = 5,
    Min = 1,
    Max = 20,
    Rounding = 0,
 
    Compact = false, -- If set to true, then it will hide the label
})
 
Options.SpeedSlider:OnChanged(function()
    getgenv().speedamount = Options.SpeedSlider.Value
end)
 
Library:SetWatermarkVisibility(true)
Library:SetWatermark('Quiet Hub')
 
Library.KeybindFrame.Visible = false; -- todo: add a function for this
 
Library:OnUnload(function()
    Library.Unloaded = true
end)
 
-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('Quiet Hub')
SaveManager:SetFolder('Quiet Hub/Auto3s')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])
Library:Notify('Loaded Quiet v'..ver.. '  shhh :O', 3)
end)

-- JAILBIRD

local JailBird = Window:NewTab("JailBird")
local JailBirdSection = JailBird:NewSection("Jailbird...")

 JailBirdSection:NewButton("Silent Aim + ESP","cmon", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1iseo/rbx/main/jailbird/jailbird.lua"))()
 end)
