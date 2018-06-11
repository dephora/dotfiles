#!/bin/sh

dockutil --no-restart --remove all

dockutil --no-restart --add "/Applications/App Store.app"
dockutil --no-restart --add '' --type spacer --section apps --after 'App Store'

dockutil --no-restart --add "/Applications/Airmail Beta.app"
dockutil --no-restart --add "/Applications/Wunderlist.app"
dockutil --no-restart --add "/Applications/Notes.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/Paymo Widget.app"
dockutil --no-restart --add '' --type spacer --section apps --after Calendar

dockutil --no-restart --add "/Applications/Calibre.app"
dockutil --no-restart --add "/Applications/Skim.app"
dockutil --no-restart --add "/Applications/iBooks.app"
dockutil --no-restart --add "/Applications/Macdown.app"
dockutil --no-restart --add "/Applications/Pocket.app"
dockutil --no-restart --add "/Applications/Microsoft Onenote.app"
dockutil --no-restart --add "/Applications/Xmind.app"
dockutil --no-restart --add '' --type spacer --section apps --after Xmind

dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Google Chrome Canary.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Firefox.app"
dockutil --no-restart --add "/Applications/Opera.app"
dockutil --no-restart --add '' --type spacer --section apps --after Opera

dockutil --no-restart --add "/Applications/Sourcetree.app"
dockutil --no-restart --add "/Applications/Paw.app"
dockutil --no-restart --add "/Applications/Postico.app"
dockutil --no-restart --add "/Applications/Postgres.app"
dockutil --no-restart --add "/Applications/Charles.app"
# dockutil --no-restart --add "/Applications/DB Browser for SQLite.app"
dockutil --no-restart --add "/Applications/Dash.app"
dockutil --no-restart --add "/Applications/iTerm.app"
# dockutil --no-restart --add "/Applications/Hyper.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add '' --type spacer --section apps --after 'Visual Studio Code'

dockutil --no-restart --add "/Applications/Affinity Designer.app"
dockutil --no-restart --add "/Applications/Figma.app"
# dockutil --no-restart --add "/Applications/Sketch.app"
# dockutil --no-restart --add "/Applications/Sketchpacks.app"
dockutil --no-restart --add "/Applications/Lingo.app"
dockutil --no-restart --add "/Applications/Color Picker.app"
dockutil --no-restart --add '' --type spacer --section apps --after 'Color Picker'

# dockutil --no-restart --add "/Applications/Vox.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/Iina.app"
dockutil --no-restart --add '' --type spacer --section apps --after 'Iina'

dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Discord.app"
# dockutil --no-restart --add "/Applications/Whatsapp.app"

dockutil --no-restart --add '~/Downloads' --view grid --display folder --allhomes


killall Dock