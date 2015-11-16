xhost +
docker pull guywithnose/sqldeveloper
docker run -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --link db guywithnose/sqldeveloper
