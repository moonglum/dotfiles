# Jump
# Based upon the Oh-My-ZSH Plugins
#
# Easily jump around the file system by manually adding marks
# marks are stored as symbolic links in the directory $MARKPATH (default $HOME/.marks)
#
# jump FOO: jump to a mark named FOO
# mark FOO: create a mark named FOO
# unmark FOO: delete a mark
# marks: lists all marks

export MARKPATH=$HOME/.marks

jump() { cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1" }
_jump() { _files -W "$MARKPATH/$1" -/; }
compdef _jump jump

mark() { mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1" }

unmark() { rm -i "$MARKPATH/$1" }

marks() {
  for link in $MARKPATH/*(@); do
    local markname="$fg[cyan]${link:t}$reset_color"
    local markpath="$fg[blue]$(readlink $link)$reset_color"
    printf "%s\t" $markname
    printf "-> %s \t\n" $markpath
  done
}
