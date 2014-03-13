   if [ -f ~/.bashrc ]; then
       source ~/.bashrc
   fi

   # This command tells termical to add color
   export CLICOLOR=1
   export LSCOLORS=ExFxCxDxBxegedabagacad

   COLOR_BOLD="\[\e[1m\]"
   COLOR_DEFAULT="\[\e[0m\]"
   PS1="$COLOR_BOLD\u@\h \w \$ $COLOR_DEFAULT"

