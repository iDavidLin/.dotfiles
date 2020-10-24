# _general
alias _='sudo'
alias kar="/Applications/Karabiner.app/Contents/Library/bin/karabiner"
alias le='less -r'
alias eop='echo $PATH'
alias eo='echo'
alias es='elasticsearch'
alias mc='md-to-alfred'
alias s='subl'
alias ss='subl .'
alias alf='alfred'
alias ta='touch readme.md'
alias d='cd'
alias sd='sudo'
alias lg='ls | grep'
alias gj='open `git config remote.origin.url`'
alias so='source'
alias ka='echo'
alias rl='curl'
alias sudo='sudo '
alias m='mkdir'
alias jj='killall tmux'
alias loc='count_number_of_lines'
# alias aw='k -h' TODO: ?
alias c='ccat'
alias t='touch'
alias zo='open'
alias ff='open .'
alias ki='kill'
alias q='exit'
alias e='nvim'
alias screen='screenfetch'
alias ad='open .'
alias mx='chmod +x'
alias rr='rm -rf'
# alias a='ls -FG'
alias v='mv'
alias cls='clear'

# _dev

# _general
alias react='create-react-app'


# _flask
alias fr='flask run'

# _python
alias p='python3'
alias p2='python'
alias pi='pip install'
alias rv='virtualenv -p /usr/local/bin/python3'

# _alfred
alias wf='alfred build'
alias wfl='alfred link'
alias wfa='alfred pack -o ~/Desktop'

# _docker
alias k='kubectl'
alias kc='docker-compose'
alias kcs='docker-compose ps'
alias kl='docker logs'
alias klt='docker logs --tail 100'
alias ks='docker ps'
alias ksq='docker ps -q'
alias kk='docker kill'

# _node
alias nd='node'
alias ndi='node install'
alias n.='node .'

# _yarn
alias i='yarn'
alias il='yarn list'
alias ii='yarn init'
alias ia='yarn add'
alias ir='yarn run'
alias iw='yarn remove'
alias ig='yarn global add'
alias is='yarn start'

# _heroku
alias he='heroku'

# _pip
# TODO:

# _npm - depracated
alias np='npm'
alias ni='npm install'
alias ns='npm start'
alias nls='npm ls'
alias nu='npm update'
alias nt='npm init'
alias nig='npm install -g'
alias nb='npm run build'
alias nr='npm run'

alias cwd='pwd | pbcopy'

# _delete things
alias rrpdf='rm -rf *.pdf'

# _source things
alias sz='exec zsh'

# _ls
alias la="ls -aF"
alias ld="ls -ld"
alias lso='ls -At1 && echo "------Oldest--"'
alias lsn='ls -Art1 && echo "------Newest--"'
alias a.='ls -d .*'

# _hugo
alias us='hugo server -D'
alias ut='hugo server -w' # testing
alias u='hugo'

# _jekyll
alias js='bundle exec jekyll serve'
alias jb='jekyll build'

# _nginx
alias ngup='sudo nginx'
alias ngdown='sudo nginx -s stop'
alias ngre='sudo nginx -s stop && sudo nginx'
alias nglog='tail -f /usr/local/var/log/nginx/access.log' # TODO: maybe wrong location
alias ngerr='tail -f /usr/local/var/log/nginx/error.log'


# _utility
alias net="ping ya.ru | grep -E --only-match --color=never '[0-9\.]+ ms'"                # check connection
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias ba="bash"

# _brew
alias b='brew'
alias bf='brew info'
alias bci='brew cask install'
alias bt='brew audit --strict'
alias bl='brew list'
alias bs='brew search'
alias bi='brew install'
alias bu='brew update'
alias bdoc='brew doctor'
alias bcl='brew cask list'
alias bui='brew uninstall'
alias bw='brew update  && brew upgrade && brew cleanup'

# _brew service
alias bss='brew services start'
alias bsl='brew services list'
alias bst='brew services stop'

# _directory listings
alias l.='ls -d .*'

# _easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


# _top
alias cpu='top -o cpu'   # cpu
alias mem='top -o rsize' # memory

# _macos
alias bb='pbcopy'

# _text editors
#alias cr='open -a CodeRunner'
#alias xx='open -a Xcode'
#alias x.='open -a Xcode .'
#alias ae='open -a MacDown readme.md'
alias ae='subl readme.md'
alias wt='open -a Atom'
alias we='code'
alias ww='code .'
# alias ar="open -a Marked\ 2"
alias zr='open -a Preview'

# _web
alias l="open -a Google\ Chrome"

# _other
alias pdf='open -a PDF\ Expert'
alias love="/Applications/love.app/Contents/MacOS/love"

# _vim jumps
# _main
alias ee='nvim .'                 # current dir
alias ei='nvim index.js'
alias egi='nvim .gitignore'
alias ej='nvim package.json'


# _cd places
# _projects


# _documents


# _code
alias dsh='cd ~/.ssh'

# _xcode



# _macos
alias de='cd ~/Desktop'
alias dq='cd ~/Downloads'

# _config
alias d..='cd ~/.config'
alias df='cd ~/.dotfiles'
alias dsk='cd ~/Library/Application\ Support/Karabiner'


# Java
# alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
# alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
# alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
# alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
# alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
# alias j7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`; java -version"
