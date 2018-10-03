-- application toggle function
local function toggleApplication(name)
  local app = hs.application.find(name)
  if not app or app:isHidden() then
    hs.application.launchOrFocus(name)
  elseif hs.application.frontmostApplication() ~= app then
    app:activate()
  else
    app:hide()
  end
end

-- Keybindings are done by keyboard location / name 
hs.hotkey.bind({"alt+shift"}, "a", function() toggleApplication("Airmail Beta") end)
hs.hotkey.bind({"alt+shift"}, "b", function() toggleApplication("Calibre") end)
hs.hotkey.bind({"alt+shift"}, "c", function() toggleApplication("Google Chrome") end)
hs.hotkey.bind({"alt+shift"}, "i", function() toggleApplication("Finder") end)
hs.hotkey.bind({"alt+shift"}, "k", function() toggleApplication("Skim") end)
hs.hotkey.bind({"alt+shift"}, "l", function() toggleApplication("Wunderlist") end)
hs.hotkey.bind({"alt+shift"}, "m", function() toggleApplication("Macdown") end)
hs.hotkey.bind({"alt+shift"}, "o", function() toggleApplication("Microsoft Onenote") end)
hs.hotkey.bind({"alt+shift"}, "p", function() toggleApplication("System Preferences") end)
hs.hotkey.bind({"alt+shift"}, "s", function() toggleApplication("Safari") end)

hs.hotkey.bind({"alt+shift"}, "d", function() toggleApplication("Dash") end)
hs.hotkey.bind({"alt+shift"}, "f", function() toggleApplication("Firefox Developer Edition") end)
hs.hotkey.bind({"alt+shift"}, "g", function() toggleApplication("SourceTree") end)
hs.hotkey.bind({"alt+shift"}, "n", function() toggleApplication("Google Chrome Canary") end)
hs.hotkey.bind({"alt+shift"}, "x", function() toggleApplication("Visual Studio Code - Insiders") end)
hs.hotkey.bind({"alt+shift"}, "z", function() toggleApplication("iTerm") end)

hs.hotkey.bind({"alt+shift"}, "e", function() toggleApplication("Messages") end)
hs.hotkey.bind({"alt+shift"}, "q", function() toggleApplication("Discord") end)
hs.hotkey.bind({"alt+shift"}, "w", function() toggleApplication("Whatsapp") end)

-- Toggle spotify if open, if not, launch it and spotifree
function spotify()
  local app = hs.application.find("Spotify")
  if not app then
    hs.application.launchOrFocus("Spotify")
    hs.application.launchOrFocus("Spotifree")
  else
    toggleApplication("Spotify")
  end
end
hs.hotkey.bind({"alt+shift"}, "y", spotify)

-- Close spotifree on spotify exit
function spotifyWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.terminated) then
    if (appName == "Spotify") then
      local app = hs.application.find("Spotifree")
        app:kill()
    end
  end
end
spotifyWatcher = hs.application.watcher.new(spotifyWatcher)
spotifyWatcher:start()



-- function applicationWatcher(appName, eventType, appObject)
--   if (eventType == hs.application.watcher.activated) then
--       if (appName == "Finder") then
--           -- Bring all Finder windows forward when one gets activated
--           appObject:selectMenuItem({"Window", "Bring All to Front"})
--       end
--   end  
-- end
-- appWatcher = hs.application.watcher.new(applicationWatcher)
-- appWatcher:start()


mouseCircle = nil
mouseCircleTimer = nil

function mouseHighlight()
    -- Delete an existing highlight if it exists
    if mouseCircle then
        mouseCircle:delete()
        if mouseCircleTimer then
            mouseCircleTimer:stop()
        end
    end
    -- Get the current co-ordinates of the mouse pointer
    mousepoint = hs.mouse.getAbsolutePosition()
    -- Prepare a big red circle around the mouse pointer
    mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-40, mousepoint.y-40, 80, 80))
    mouseCircle:setStrokeColor({["red"]=1,["blue"]=0,["green"]=0,["alpha"]=1})
    mouseCircle:setFill(false)
    mouseCircle:setStrokeWidth(5)
    mouseCircle:show()

    -- Set a timer to delete the circle after 3 seconds
    mouseCircleTimer = hs.timer.doAfter(3, function() mouseCircle:delete() end)
end
hs.hotkey.bind(mash, "D", mouseHighlight)

-- Paste on locked inputs
hs.hotkey.bind(mash, "V", function() hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)