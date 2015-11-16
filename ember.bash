docker pull $coluna
docker run -i -v $folder:/root $coluna ${command} ${args[@]}
