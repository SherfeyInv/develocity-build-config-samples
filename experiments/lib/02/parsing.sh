#!/usr/bin/env bash

# Created by argbash-init v2.10.0
# ARG_OPTIONAL_SINGLE([branch],[b],[branch to checkout when cloning the repo before running the experiment])
# ARG_HELP([Assists in validating that a Gradle build is optimized for using the local build cache (while building in the same location).])
# ARG_OPTIONAL_SINGLE([settings],[s],[File to save/load settings to/from. When saving, the settings file is not overwritten if it already exists.],[${experiment_dir}/settings])
# ARG_OPTIONAL_SINGLE([task],[t],[Gradle task to invoke when running builds as part of the experiment])
# ARG_OPTIONAL_SINGLE([git-url],[u],[Git repository URL for the repository containing the project for the experiment])
# ARG_OPTIONAL_BOOLEAN([wizard],[],[controls whether or not the wizard is run],[off])
# ARGBASH_GO()
# needed because of Argbash --> m4_ignore([
### START OF CODE GENERATED BY Argbash v2.10.0 one line above ###
# Argbash is a bash code generator used to get arguments parsing right.
# Argbash is FREE SOFTWARE, see https://argbash.io for more info


die()
{
	local _ret="${2:-1}"
	test "${_PRINT_HELP:-no}" = yes && print_help >&2
	echo "$1" >&2
	exit "${_ret}"
}


begins_with_short_option()
{
	local first_option all_short_options='bhstu'
	first_option="${1:0:1}"
	test "$all_short_options" = "${all_short_options/$first_option/}" && return 1 || return 0
}

# THE DEFAULTS INITIALIZATION - OPTIONALS
_arg_branch=
_arg_settings="${experiment_dir}/settings"
_arg_task=
_arg_git_url=
_arg_wizard="off"


print_help()
{
	printf '%s\n' "Assists in validating that a Gradle build is optimized for using the local build cache (while building in the same location)."
	printf 'Usage: %s [-b|--branch <arg>] [-h|--help] [-s|--settings <arg>] [-t|--task <arg>] [-u|--git-url <arg>] [--(no-)wizard]\n' "$0"
	printf '\t%s\n' "-b, --branch: branch to checkout when cloning the repo before running the experiment (no default)"
	printf '\t%s\n' "-h, --help: Prints help"
	printf '\t%s\n' "-s, --settings: File to save/load settings to/from. When saving, the settings file is not overwritten if it already exists. (default: '${experiment_dir}/settings')"
	printf '\t%s\n' "-t, --task: Gradle task to invoke when running builds as part of the experiment (no default)"
	printf '\t%s\n' "-u, --git-url: Git repository URL for the repository containing the project for the experiment (no default)"
	printf '\t%s\n' "--wizard, --no-wizard: controls whether or not the wizard is run (off by default)"
}


parse_commandline()
{
	while test $# -gt 0
	do
		_key="$1"
		case "$_key" in
			-b|--branch)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_branch="$2"
				shift
				;;
			--branch=*)
				_arg_branch="${_key##--branch=}"
				;;
			-b*)
				_arg_branch="${_key##-b}"
				;;
			-h|--help)
				print_help
				exit 0
				;;
			-h*)
				print_help
				exit 0
				;;
			-s|--settings)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_settings="$2"
				shift
				;;
			--settings=*)
				_arg_settings="${_key##--settings=}"
				;;
			-s*)
				_arg_settings="${_key##-s}"
				;;
			-t|--task)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_task="$2"
				shift
				;;
			--task=*)
				_arg_task="${_key##--task=}"
				;;
			-t*)
				_arg_task="${_key##-t}"
				;;
			-u|--git-url)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_git_url="$2"
				shift
				;;
			--git-url=*)
				_arg_git_url="${_key##--git-url=}"
				;;
			-u*)
				_arg_git_url="${_key##-u}"
				;;
			--no-wizard|--wizard)
				_arg_wizard="on"
				test "${1:0:5}" = "--no-" && _arg_wizard="off"
				;;
			*)
				_PRINT_HELP=yes die "FATAL ERROR: Got an unexpected argument '$1'" 1
				;;
		esac
		shift
	done
}

parse_commandline "$@"

# OTHER STUFF GENERATED BY Argbash

### END OF CODE GENERATED BY Argbash (sortof) ### ])
