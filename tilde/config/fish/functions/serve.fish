function serve
	argparse "h/help" "p/port=" -- $argv

	if set -q _flag_help
		echo "Serve the current directory via HTTP"
		echo " -h/--help Show this message"
		echo " -p/--port Port that should be used (default: 3000)"
		return
	end

	# name of the database and docker container
	set -q _flag_port
	or set -l _flag_port 3000

  ruby -run -e httpd . -p $_flag_port
end
