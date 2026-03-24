local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/liebertsx/Tora-Library/main/src/librarynew", true))()
local tab = library:CreateWindow("Dark Hubs")

local player = game.Players.LocalPlayer
tab:AddButton({
    text = "Home",
    flag = "button1",
    callback = function()
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        hrp.CFrame = CFrame.new(56.053440, -9.643722, -54.532490)
    end
})
-- TELEPORT
tab:AddButton({
    text = "x2000 Lucky",
    flag = "button1",
    callback = function()
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        hrp.CFrame = CFrame.new(124.620262, -9.819654, -34009.570312)
    end
})
tab:AddButton({
    text = "x1500 Lucky",
    flag = "button1",
    callback = function()
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        hrp.CFrame = CFrame.new(3.481444, -9.819654, -23532.916016)
    end
})
tab:AddButton({
    text = "x1000 Lucky",
    flag = "button1",
    callback = function()
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        hrp.CFrame = CFrame.new(19.049265, -9.031905, -15705.837891)
    end
})
tab:AddButton({
    text = "x500 Lucky",
    flag = "button1",
    callback = function()
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        hrp.CFrame = CFrame.new(-3.483120, -5.956611, -10881.540039)
    end
})

-- COPY POSITION
tab:AddButton({
    text = "Copy Your Position",
    flag = "button2",
    callback = function()
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:WaitForChild("HumanoidRootPart")

        local pos = hrp.Position
        local text = string.format("Vector3.new(%f, %f, %f)", pos.X, pos.Y, pos.Z)

        if setclipboard then
            setclipboard(text)
            print("Đã copy:", text)
        else
            warn("Executor không hỗ trợ clipboard")
            print(text)
        end
    end
})
library:Init()
