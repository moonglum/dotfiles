function postgres
	argparse "h/help" "n/name=" "u/username=" "p/password=" -- $argv
	or return

	if set -q _flag_help
		echo "Run a temporary PostgreSQL instance via Docker"
		echo " -h/--help Show this message"
		echo " -n/--name Set the name of the database and conntainer (default: postgres)"
		echo " -u/--username Set the username (default: postgres)"
		echo " -p/--password Set the password (default: mysecretpassword)"
		return
	end

	# name of the database and docker container
	set -q _flag_name
	or set -l _flag_name postgres

	# username of the user
	set -q _flag_username
	or set -l _flag_username postgres

	# password of the user
	set -q _flag_password
	or set -l _flag_password mysecretpassword

	echo "Connection String for PostgreSQL:"
	echo "postgresql://$_flag_username:$_flag_password@localhost:5432/$_flag_name"
	echo

	docker run\
		 --name $_flag_name\
		 -e POSTGRES_USER=$_flag_username\
		 -e POSTGRES_PASSWORD=$_flag_password\
		 -e POSTGRES_DB=$_flag_name\
		 -p 5432:5432\
		 --rm\
		 postgres
end
