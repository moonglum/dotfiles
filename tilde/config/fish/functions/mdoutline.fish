function mdoutline
	argparse "h/help" "l/levels=" -- $argv

	# number of levels
	set -q _flag_levels
	or set -l _flag_levels 5

	if set -q _flag_help
		echo "Get the outline of a markdown file"
		echo " -h/--help Show this message"
		return
	end

  awk "/^#{1,$_flag_levels} /" $argv
end
