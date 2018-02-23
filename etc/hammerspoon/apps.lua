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

-- Keybindinds are done by keyboard location / name 
hs.hotkey.bind({"alt+shift"}, "a", function() toggleApplication("Airmail") end)
hs.hotkey.bind({"alt+shift"}, "b", function() toggleApplication("Calibre") end)
hs.hotkey.bind({"alt+shift"}, "c", function() toggleApplication("Google Chrome") end)
hs.hotkey.bind({"alt+shift"}, "f", function() toggleApplication("Finder") end)
hs.hotkey.bind({"alt+shift"}, "l", function() toggleApplication("Wunderlist") end)
hs.hotkey.bind({"alt+shift"}, "m", function() toggleApplication("Macdown") end)
hs.hotkey.bind({"alt+shift"}, "o", function() toggleApplication("Microsoft Onenote") end)
hs.hotkey.bind({"alt+shift"}, "p", function() toggleApplication("System Preferences") end)
hs.hotkey.bind({"alt+shift"}, "s", function() toggleApplication("Safari") end)

hs.hotkey.bind({"alt+shift"}, "d", function() toggleApplication("Dash") end)
hs.hotkey.bind({"alt+shift"}, "g", function() toggleApplication("SourceTree") end)
hs.hotkey.bind({"alt+shift"}, "n", function() toggleApplication("Google Chrome Canary") end)
hs.hotkey.bind({"alt+shift"}, "x", function() toggleApplication("Visual Studio Code") end)
hs.hotkey.bind({"alt+shift"}, "z", function() toggleApplication("iTerm") end)

hs.hotkey.bind({"alt+shift"}, "e", function() toggleApplication("Messages") end)
hs.hotkey.bind({"alt+shift"}, "q", function() toggleApplication("Discord") end)
hs.hotkey.bind({"alt+shift"}, "w", function() toggleApplication("Whatsapp") end)

-- hs.hotkey.bind(mash, "a", function() toggleApplication("Airmail") end)
-- hs.hotkey.bind(mash, "c", function() toggleApplication("Google Chrome") end)
-- hs.hotkey.bind(mash, "d", function() toggleApplication("Dash") end)
-- hs.hotkey.bind(mash, "f", function() toggleApplication("Finder") end)
-- hs.hotkey.bind(mash, "g", function() toggleApplication("SourceTree") end)
-- hs.hotkey.bind(mash, "m", function() toggleApplication("Macdown") end)
-- hs.hotkey.bind(mash, "o", function() toggleApplication("Microsoft Onenote") end)
-- hs.hotkey.bind(mash, "p", function() toggleApplication("System Preferences") end)
-- hs.hotkey.bind(mash, "t", function() toggleApplication("iTerm") end)
-- hs.hotkey.bind(mash, "v", function() toggleApplication("Visual Studio Code") end)
-- hs.hotkey.bind(mash, "w", function() toggleApplication("Wunderlist") end)
-- hs.hotkey.bind(mash, "x", function() toggleApplication("Whatsapp") end)
-- hs.hotkey.bind(mash, "z", function() toggleApplication("Discord") end)

-- hs.hotkey.bind({"alt+shift"}, "a", function() hs.application.launchOrFocus("Airmail") end)
-- hs.hotkey.bind({"alt+shift"}, "c", function() hs.application.launchOrFocus("Google Chrome") end)
-- hs.hotkey.bind({"alt+shift"}, "d", function() hs.application.launchOrFocus("Dash") end)
-- hs.hotkey.bind({"alt+shift"}, "f", function() hs.application.launchOrFocus("Finder") end)
-- hs.hotkey.bind({"alt+shift"}, "g", function() hs.application.launchOrFocus("SourceTree") end)
-- hs.hotkey.bind({"alt+shift"}, "m", function() hs.application.launchOrFocus("Macdown") end)
-- hs.hotkey.bind({"alt+shift"}, "o", function() hs.application.launchOrFocus("Microsoft Onenote") end)
-- hs.hotkey.bind({"alt+shift"}, "p", function() hs.application.launchOrFocus("System Preferences") end)
-- hs.hotkey.bind({"alt+shift"}, "t", function() hs.application.launchOrFocus("iTerm") end)
-- hs.hotkey.bind({"alt+shift"}, "v", function() hs.application.launchOrFocus("Visual Studio Code") end)
-- hs.hotkey.bind({"alt+shift"}, "w", function() hs.application.launchOrFocus("Wunderlist") end)
-- hs.hotkey.bind({"alt+shift"}, "x", function() hs.application.launchOrFocus("Whatsapp") end)
-- hs.hotkey.bind({"alt+shift"}, "z", function() hs.application.launchOrFocus("Discord") end)


-- hs.hotkey.bind(mash, "c", function() hs.application.launchOrFocus("Google Chrome") end)
-- hs.hotkey.bind(mash, "d", function() hs.application.launchOrFocus("Dash") end)
-- hs.hotkey.bind(mash, "f", function() hs.application.launchOrFocus("Finder") end)

-- hs.hotkey.bind(mash, "g", function() hs.application.launchOrFocus("SourceTree") end)
-- hs.hotkey.bind(mash, "a", function() hs.application.launchOrFocus("Airmail") end)
-- hs.hotkey.bind(mash, "m", function() hs.application.launchOrFocus("Macdown") end)
-- hs.hotkey.bind(mash, "p", function() hs.application.launchOrFocus("System Preferences") end)
-- hs.hotkey.bind(mash, "o", function() hs.application.launchOrFocus("Microsoft Onenote") end)
-- hs.hotkey.bind(mash, "w", function() hs.application.launchOrFocus("Wunderlist") end)
-- hs.hotkey.bind(mash, "x", function() hs.application.launchOrFocus("Whatsapp") end)
-- hs.hotkey.bind(mash, "z", function() hs.application.launchOrFocus("Discord") end)

-- hs.hotkey.bind(mash, "t", function() hs.application.launchOrFocus("iTerm") end)
-- hs.hotkey.bind(mash, "v", function() hs.application.launchOrFocus("Visual Studio Code") end)


function spotify() 
  hs.application.launchOrFocus("Spotify")
  hs.application.launchOrFocus("Spotifree")
end
hs.hotkey.bind({"alt+shift"}, "y", spotify)

function spotifyWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.terminated) then
    if (appName == "Spotify") then
      local spotifree = hs.application.find("Spotifree")
        -- Kill spotifree on Spotify exit
        spotifree:kill()
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