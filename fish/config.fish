source ~/dots/fish/aliases.fish
set fish_greeting

set -gx EDITOR nvim
set -xU MODULAR_HOME /home/jaf/.modular/
set PATH /home/jaf/.modular/pkg/packages.modular.com_mojo/bin $PATH
set PATH /home/jaf/.local/bin/ $PATH
set PATH /usr/local/go/bin/ $PATH

# neofetch
if status is-interactive
    # Commands to run in interactive sessions can go here
end

