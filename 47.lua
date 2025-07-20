-- Create a test part with a ClickDetector in workspace
local part = Instance.new("Part")
part.Size = Vector3.new(4, 1, 4)
part.Position = workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 5, 0)
part.Anchored = true
part.Name = "ClickTestPart"
part.Parent = workspace

local cd = Instance.new("ClickDetector")
cd.Name = "ClickTestCD"
cd.Parent = part

-- Connect test signals to log both MouseClick and RightMouseClick
cd.MouseClick:Connect(function(plr)
    print("✅ MouseClick fired by:", plr.Name)
end)

cd.RightMouseClick:Connect(function(plr)
    print("✅ RightMouseClick fired by:", plr.Name)
end)

-- Wait for everything to parent properly
task.wait(1)

-- Fire left click
local success1, err1 = pcall(function()
    print("🔁 Testing fireclickdetector (MouseClick)...")
    fireclickdetector(cd, 10, "MouseClick")
end)
if not success1 then warn("❌ MouseClick failed:", err1) end

-- Fire right click
local success2, err2 = pcall(function()
    print("🔁 Testing fireclickdetector (RightClick)...")
    fireclickdetector(cd, 10, "RightClick")
end)
if not success2 then warn("❌ RightClick failed:", err2) end
