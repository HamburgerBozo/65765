for _, v in ipairs(game:GetDescendants()) do
    if v:IsA("ClickDetector") then
        local part = v.Parent
        if part and part:IsA("BasePart") then
            pcall(function()
                fireclickdetector(v, 10, "RightMouseClick")
                fireclickdetector(v, 10, "RightClick")
                print("[✓] Clicked:", part:GetFullName())
            end)
        end
    end
end
