local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍔 Cook Burgers Script v1.0",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by NexusXploits",
   ConfigurationSaving = {
      Enabled = false
   }
})

-- Main Tab
local MainTab = Window:CreateTab("🏠 Main", nil)

-- Variables for spam control
local spamPlatesEnabled = false
local spamFridgeEnabled = false
local spamMicrowaveEnabled = false
local spamExtinguisherEnabled = false
local spamFreezerEnabled = false
local spamContainerEnabled = false
local spamGigaMagnetEnabled = false
local spamAllEnabled = false -- To track the state of the Spam All toggle

-- Function to start spamming
local function startSpam()
   if spamPlatesEnabled then
      task.spawn(function()
         while spamPlatesEnabled do
            if workspace.Restaurant.PlateDispenser:FindFirstChild("DispenserButton") then
                workspace.Restaurant.PlateDispenser.DispenserButton.ContextAction:FireServer()
            end
            wait()
         end
      end)
   end

   if spamFridgeEnabled then
      task.spawn(function()
         while spamFridgeEnabled do
            if workspace.Restaurant.Fridge.Door:FindFirstChild("FridgeDoor") then
                workspace.Restaurant.Fridge.Door.FridgeDoor.ContextAction:FireServer()
            end
            wait()
         end
      end)
   end

   if spamMicrowaveEnabled then
      task.spawn(function()
         while spamMicrowaveEnabled do
            if workspace.Entities.Items.Microwave:FindFirstChild("Body") then
                workspace.Entities.Items.Microwave.Body.ContextAction:FireServer()
            end
            wait()
         end
      end)
   end

   if spamExtinguisherEnabled then
      task.spawn(function()
         while spamExtinguisherEnabled do
            if workspace.Entities.Items.Extinguisher:FindFirstChild("Extinguisher") then
                workspace.Entities.Items.Extinguisher.Extinguisher.ContextAction:FireServer()
            end
            wait()
         end
      end)
   end

   if spamFreezerEnabled then
      task.spawn(function()
         while spamFreezerEnabled do
            if workspace.Restaurant.Freezer.Door:FindFirstChild("FreezerDoor") then
                workspace.Restaurant.Freezer.Door.FreezerDoor.ContextAction:FireServer()
            end
            wait()
         end
      end)
   end

   if spamContainerEnabled then
      task.spawn(function()
         while spamContainerEnabled do
            if workspace.Restaurant.Container.Door:FindFirstChild("Lid") then
                workspace.Restaurant.Container.Door.Lid.ContextAction:FireServer()
            end
            wait()
         end
      end)
   end

   if spamGigaMagnetEnabled then
      task.spawn(function()
         while spamGigaMagnetEnabled do
            if workspace.Gameplay.GigaMagnet.Lever:FindFirstChild("Switch") then
                workspace.Gameplay.GigaMagnet.Lever.Switch.ContextAction:FireServer()
            end
            wait()
         end
      end)
   end
end

-- Fling All Players Button with Teleportation and Spin
local UniversalTab = Window:CreateTab("🌐 Universal", nil)

local ButtonFlingAllPlayers = UniversalTab:CreateButton({
   Name = "Fling All Players",
   Callback = function()
       -- Execute the Fling All Players script from the external link
       loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-b00jkidd-universal-fling-all-script-18832"))()
   end
})

-- Button to Spam Plates
local ButtonSpamPlates = MainTab:CreateButton({
   Name = "Spam Plates",
   Callback = function()
       spamPlatesEnabled = not spamPlatesEnabled
       if spamPlatesEnabled then
           startSpam()
       end
   end
})

-- Button to Spam Fridge
local ButtonSpamFridge = MainTab:CreateButton({
   Name = "Spam Fridge",
   Callback = function()
       spamFridgeEnabled = not spamFridgeEnabled
       if spamFridgeEnabled then
           startSpam()
       end
   end
})

-- Button to Spam Microwave
local ButtonSpamMicrowave = MainTab:CreateButton({
   Name = "Spam Microwave",
   Callback = function()
       spamMicrowaveEnabled = not spamMicrowaveEnabled
       if spamMicrowaveEnabled then
           startSpam()
       end
   end
})

-- Button to Spam Fire Extinguisher
local ButtonSpamExtinguisher = MainTab:CreateButton({
   Name = "Spam Fire Extinguisher",
   Callback = function()
       spamExtinguisherEnabled = not spamExtinguisherEnabled
       if spamExtinguisherEnabled then
           startSpam()
       end
   end
})

-- Button to Spam Freezer
local ButtonSpamFreezer = MainTab:CreateButton({
   Name = "Spam Freezer",
   Callback = function()
       spamFreezerEnabled = not spamFreezerEnabled
       if spamFreezerEnabled then
           startSpam()
       end
   end
})

-- Button to Spam Container
local ButtonSpamContainer = MainTab:CreateButton({
   Name = "Spam Container",
   Callback = function()
       spamContainerEnabled = not spamContainerEnabled
       if spamContainerEnabled then
           startSpam()
       end
   end
})

-- Button to Spam Giga-Magnet
local ButtonSpamGigaMagnet = MainTab:CreateButton({
   Name = "Spam Giga-Magnet",
   Callback = function()
       spamGigaMagnetEnabled = not spamGigaMagnetEnabled
       if spamGigaMagnetEnabled then
           startSpam()
       end
   end
})

-- Toggle Spam All Button
local ButtonSpamAll = MainTab:CreateToggle({
   Name = "Spam All",
   CurrentValue = false,
   Callback = function(value)
       spamAllEnabled = value
       if spamAllEnabled then
           -- Start spamming for all
           spamPlatesEnabled = true
           spamFridgeEnabled = true
           spamMicrowaveEnabled = true
           spamExtinguisherEnabled = true
           spamFreezerEnabled = true
           spamContainerEnabled = true
           spamGigaMagnetEnabled = true
           startSpam()
       else
           -- Stop spamming all
           spamPlatesEnabled = false
           spamFridgeEnabled = false
           spamMicrowaveEnabled = false
           spamExtinguisherEnabled = false
           spamFreezerEnabled = false
           spamContainerEnabled = false
           spamGigaMagnetEnabled = false
       end
   end
})
