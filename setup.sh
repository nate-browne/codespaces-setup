# set up git
git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type "cat-file -t"
git config --global alias.dump "cat-file -p"
git config --global commit.gpgsign true
alias merge='gh pr merge -sd'

function git_current_branch {
        local ref
        ref=$(__git_prompt_git symbolic-ref --quiet HEAD 2> /dev/null) 
        local ret=$? 
        if [[ $ret != 0 ]]
        then
                [[ $ret == 128 ]] && return
                ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null)  || return
        fi
        echo ${ref#refs/heads/}
}
alias ggpush="git push origin $(git_current_branch)"
alias ggpull="git pull origin $(git_current_branch)"
alias gcam="git commit -am"
