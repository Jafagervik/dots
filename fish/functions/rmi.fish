alias rmi="rm -i"

# This is equivalent to entering the following function:
function rmi --wraps rm --description 'alias rmi=rm -i'
    rm -i $argv
end
