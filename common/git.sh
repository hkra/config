#!/usr/bin/env sh

# Git aliases
git config --global alias.co checkout
git config --global alias.s status
git config --global alias.c cherry-pick
git config --global alias.rbc 'rebase --continue'
git config --global alias.rbs 'rebase --skip'
git config --global alias.unstage 'reset HEAD --'

# Editor
git config --global core.editor vim

# Identity
user=${USER_NAME:-$(id -un)}
git config --global user.name "$user"

if [[ -n "${USER_EMAIL}" ]]; then
  git config --global user.email $USER_EMAIL
fi

