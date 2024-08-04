
-- fv65p55tFB
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/GitHubLover231w1/github/main/git2.lua"))()
-----SCRIPT-VERSION-0.95-----
local idmain =  7465136166
local idlobby = 1730877806
-----                   -----
wait(10)
local privatecode = "fv65p55tFB"
local player = game.Players.LocalPlayer
local name = player.Name
local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
local humanoid = character:WaitForChild("Humanoid")
local humrt = character:WaitForChild("HumanoidRootPart")
local lurenumber = 1
local cframequest = CFrame.new(7730.916015625, -2175.83203125, -17215.19921875)
local cframespot = CFrame.new(7526.3642578125, -2076.832275390625, -17380.5078125 - lurenumber*5)
local cframemountain = CFrame.new(-15472.8193359375, 805.8187866210938, -9058.8662109375)
local cframeshrine = CFrame.new(-12185.525390625, 0, -18545.505859375)
local cframerobo = CFrame.new(5930.56298828125, 6.024040222167969, -9470.2841796875)
local tweenservice = game:GetService("TweenService")
local replicatedstorage = game:GetService("ReplicatedStorage")
local weaponname = "Rifle"
local tweeningyet = 1
local teleportedyet = 0
local function firefishman()
local player = game.Players.LocalPlayer
local name = player.Name
local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
local humanoid = character:WaitForChild("Humanoid")
local humrt = character:WaitForChild("HumanoidRootPart")
local head = workspace.NPCs:WaitForChild("Fishman Karate User"):WaitForChild("Head")
local args = {
	[1] = "fire",
	[2] = {
		["Start"] = humrt.CFrame,
		["Gun"] = "Rifle",
		["joe"] = "true",
		["Position"] = Vector3.new(head.Position.X,head.Position.Y + 0.575,head.Position.Z)
	}
}

game:GetService("ReplicatedStorage").Events.CIcklcon:FireServer(unpack(args))
task.wait(0.00001)
local args = {
	[1] = "reload",
	[2] = {
		["Gun"] = "Rifle"
	}
}
game:GetService("ReplicatedStorage").Events.CIcklcon.gunFunctions:InvokeServer(unpack(args))
end
local function takequest()
	local args = {
		[1] = {
			[1] = "npcChat",
			[2] = true
		}
	}

	game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
	wait(0.2)
	local args = {
		[1] = {
			[1] = "takequest",
			[2] = "Help becky"
		}
	}

	game:GetService("ReplicatedStorage").Events.Quest:InvokeServer(unpack(args))
	wait(0.2)
end
local function teleportspot()
	local cframe = cframespot
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local magnitude = (humrt.Position - cframe.Position).magnitude
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+100,humrt.CFrame.Z)
	local newcframe = CFrame.new(cframe.X,cframe.Y+100,cframe.Z)
	local tinfo = TweenInfo.new(magnitude/35,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
	local function tweencomplete()
		tweeningyet = 0
	end
	local function ontweening()
		if tweeningyet == 1 then 
			wait(0.125)
			ontweening()
		else 
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
			workspace.Gravity = 192.6
			tweeningyet = 1
		end
	end
	tween:Play()
	tween.Completed:Connect(tweencomplete)
	ontweening()
end
local function teleportquest()
	local cframe = cframequest
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local magnitude = (humrt.Position - cframe.Position).magnitude
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+100,humrt.CFrame.Z)
	local newcframe = CFrame.new(cframe.X,cframe.Y+100,cframe.Z)
	local tinfo = TweenInfo.new(magnitude/35,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
	local function tweencomplete()
		tweeningyet = 0
	end
	local function ontweening()
		if tweeningyet == 1 then 
			wait(0.125)
        ontweening()
		else 
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
			workspace.Gravity = 192.6
			tweeningyet = 1
		end
	end
	tween:Play()
	tween.Completed:Connect(tweencomplete)
	ontweening()
end
local function spotcheckerspot()
	local cframe = cframespot
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 4,startx + 4)
	local numberrangey =NumberRange.new(starty - 4,starty + 4)
	local numberrangez =NumberRange.new(startz - 4,startz + 4)
	local currentx = humrt.CFrame.X
	local currenty = humrt.CFrame.Y
	local currentz = humrt.CFrame.Z
	local checkerx = 0 
	local checkery = 0
	local checkerz = 0
	local function checks() 
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humrt = character.HumanoidRootPart
		local currentx = humrt.CFrame.X
		local currenty = humrt.CFrame.Y
		local currentz = humrt.CFrame.Z
		if currentx < numberrangex.Min or currentx > numberrangex.Max then 


		else 
			checkerx = 1
		end
		if currenty < numberrangey.Min or currenty > numberrangey.Max then 


		else 
			checkery = 1
		end
		if currentz < numberrangez.Min or currentz > numberrangez.Max then 


		else 
			checkerz = 1
		end

		if checkerx == 1 and checkery == 1 and checkerz == 1 then 
			workspace.Gravity = 192.6
			firefishman()
		else
			teleportspot()
			workspace.Gravity = 192.6
			firefishman()
		end
	end
	checks()
end
local function spotcheckerquest()
	local cframe = cframequest
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humrt = character.HumanoidRootPart
	local startx = cframe.X
	local starty = cframe.Y 
	local startz = cframe.Z
	local numberrangex =NumberRange.new(startx - 4,startx + 4)
	local numberrangey =NumberRange.new(starty - 4,starty + 4)
	local numberrangez =NumberRange.new(startz - 4,startz + 4)
	local currentx = humrt.CFrame.X
	local currenty = humrt.CFrame.Y
	local currentz = humrt.CFrame.Z
	local checkerx = 0 
	local checkery = 0
	local checkerz = 0
	local function checks() 
		local player = game.Players.LocalPlayer
		local name = player.Name
		local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
		local humrt = character.HumanoidRootPart
		local currentx = humrt.CFrame.X
		local currenty = humrt.CFrame.Y
		local currentz = humrt.CFrame.Z
		if currentx < numberrangex.Min or currentx > numberrangex.Max then 


		else 
			checkerx = 1
		end
		if currenty < numberrangey.Min or currenty > numberrangey.Max then 


		else 
			checkery = 1
		end
		if currentz < numberrangez.Min or currentz > numberrangez.Max then 


		else 
			checkerz = 1
		end

		if checkerx == 1 and checkery == 1 and checkerz == 1 then 
			workspace.Gravity = 192.6
			wait(0.2)
			takequest()
		else
			teleportquest()
			workspace.Gravity = 192.6
			wait(0.2)
			takequest()
		end
	end
	checks()
end
local function equip()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local bar1 = player.PlayerGui.BackpackGui.Hotbar.One:GetChildren()
	for i,item in bar1 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.One
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar2 = player.PlayerGui.BackpackGui.Hotbar.Two:GetChildren()
	for i,item in bar2 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.Two
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar3 = player.PlayerGui.BackpackGui.Hotbar.Three:GetChildren()
	for i,item in bar3 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.Three
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar4 = player.PlayerGui.BackpackGui.Hotbar.Four:GetChildren()
	for i,item in bar4 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.Four
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar5 = player.PlayerGui.BackpackGui.Hotbar.Five:GetChildren()
	for i,item in bar5 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.Five
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar6 = player.PlayerGui.BackpackGui.Hotbar.Six:GetChildren()
	for i,item in bar6 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.Six
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar7 = player.PlayerGui.BackpackGui.Hotbar.Seven:GetChildren()
	for i,item in bar7 do 
		if item.Name == weaponname then  
			local keycode = Enum.KeyCode.Seven
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar8 = player.PlayerGui.BackpackGui.Hotbar.Eight:GetChildren()
	for i,item in bar8 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.Eight
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
	local bar9 = player.PlayerGui.BackpackGui.Hotbar.Nine:GetChildren()
	for i,item in bar9 do 
		if item.Name == weaponname then 
			local keycode = Enum.KeyCode.Nine
			local virtualinputservice = game:GetService("VirtualInputManager")
			virtualinputservice:SendKeyEvent(true,keycode,false,nil)
			wait(0.1)
			virtualinputservice:SendKeyEvent(false,keycode, false, nil)

		end
	end
end

local counter = 0
local function input()
	local keycode = Enum.KeyCode.Nine
	local virtualinputservice = game:GetService("VirtualInputManager")
	virtualinputservice:SendKeyEvent(true,keycode,false,nil)
	wait(0.1)
	virtualinputservice:SendKeyEvent(false,keycode, false, nil)
end
local function inputE()
	wait(2)
	local keycode = Enum.KeyCode.LeftAlt
	local virtualinputservice = game:GetService("VirtualInputManager")
	virtualinputservice:SendKeyEvent(true,keycode,false,nil)
	wait(6)
	virtualinputservice:SendKeyEvent(false,keycode, false, nil)
end
local function stackleg()
	wait(4.2)

	local args = {
		[1] = "Concasser",
		[2] = {
			["char"] = game:GetService("Players").LocalPlayer.Character,
			["t"] = 1,
			["en2"] = Vector3.new(-3793.98828125, 20.927303314208984, -5618.5791015625),
			["x0"] = Vector3.new(-3898.217529296875, 49.7537841796875, -5647.49462890625),
			["v0"] = Vector3.new(11.118408203125, 97.0250015258789, 3.08447265625),
			["nt"] = 0,
			["g"] = Vector3.new(0, -196.1999969482422, 0)
		}
	}

	game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(unpack(args))
end
local function preparation()
	local args = {
		[1] = "BlackLeg"
	}

	game:GetService("ReplicatedStorage").Events.learnStyle:FireServer(unpack(args))
	wait(1)
	local fun1 = "FightingStyleMastery"
	local fun2 = nil
	local fun3 = 30
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("stats"):FireServer(fun1,fun2,fun3)
	wait(1)
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	wait(1)
	workspace.Gravity = 0
	humrt.CFrame = CFrame.new(humrt.CFrame.X,200,humrt.CFrame.Z)
end
local function teleportshrine()
	local cframe = cframeshrine
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local magnitude = (humrt.Position - cframe.Position).magnitude
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+100,humrt.CFrame.Z)
	local newcframe = CFrame.new(cframe.X,cframe.Y+100,cframe.Z)
	local tinfo = TweenInfo.new(magnitude/2000,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
	local function tweencomplete()
		tweeningyet = 0
	end
	local function ontweening()
		if tweeningyet == 1 then 
			wait(0.125)
			ontweening()
		else 
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 6,cframe.Z)
            inputE()
			tweeningyet = 1
		end
	end
	tween:Play()
	tween.Completed:Connect(tweencomplete)
	ontweening()
end
local function teleportmountain()
	local cframe = cframemountain
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local magnitude = (humrt.Position - cframe.Position).magnitude
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+100,humrt.CFrame.Z)
	local newcframe = CFrame.new(cframe.X,cframe.Y+100,cframe.Z)
	local tinfo = TweenInfo.new(magnitude/2000,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
	local function tweencomplete()
		tweeningyet = 0
	end
	local function ontweening()
		if tweeningyet == 1 then 
			wait(0.125)
			ontweening()
		else 
			workspace.Gravity = 50
			wait(720)
		end
	end
	tween:Play()
	tween.Completed:Connect(tweencomplete)
	ontweening()
end
local function teleporttoimpelbase()
	local cframe = cframerobo
	workspace.Gravity = 0
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local magnitude = (humrt.Position - cframe.Position).magnitude
	humrt.CFrame = CFrame.new(humrt.CFrame.X,humrt.CFrame.Y+100,humrt.CFrame.Z)
	local newcframe = CFrame.new(cframe.X,cframe.Y+100,cframe.Z)
	local tinfo = TweenInfo.new(magnitude/2000,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
	local tween = tweenservice:Create(humrt,tinfo,{CFrame = newcframe})
	local function tweencomplete()
		tweeningyet = 0
	end
	local function ontweening()
		if tweeningyet == 1 then 
			wait(0.125)
			ontweening()
		else 
			humrt.CFrame = CFrame.new(cframe.X,cframe.Y + 5,cframe.Z)
			workspace.Gravity = 192.6
			
			
		end
	end
	tween:Play()
	tween.Completed:Connect(tweencomplete)
	ontweening()
end
if game.PlaceId == idmain then 
	local falldmg = workspace.PlayerCharacters[name]:WaitForChild("FallDamage")
	falldmg.Enabled = false
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	stackleg()
	teleporttoimpelbase()
elseif game.PlaceId == idlobby then
	local fun1 = privatecode
	local fun2 = {
		[1] = true
	}
	replicatedstorage.Events.reserved:InvokeServer(fun1)
	print(1)
	local remote = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("chooseType"):WaitForChild("Frame"):WaitForChild("RemoteEvent")
	remote:FireServer(true)


else
	equip()
	local falldmg = workspace.PlayerCharacters[name]:WaitForChild("FallDamage")
	falldmg.Enabled = false
local function startscript()
	local player = game.Players.LocalPlayer
	local name = player.Name
	local character = workspace:WaitForChild("PlayerCharacters"):WaitForChild(name)
	local level = game:GetService("ReplicatedStorage")["Stats"..name].Stats.Level
	local humanoid = character:WaitForChild("Humanoid")
	local humrt = character:WaitForChild("HumanoidRootPart")
	local quest = game:GetService("ReplicatedStorage")["Stats"..name].Quest.CurrentQuest
	local function input()
		local keycode = Enum.KeyCode.Nine
		local virtualinputservice = game:GetService("VirtualInputManager")
		virtualinputservice:SendKeyEvent(true,keycode,false,nil)
		wait(0.1)
		virtualinputservice:SendKeyEvent(false,keycode, false, nil)
	end
	if level.Value == 575 then 
		preparation()
		teleportshrine()
		wait(2)
			teleportmountain()
			wait(700)
	elseif quest.Value == "Help becky" or level.Value < 190 then 
		spotcheckerspot()
		wait(0.01)
	else
		spotcheckerquest()
		wait(0.01)
	end
	counter += 1
	if counter == 150 then 
		counter = 0 
		input()
	end
	startscript()
end
startscript()
end


