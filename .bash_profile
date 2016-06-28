export PATH="/usr/local/sbin:$PATH"

export COMPOSER_PROCESS_TIMEOUT=3000

alias recreate='docker-compose stop && docker-compose rm -f && docker-compose up -d'
alias logs='docker logs -f folder_setup_1'
alias docker-exec='docker-compose exec phpfpm'
alias magento='docker-exec ./bin/magento'
alias docker-composer='docker-exec composer'
alias docker-pull='docker-exec git pull origin master'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

