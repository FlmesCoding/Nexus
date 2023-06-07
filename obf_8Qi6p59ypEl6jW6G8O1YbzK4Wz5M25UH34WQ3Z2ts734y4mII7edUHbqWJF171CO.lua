-- Loadstring --
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
-- Main Window --
local Window = Rayfield:CreateWindow({
   Name = "Nexus ⭐️",
   LoadingTitle = "Nexus - JailBreak",
   LoadingSubtitle = "By Flames#0502",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Nexus"
   },
   Discord = {
      Enabled = false,
      Invite = "NKpGNbtc2y", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"EarlyDev"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
-- Main Window --

-- // Tabs \\ --
local localplayer = Window:CreateTab("👤 LocalPlayer", 13682420344) -- Title, Image
local vehicle = Window:CreateTab("🚗 Vehicle", 13682422166) -- Title, Image
local teleport = Window:CreateTab("🌀 Teleportation", 13682423250) -- Title, Image
local visuals = Window:CreateTab("👀 Visuals", 13682423957) -- Title, Image
local combat = Window:CreateTab("⚔️ Combat", 13682425117) -- Title, Image
local robberies = Window:CreateTab("👤💰 Robberies", 4483362458) -- Title, Image
local settings = Window:CreateTab("⚙️ Settings", 4483362458) -- Title, Image
-- // Tabs \\ --


-- // character section \\ --

local Section = localplayer:CreateSection("Character")

local Slider = localplayer:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 250},
    Increment = 1,
    Suffix = "X",
    CurrentValue = 16,
    Flag = "ws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(f)
    -- The function that takes place when the slider changes
    -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })

 local Slider = localplayer:CreateSlider({
    Name = "JumpPower",
    Range = {50, 500},
    Increment = 1,
    Suffix = "X",
    CurrentValue = 50,
    Flag = "jp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(f)
    -- The function that takes place when the slider changes
    -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })

 local Slider = localplayer:CreateSlider({
    Name = "Gravity",
    Range = {1, 350},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 192.6,
    Flag = "grav", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(f)
    -- The function that takes place when the slider changes
    -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })

 local Slider = localplayer:CreateSlider({
    Name = "FOV",
    Range = {70, 120},
    Increment = 1,
    Suffix = "X",
    CurrentValue = 70,
    Flag = "fov", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(f)
    -- The function that takes place when the slider changes
    -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })

 local Slider = localplayer:CreateSlider({
    Name = "Fly",
    Range = {10, 250},
    Increment = 1,
    Suffix = "^",
    CurrentValue = 70,
    Flag = "fly", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(f)
    -- The function that takes place when the slider changes
    -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })

 local Toggle = localplayer:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "infjump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(x)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 -- // Utilities section \\ --

 local Section = localplayer:CreateSection("Utilities")

 local Toggle = localplayer:CreateToggle({
    Name = "Anti Ragdoll",
    CurrentValue = false,
    Flag = "antiragdoll", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = localplayer:CreateToggle({
    Name = "No Fall Damage",
    CurrentValue = false,
    Flag = "nofall", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = localplayer:CreateToggle({
    Name = "Anti SkyDive",
    CurrentValue = false,
    Flag = "antiskydive", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = localplayer:CreateToggle({
    Name = "Anti Parachute",
    CurrentValue = false,
    Flag = "antiparachute", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = localplayer:CreateToggle({
    Name = "Anti Taze",
    CurrentValue = false,
    Flag = "antitaze", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = localplayer:CreateToggle({
    Name = "No Punch CoolDown",
    CurrentValue = false,
    Flag = "nopunchcooldown", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = localplayer:CreateToggle({
    Name = "No Crawl CoolDown",
    CurrentValue = false,
    Flag = "nocrawlcooldown", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = localplayer:CreateToggle({
    Name = "No E Wait",
    CurrentValue = false,
    Flag = "no e wait", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })
 local Toggle = localplayer:CreateToggle({
    Name = "Bypass KeyCard Doors",
    CurrentValue = false,
    Flag = "bypass keycard", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 -- // JetPack Mods section \\ --

 local Section = localplayer:CreateSection("Jetpack Mods")

 local Toggle = localplayer:CreateToggle({
    Name = "Inf Fuel",
    CurrentValue = false,
    Flag = "inf fuel", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = localplayer:CreateToggle({
    Name = "Premium Fuel",
    CurrentValue = false,
    Flag = "prem fuel", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(z)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })


 -- // Vehicle tabs \\ --

 local Section = vehicle:CreateSection("Utilities")


 local Keybind = vehicle:CreateKeybind({
    Name = "Car Jump",
    CurrentKeybind = "X",
    HoldToInteract = false,
    Flag = "car jump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
    -- The function that takes place when the keybind is pressed
    -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
    end,
 })

 local Toggle = vehicle:CreateToggle({
    Name = "Inf Nitro",
    CurrentValue = false,
    Flag = "inf nitro", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = vehicle:CreateToggle({
    Name = "Rainbow Nitro",
    CurrentValue = false,
    Flag = "rainbow nitro", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = vehicle:CreateToggle({
    Name = "Drive On Water",
    CurrentValue = false,
    Flag = "drive on water", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = vehicle:CreateToggle({
    Name = "Drive On Water",
    CurrentValue = false,
    Flag = "drive on water", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = vehicle:CreateToggle({
    Name = "Flicker HeadLights",
    CurrentValue = false,
    Flag = "flicker headlight", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = vehicle:CreateToggle({
    Name = "Monster Truck Wheels",
    CurrentValue = false,
    Flag = "monster truck wheels", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Section = vehicle:CreateSection("Car Mods")

 local Slider = vehicle:CreateSlider({
   Name = "Engine Speed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "X",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(x)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})

local Slider = vehicle:CreateSlider({
   Name = "Suspension Height",
   Range = {0, 300},
   Increment = 1,
   Suffix = "X",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(x)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})

local Slider = vehicle:CreateSlider({
   Name = "Brakes",
   Range = {0, 300},
   Increment = 1,
   Suffix = "X",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(x)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})

local Slider = vehicle:CreateSlider({
   Name = "Turn Speed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "X",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(x)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})