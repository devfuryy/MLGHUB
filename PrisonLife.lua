game.StarterGui:SetCore("SendNotification", {
    Title    = "Prison Life"; 
    Text     = "Made by Entoy77/JavaUpdated/devfuryy"; 
    Icon     = "http://www.roblox.com/asset?id=6056183927"; 
    Duration = 8;
    Callback = bindableFunction; 
})
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/devfuryy/MLGHUB/main/Lib.lua')))()

local w = library:CreateWindow("MLG HUB - V Beta 0.15") -- Creates the window

local b = w:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)

b:Button("Police Team",function()
	workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

b:Button("inmate Team",function()
	workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

b:Button("Super Push",function()
	mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)
end)

b:Button("Guns",function()
	for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do
 
lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
print(lol)
end
end)

b:Button("Crim Team",function()
	wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.125183, 109.123924, 2059.99536)

wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)

b:Button("Arrest Crims",function()
	local Player = game.Players.LocalPlayer
local cpos = Player.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
if v.Name ~= Player.Name then
local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
Player.Character.HumanoidRootPart.CFrame = cpos
Notify("Success", "Arrested all of the n00bs", "Cool!")
end)

b:Button("Remove All Walls [CLIENT]",function()

wait(0.1)
game.Workspace.Prison_Guard_Outpost:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.building:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.glass:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.oven:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.shelves:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.vents:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.accents:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.vendingmachine:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.Prison_table1:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.counter:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.boxes:Remove()
wait(0.1)
wait(7)
game.Workspace.Prison_Halls.walls:Remove()

wait(0.1)
game.Workspace.Prison_Halls.roof:Remove()

wait(0.1)
game.Workspace.Prison_Halls.outlines:Remove()

wait(0.1)
game.Workspace.Prison_Halls.lights:Remove()

wait(0.1)
Workspace.Prison_Halls.accent:Remove()

wait(0.1)
game.Workspace.Prison_Halls.glass:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.b_front:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.doors:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.c_tables:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.a_front:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.b_outerwall:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.c_wall:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.b_wall:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.c_hallwall:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.a_outerwall:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.b_ramp:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.a_ramp:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.a_walls:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.Cells_B:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.Cells_A:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.c_corner:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.Wedge:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.a_ceiling:Remove()

wait(0.1)
game.Workspace.Prison_Cellblock.b_ceiling:Remove()

wait(0.1)
game.Workspace.City_buildings:Remove()

wait(0.1)
game.Workspace.Prison_OuterWall:Remove()

wait(0.1)
game.Workspace.Prison_Fences:Remove()
end)

b:Button("TP To Crim Base",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.46,94.13,2063.63)
end)

b:Button("TP To Prison",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)

b:Button("Sword",function()
local Sword = Instance.new("Tool")
local Handle = Instance.new("Part")
local Mesh = Instance.new("SpecialMesh")
local Unsheath = Instance.new("Sound")
local SwordSlash = Instance.new("Sound")
SwordSlash.Name = "SwordSlash"
Unsheath.Name = "Unsheath"
Unsheath.SoundId = "http://www.roblox.com/asset/?id=12222225"
Unsheath.Volume = 1
SwordSlash.SoundId = "http://www.roblox.com/asset/?id=12222216"
SwordSlash.Volume = .7
Unsheath.Parent = Handle
SwordSlash.Parent = Handle
Mesh.Parent = Handle
Mesh.MeshId = "rbxassetid://497078148"
Mesh.Scale = Vector3.new(5,5,5)
Handle.Name = "Handle"
Handle.Parent = Sword
Sword.GripForward = Vector3.new(-1,0,0)
Sword.GripPos = Vector3.new(0,0,-1.5)
Sword.GripRight = Vector3.new(0,1,0)
Sword.GripUp = Vector3.new(0,0,1)
Sword.ToolTip = "Uctron's Sword"
Sword.TextureId = "rbxasset://Textures/Sword128.png"
Sword.CanBeDropped = false
Sword.RequiresHandle = true
Handle.Orientation = Vector3.new(-46.24, 42.14, 50.93)
Handle.Position = Vector3.new(-3.174,1.57,3.04)
Handle.CanCollide = true
Handle.Size = Vector3.new(1,.8,4)
Mesh.MeshId = "rbxasset://fonts/sword.mesh"
Mesh.MeshType = "FileMesh"
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Scale = Vector3.new(1,1,1)
Mesh.TextureId = "rbxasset://textures/SwordTexture.png"
Sword.Equipped:Connect(function()
Unsheath:Play()
end)
Sword.Activated:Connect(function()
SwordSlash:Play()
Handle.Touched:Connect(function(Handle)
p=game.Players:FindFirstChild(Handle.Parent.Name)
game.ReplicatedStorage.meleeEvent:FireServer(p)
end)
local Anim = Instance.new("StringValue")
Anim.Name = "toolanim"
Anim.Value = "Slash"
Anim.Parent = Sword
end)
Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"
Tool = Sword
Mouse = nil
function UpdateIcon()
if Mouse then
Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
end
end
function OnEquipped(ToolMouse)
Mouse = ToolMouse
UpdateIcon()
end
function OnChanged(Property)
if Property == "Enabled" then
UpdateIcon()
end
end
Tool.Equipped:Connect(OnEquipped)
Tool.Changed:Connect(OnChanged)
Sword.Parent = game.Players.LocalPlayer.Backpack
end)

local b = w:CreateFolder("Credits") -- Creates the folder(U will put here your buttons,etc)

b:Label("MLG HUB - Prison Life",{
	TextSize = 18; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining

}) 

b:Label("Made by DumbSuperMig",{
	TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining

}) 

--[[
KILL THE CAMERAAAAA
]]
