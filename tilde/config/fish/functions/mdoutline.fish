function mdoutline
	argparse "h/help" -- $argv

	if set -q _flag_help
		echo "Get the outline of a markdown file"
		echo " -h/--help Show this message"
		return
	end

  awk '/^#+ /' $argv
end
