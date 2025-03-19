#!/usr/bin/env sh
#(C)2019-2022 Pim Snel - https://github.com/mipmip/RUNME.sh
ALLARGS=("$@");CMDS=();DESC=();NARGS=$#;ARG1=$1;make_command(){ CMDS+=($1);DESC+=("$2");};usage(){ printf "\nUsage: %s [command]\n\nCommands:\n" $0;line="              ";for((i=0;i<=$(( ${#CMDS[*]} -1));i++));do printf "  %s %s ${DESC[$i]}\n" ${CMDS[$i]} "${line:${#CMDS[$i]}}";done;echo;};runme(){ if test $NARGS -gt 0;then eval "$ARG1"||usage;else usage;fi;}

function checkdeps(){
  if ! command -v $1 &> /dev/null
  then
    MISSING_DEPS+=("$1")
    echo "<$1> could not be found"
    echo "  install this program first"
  fi
}

function deps_missing(){
  if [ ${#MISSING_DEPS[@]} -gt 0 ]
  then
    exit 1
  fi
}

function prelude(){
  # CHECK deps
  checkdeps "quarto"
  checkdeps "latex"
  deps_missing
}

prepare(){

 if test $NARGS -lt 2; then
   echo "Usage: ./RUNME.sh ${ARG1} [./markdown_file.md]"
   exit 1
 fi

 MARKDOWNFILE=${ALLARGS[1]}
}

##### PLACE YOUR COMMANDS BELOW #####

make_command "quickstart" "Quick start documentation howto render this book"
quickstart(){
  echo
  echo "To render a PDF of the book you need to ensure Quarto and Latex"
  echo "are installed."
  echo
  echo "Before the first render execute ./RUNME.sh install_deps"
  echo
  echo "To render the PDF once execute ./RUNME.sh render_pdf StartupCTOHandbook.md"
  echo "To start quarto as server execute quarto preview StartupCTOHandbook.md"
  echo
}

make_command "install_deps" "install or update exensions and other dependancies"
install_deps(){
  prelude
  echo "Installing extension: TexNative"
  quarto add --no-prompt wearetechnative/texnative
}

make_command "render_pdf" "auto render a markdown file on change"
render_pdf(){
  prelude
  prepare
  echo "Auto rendering. Press CTRL-C to quit."
  ls $MARKDOWNFILE | quarto render $MARKDOWNFILE
}

##### PLACE YOUR COMMANDS ABOVE #####

runme
