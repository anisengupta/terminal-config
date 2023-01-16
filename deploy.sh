#!/bin/bash

PARAMS=""
while (( "$#" )); do
  case "$1" in
    -h|--help)
      echo $USAGE
      exit
      ;;
    --) # end argument parsing
      shift
      break
      ;;
    -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
    *) # preserve positional arguments
      PARAMS="$PARAMS $1"
      shift
      ;;
  esac
done
# set positional arguments in their proper place
eval set -- "$PARAMS"

echo "deploying on remote machine..."
echo "source $HOME/git/dotfiles/zsh/zshrc_remote.sh" > $HOME/.zshrc
echo "source $HOME/git/dotfiles/config/vimrc.vim" > $HOME/.vimrc
echo "source $HOME/git/dotfiles/config/tmux.conf" > $HOME/.tmux.conf
zsh



