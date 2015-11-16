alias_function() {
  eval "${1}() $(declare -f ${2} | sed 1d)"
}

alias_function orig_command_not_found_handle command_not_found_handle

command_not_found_handle() {
  command=$1
  shift
  args=( "$@" )

  coluna=`curl -s -L https://raw.githubusercontent.com/alesaudate/commands/master/commands | grep $command"[[:space:]]" | awk '{print $2}'`
  if [ ! -z "$coluna" ]; then
   folder=`pwd`
   #curl -s $coluna | bash -s "$folder" $command ${args[@]}
   wget -q $coluna -O command.bash
   chmod +x command.bash
   ./command.bash "$command" "${args[@]}"
   rm command.bash
  else
   orig_command_not_found_handle "$command" "${args[@]}"
  fi


}
