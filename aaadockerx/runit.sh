docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       --net=host \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v /home/user/.Xauthority:/home/user/.Xauthority \
       infrastructurejames/aaax:v1 "$@"



# considered -v /home/user/triplea:/home/user/triplea \
# but permission issues unresolved
