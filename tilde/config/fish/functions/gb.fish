# better git branch view
# inspired by destroy all software
function gb
	set -l PREFIX "%(HEAD)"
	set -l REF "%(color:red)%(color:bold)%(refname:short)%(color:reset)"
	set -l HASH "%(color:yellow)%(objectname:short)%(color:reset)"
	set -l DATE "%(color:green)(%(committerdate:relative))%(color:reset)"
	set -l AUTHOR "%(color:blue)%(color:bold)<%(authorname)>%(color:reset)"
	set -l CONTENTS "%(contents:subject)"

  # { as separator, because it is rare
	set -l FORMAT "$PREFIX{$REF{$HASH{$DATE{$AUTHOR{$CONTENTS"

	git branch -v --color=always --format="$FORMAT" $argv |
  column -t -s '{'
end
