local stoppedColor = BrickColor.new(26)
local movingColor = BrickColor.new(28)
local part = script.Parent
local t = 0
local touchHasEnded
local front_speed = 10
local damaged_front_speed = 5
local up_speed = 5
local max_height = 20
local displayer = script.parent.parent.Display

part.Touched:Connect(function()
	touchHasEnded = false
	repeat
		t += 1 
		wait(1)
	until touchHasEnded
	part.BrickColor = stoppedColor --WHILE NOT TOUCHED
	displayer.BrickColor = BrickColor.new(332) --WHILE NOT TOUCHED
	displayer.decal.Texture = "http://www.roblox.com/asset/?id=10941401721"
	script.LinearVelocity.VectorVelocity = Vector3.new(0, 0, 0) --WHILE NOT TOUCHED
end)

part.TouchEnded:Connect(function()
	touchHasEnded = true
	part.BrickColor = movingColor --WHILE TOUCHED
	displayer.BrickColor = movingColor --WHILE TOUCHED
	displayer.decal.Texture = "http://www.roblox.com/asset/?id=10941400891" --WHILE TOUCHED
	--script.LinearVelocity.VectorVelocity = Vector3.new(0, up_speed, -front_speed) --WHILE TOUCHED
	script.LinearVelocity.VectorVelocity = Vector3.new(0, 0, -front_speed) --WHILE TOUCHED
end)
