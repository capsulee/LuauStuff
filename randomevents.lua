local RunService = game:GetService("RunService")

local function mario()
	for i,v in workspace:GetDescendants() do
		if v:IsA("Part") or v:IsA("UnionOperation") and v:IsA("MeshPart") then
			v.Transparency = 1
			local decal = Instance.new("Decal")
			decal.Parent = v
			decal.Face = Enum.NormalId.Top
			decal.Texture = "rbxassetid://7088214085"
			decal = Instance.new("Decal")
			decal.Parent = v
			decal.Face = Enum.NormalId.Bottom
			decal.Texture = "rbxassetid://7088214085"
			decal = Instance.new("Decal")
			decal.Parent = v
			decal.Face = Enum.NormalId.Left
			decal.Texture = "rbxassetid://7088214085"
			decal = Instance.new("Decal")
			decal.Parent = v
			decal.Face = Enum.NormalId.Right
			decal.Texture = "rbxassetid://7088214085"
			decal = Instance.new("Decal")
			decal.Parent = v
			decal.Face = Enum.NormalId.Front
			decal.Texture = "rbxassetid://7088214085"
			decal = Instance.new("Decal")
			decal.Parent = v
			decal.Face = Enum.NormalId.Back
			decal.Texture = "rbxassetid://7088214085"
			decal = Instance.new("Decal")
			decal.Parent = v
			decal.Face = Enum.NormalId.Bottom
			decal.Texture = "rbxassetid://7088214085"
		end
	end

	local sound = Instance.new("Sound")
	sound.Parent = workspace
	sound.SoundId = "rbxassetid://5730761426"
	sound.Looped = true
	sound:Play()
end

local function jumpscare()
	local players = game:GetService("Players"):GetPlayers()
	local targetPlayer = players[math.random(1, #players)]
	local gui = Instance.new("ScreenGui")
	gui.Parent = targetPlayer.PlayerGui
	gui.IgnoreGuiInset = true
	local image = Instance.new("ImageLabel")
	image.Size = UDim2.fromScale(1,1)
	image.Image = "rbxassetid://1744067162"
	image.Parent = gui
	local boomSound = Instance.new("Sound")
	boomSound.Parent = targetPlayer.Character.HumanoidRootPart
	boomSound.Volume = 5
	boomSound.SoundId = "rbxassetid://8325519723"
	boomSound:Play()
	task.wait(3)
	gui:Destroy()
	boomSound:Destroy()
end

local function nilPlayer()
	local players = game:GetService("Players"):GetPlayers()
	local nilPlayer = players[math.random(1, #players)]
	nilPlayer.Character.Humanoid.Health = 0
	local bv = Instance.new("BodyVelocity")
	bv.Parent = nilPlayer.Character.HumanoidRootPart
	bv.MaxForce = Vector3.one * math.huge
	bv.Velocity = Vector3.one * 1000000
	bv.P = 1000000
	game.Debris:AddItem(bv,0.35)
end

local function boom()
	for i=1,100,1 do
		local boomSound = Instance.new("Sound")
		boomSound.Parent = workspace
		boomSound.Volume = 2
		boomSound.SoundId = "rbxassetid://9125402735"
		boomSound:Play()
		game.Debris:AddItem(boomSound,5)
	end
end

local function fps()
	local MaxFPS = 10
	local ticks = 0
	while ticks <= 80 do
		ticks += 1
		local Tick1 = tick()
		RunService.Heartbeat:Wait()
		repeat until (Tick1 + 1/MaxFPS) < tick()
	end
end

local function winall()
	for i,v in game.Players:GetPlayers() do
		if v:FindFirstChild("leaderstats") then
			v.leaderstats.Kills.Value = math.huge
			v.leaderstats["Kill Streak"].Value = math.huge
			v.leaderstats.Points.Value = math.huge
		end
	end
end

local function unachorall()
	for i,v in workspace:GetDescendants() do
		if v:IsA("Part") then
			v.Anchored = false
			task.wait(0.2)
		end
	end
end

local function anticheatkick()
	local players = game:GetService("Players"):GetPlayers()
	local targetPlayer = players[math.random(1, #players)]
	targetPlayer:Kick("Imagine exploiting you nerd")
end

while true do
	task.wait(math.random(10,100))
	local testNum = math.random(1,8)
	if testNum == 1 then
		mario()
	elseif testNum == 2 then
		unachorall()
	elseif testNum == 3 then
		anticheatkick()
	elseif testNum == 4 then
		fps()
	elseif testNum == 5 then
		boom()
	elseif testNum == 6 then
		nilPlayer()
	elseif testNum == 7 then
		jumpscare()
	elseif testNum == 8 then
		winall()
	end
end
