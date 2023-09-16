function gs
    git status
end

function gf
    git fetch
end

function gp
    git push
end

function gpl
    git pull
end

function gc
    git commit -m $argv
end

function ga
    git add $argv
end

function gaa
    git add .
end

function gcl
    git clone $argv
end

function gi
    git init
end
    
function gpup
    git push --set-upstream origin main
end
