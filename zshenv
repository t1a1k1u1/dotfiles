export PLENV_ROOT=~/.plenv
export PATH=$PLENV_ROOT/shims:$PLENV_ROOT/bin:$PATH

export PYENV_ROOT=~/.pyenv
export PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

powerline-daemon -q
. ~/.local/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh

