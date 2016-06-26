export PATH="/usr/local/sbin:$PATH"

alias magento='docker-compose exec phpfpm ./bin/magento'
alias composer='docker-compose exec phpfpm composer'
alias recreate='docker-compose stop && docker-compose rm -f && docker-compose up -d'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

