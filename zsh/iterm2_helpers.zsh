# Usage:
#   Source this script from your Bash start-up script (eg. ~/.bashrc, ~/.bash_profile).
#
# Setting titles:
#   title something
#   title "more than 1 word"
#
# Setting tab colors:
#   tab_color 195  89  76
#   tab_color 219 154  88
#   tab_color 145 185 104
#   tab_color  92 155 204
#
# Setting pre-defined tab colors with titles:
#   tab_red "Rails Server"
#   tab_orange "Rails Console"
#   tab_blue "SQL Dev"
#   tab_green "Tests"

title_help0()
{
echo "ERROR: No argument provided."
echo "Usage:"
echo "  `basename -- $0` \"title\" to provide a new Terminal title."
}

title_help2()
{
echo "ERROR: Too many arguments provided."
echo "Usage:"
echo "  `basename -- $0` \"title\" to provide a new Terminal title."
}

function set_iterm_title() {
if [ $# -eq 0 ]
then
  title_help0;
elif [ $# -eq 1 ]
then
  echo -ne "\033]0;$1\007"
elif [ $# -gt 1 ]
then
  title_help2;
fi
}
alias title='set_iterm_title'

function titlepwd() {
  set_iterm_title `pwd`
}

# Snazzy Tabs
function tab_snaz_red()    { title "$1"; tab_color 255  92 87;  }
function tab_snaz_green()  { title "$1"; tab_color  92 247 142; }
function tab_snaz_yellow() { title "$1"; tab_color 243 249 157; }
function tab_snaz_blue()   { title "$1"; tab_color  87 199 255; }
function tab_snaz_dblue()  { title "$1"; tab_color  40  42 54;  }
function tab_snaz_lblue()  { title "$1"; tab_color 154 237 254; }
function tab_snaz_pink()   { title "$1"; tab_color 255 106 193; }


# Drac Tabs
function tab_drac_red()    { title "$1"; tab_color 255 110 103; }
function tab_drac_green()  { title "$1"; tab_color  92 246 141; }
function tab_drac_yellow() { title "$1"; tab_color 244 248 157; }
function tab_drac_purple() { title "$1"; tab_color 202 169 251; }
function tab_drac_lblue()  { title "$1"; tab_color 154 237 254; }
function tab_drac_dblue()  { title "$1"; tab_color  40  42 54;  }
function tab_drac_dblue2() { title "$1"; tab_color  33  34 44;  }
function tab_drac_dgray()  { title "$1"; tab_color  52  55 70;  }
function tab_drac_lgray()  { title "$1"; tab_color  98 111 136; }
function tab_drac_pink()   { title "$1"; tab_color 255 146 209; }


# Tron Tabs
function tab_tron_black { title "$1"; tab_color 20 25 31; }
function tab_tron_gray  { title "$1"; tab_color 27 35 44; }

# Overridden colors
function tab_red()    { title "$1"; tab_color 195  89  76; }
function tab_orange() { title "$1"; tab_color 219 154  88; }
function tab_green()  { title "$1"; tab_color  65 174  76; }
function tab_blue()   { title "$1"; tab_color  92 155 204; }
function tab_yellow() { title "$1"; tab_color 240 240   0; }

function tab_color() {
  echo -n -e "\033]6;1;bg;red;brightness;$1\a"
  echo -n -e "\033]6;1;bg;green;brightness;$2\a"
  echo -n -e "\033]6;1;bg;blue;brightness;$3\a"
}

function gpw() { pwgen -svcny $1 1 | pbcopy | echo "Password has been copied to clipboard"
}

function gpwb() { pwgen -svcn $1 1 | pbcopy | echo "Password has been copied to clipboard"
}

function gpwcol() { pwgen -svcny $1 5 }