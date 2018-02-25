--- === BrewInfo ===
---
--- Display pop-up with Homebrew Formula info, or open their URL
---
--- Download: [https://github.com/Hammerspoon/Spoons/raw/master/Spoons/BrewInfo.spoon.zip](https://github.com/Hammerspoon/Spoons/raw/master/Spoons/BrewInfo.spoon.zip)
---
--- You can bind keys to automatically display the output of `brew
--- info` of the currently-selected package name, or to open its
--- homepage. I use it to quickly explore new packages from the output
--- of `brew update`.

local mod={}
mod.__index = mod

-- Metadata
mod.name = "BrewInfo"
mod.version = "1.1"
mod.author = "Diego Zamboni <diego@zzamboni.org>"
mod.homepage = "https://github.com/Hammerspoon/Spoons"
mod.license = "MIT - https://opensource.org/licenses/MIT"

--- BrewInfo.brew_info_delay_sec
--- Variable
--- An integer specifying how long the alerts generated by BrewInfo will stay onscreen
mod.brew_info_delay_sec = 3

--- BrewInfo.brew_info_style
--- Variable
--- A table in conformance with the [hs.alert.defaultStyle](http://www.hammerspoon.org/docs/hs.alert.html#defaultStyle[]) format that specifies the style used by the alerts. Default value: `{ textFont = "Courier New", textSize = 14, radius = 10 }`
mod.brew_info_style = {
   textFont = "Courier New",
   textSize = 14,
   radius = 10
}

--- BrewInfo.select_text_if_needed
--- Variable
--- If `true`, and no text is currently selected in the terminal, issue a double-click to select the text below the cursor, and use that as the input to `brew info`. See also `BrewInfo.select_text_modifiers`. Defaults to `true`.
mod.select_text_if_needed = true

--- BrewInfo.select_text_modifiers
--- Variable
--- Table containing the modifiers to be used together with a double-click when `BrewInfo.select_text_if_needed` is true. Defaults to `{cmd = true, shift = true}` to issue a Cmd-Shift-double-click, which will select a continuous non-space string in Terminal and iTerm2.
mod.select_text_modifiers = {cmd = true, shift = true}

-- Internal function to issue a double click with given modifiers
function leftDoubleClick(modifiers)
   local pos=hs.mouse.getAbsolutePosition()
   hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftMouseDown, pos, modifiers)
      :setProperty(hs.eventtap.event.properties.mouseEventClickState, 2)
      :post()
   hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftMouseUp, pos, modifiers)
      :post()
end

-- Internal method to get the currently selected text
-- If `select_text_if_needed` is true and no text is selected, issue
-- a double-click to select, then use that
function mod:current_selection()
   local elem=hs.uielement.focusedElement()
   if elem then
      local sel = elem:selectedText()
      if (sel == nil or sel == "") and self.select_text_if_needed then
         -- Simulate a double click to select the text under the cursor
         leftDoubleClick(self.select_text_modifiers)
         sel = elem:selectedText()
      end
      return sel
   else
      return nil
   end
end

-- Internal method to show an alert in the configured style
function mod:show(text)
   hs.alert.show(text, self.brew_info_style, self.brew_info_delay_sec)
   return self
end

--- BrewInfo:showBrewInfo(pkg, subcommand)
--- Method
--- Displays an alert with the output of `brew <subcommand> info <pkg>`
---
--- Parameters:
---  * pkg - name of the package to query
---  * subcommand - brew subcommand to use for the `info` command. Defaults to an empty string, which results in "brew info <pkg>" being run. For example, if `subcommand` is "cask", the `brew cask info <pkg>` command will be used.
---
--- Returns:
---  * The Spoon object
function mod:showBrewInfo(pkg, subcommand)
   local info = "No package selected"
   local st = nil
   if pkg and pkg ~= "" then
      local cmd=string.format("/usr/local/bin/brew %s info %s", subcommand or "", pkg)
      info, st=hs.execute(cmd)
      if st == nil then
         info = "No information found about formula '" .. pkg .. "'!"
      end
   end
   self:show(info)
   return self
end

--- BrewInfo:showBrewInfoCurSel(subcommand)
--- Method
--- Display `brew <subcommand> info` using the selected text as the package name
---
--- Parameters:
---  * subcommand - brew subcommand to use for the `info` command. Defaults to an empty string, which results in "brew info" being run. For example, if `subcommand` is "cask", the `brew cask info` command will be used.
---
--- Returns:
---  * The Spoon object
function mod:showBrewInfoCurSel(subcommand)
   return self:showBrewInfo(self:current_selection(), subcommand)
end

--- BrewInfo:openBrewURL(pkg, subcommand)
--- Method
--- Opens the homepage for package `pkg`, as obtained from the `homepage` field in `brew <subcommand> cat <pkg>`
---
--- Parameters:
---  * pkg - name of the package to query
---  * subcommand - brew subcommand to use for the `cat` command. Defaults to an empty string, which results in "brew cat <pkg>" being run. For example, if `subcommand` is "cask", the `brew cask cat <pkg>` command will be used.
---
--- Returns:
---  * The Spoon object
function mod:openBrewURL(pkg, subcommand)
   local msg = "No package selected"
   if pkg and pkg ~= "" then
      local j, st, t, rc=hs.execute(string.format("/usr/local/bin/brew %s cat %s",(subcommand or ""), pkg ))
      if st ~= nil then
         local url=string.match(j, "\n%s*homepage%s+['\"](.-)['\"]%s*\n")
         if url and url ~= "" then
            hs.urlevent.openURLWithBundle(url, hs.urlevent.getDefaultHandler("http"))
            return self
         end
      end
      msg = "An error occurred obtaining information about '" .. pkg .. "'"
   end
   self:show(msg)
   return self
end

--- BrewInfo:openBrewURLCurSel(subcommand)
--- Method
--- Opens the homepage for the currently-selected package, as obtained from the `homepage` field in `brew <subcommand> cat <pkg>`
---
--- Parameters:
---  * subcommand - brew subcommand to use for the `cat` command. Defaults to an empty string, which results in "brew cat <pkg>" being run. For example, if `subcommand` is "cask", the `brew cask cat <pkg>` command will be used.
---
--- Returns:
---  * The Spoon object
function mod:openBrewURLCurSel(subcommand)
   return self:openBrewURL(self:current_selection(), subcommand)
end

--- BrewInfo:bindHotkeys(mapping)
--- Method
--- Binds hotkeys for BrewInfo
---
--- Parameters:
---  * mapping - A table containing hotkey modifier/key details for the following items:
---   * show_brew_info - Show output of `brew info` using the selected text as package name
---   * open_brew_url - Open the homepage of the formula whose name is currently selected
---   * show_brew_cask_info - Show output of `brew cask info` using the selected text as package name
---   * open_brew_cask_url - Open the homepage of the Cask whose name is currently selected
function mod:bindHotkeys(mapping)
   local def = {
      show_brew_info = function() self:showBrewInfoCurSel() end,
      open_brew_url = function() self:openBrewURLCurSel() end,
   }
   for action, key in pairs(mapping) do
      local subcommand_show = action:match("show_brew_(.*)_info")
      if subcommand_show and subcommand_show ~= "" then
         def[action] = function() self:showBrewInfoCurSel(subcommand_show) end
      end

      local subcommand_open = action:match("open_brew_(.*)_url")
      if subcommand_open and subcommand_open ~= "" then
         def[action] = function() self:openBrewURLCurSel(subcommand_open) end
      end
   end
   hs.spoons.bindHotkeysToSpec(def, mapping)
end

return mod
