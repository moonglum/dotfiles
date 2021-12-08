function redis
	argparse "h/help" -- $argv
	or return

	if set -q _flag_help
		echo "Run a temporary Redis instance via Docker"
		echo " -h/--help Show this message"
		echo " -n/--name Set the name of the conntainer (default: redis)"
		return
	end

	# name of the docker container
	set -q _flag_name
	or set -l _flag_name postgres

	echo "Connection String for Redis:"
	echo "redis://localhost:6379"

	docker run\
		 --name $_flag_name\
		 -p 6379:6379\
		 --rm\
		 redis
end
