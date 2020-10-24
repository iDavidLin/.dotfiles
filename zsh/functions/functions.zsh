# _tester func
function gc() {
    git commit -m "$@"
}

# _tester func
function gpr() {
    git pull -r
}

# create a file and any intermediary directories if necessary
function td() {
  mkdir -p "$(dirname "$1")/" && touch "$1"
}

# Move files to Trash
function re(){
  mv "$@" ~/.Trash
}

# finds recursively number of files in dir given
function findfiles() {
    arg="$1"
    find $arg -type f | wc -l
}

function gc() {
    arg="$*"
    git commit -m "$arg"
}

# run md-to-alfred on each md file in current dir
function mc.() {
  for entry in ./*.md
 do
   md-to-alfred json $entry
  done
}

# _git
igit() {
  git rev-parse HEAD > /dev/null 2>&1
}

function gll(){
    git clone "$(pbpaste)"
    # TODO: cd into cloned project
}


# taken folder as input, prefix it with a.
function va() {
    mv $1 a.\ $1
}

# remove prefixes from folder
rk() { [[ -z "$1" ]] && return; mv "$1" "${1##*. }"};


# show current Finder directory.
function finder {
  osascript 2>/dev/null <<EOF
    tell application "Finder"
      return POSIX path of (target of window 1 as alias)
    end tell
EOF
}

function each() {
  for dir in *; do
    # echo "${dir}:"
    cd $dir
    $@
    cd ..
  done
}

function fn() { ls **/*$1* }

function fnd() { ls **/*$1*(/) }

function download(){
curl -O "$1"
}

function highlight(){
  highlight -O rtf $1 --font-size 25 --style solarized-dark -W -J 50 -j 3 --src-lang $2 | pbcopy
}

cw() { printf %s "$PWD" | pbcopy; }

function md {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# change to a directory and list its contents
function ad {
  builtin cd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

function fex {
  find . -type f -iname "*${1:-}*" -exec "${2:-file}" '{}' \;
}

# Base64 encode
decode() {
  echo `echo $1 | base64 --decode`
}

# Base64 encode
encode() {
  echo -n $1 | openssl base64
}
