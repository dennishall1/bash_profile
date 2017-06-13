
export NVM_DIR="/Users/dhall/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#nvm alias default 0.10.48


#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home

# Work around bug in browserify
ulimit -n 2560

# git autocompletion.
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
test -f ~/.git-completion.bash && . $_

# back-end and front-end scripts for current project
alias be="cd ~/projects/vans && ./gradlew :vans-ui:bootRun -x integTest --offline"
alias fe="cd ~/projects/vans/vans-ui && gulp"
alias css="gulp sass && gulp styles-copy"
alias js="gulp scripts-copy && gulp js"

alias use6="cd ~/projects/vans/vans-ui && mv node_modules node_modules-10 && mv node_modules-6 node_modules && nvm use 6"
alias use10="cd ~/projects/vans/vans-ui && mv node_modules node_modules-6 && mv node_modules-10 node_modules && nvm use 0.10"


export NODE_ENV=development
export PATH="/usr/local/opt/mozjpeg/bin:$PATH"


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
# export PS1="\$(parse_git_branch)\[\033[00m\] \w\[\033[32m\] $ "
