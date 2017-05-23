docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       --net=host \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v /home/user/.Xauthority:/home/user/.Xauthority \
       -v /home/user/triplea:/home/user/triplea \
       infrastructurejames/aaax:v1 "$@"



# considered -v /home/user/triplea:/home/user/triplea \
# but permission issues unresolved

# will need to consider method to get userid provided on various systems
# possibly with different directory names


