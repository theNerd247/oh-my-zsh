#source the catkin_ws paths (see the ros documentation for the order of the path
#installation which matters)
rosPaths=("/opt/ros/indigo/setup.zsh" "$HOME/src/org/gtri/SensingAndGrasping/catkin_ws/devel/setup.zsh")

# our custom aliases
alias rr="rosrun"
alias rl="roslaunch"
alias rt="rostopic"
alias rte="rostopic echo"
alias rtl="rostopic list"
alias rn="rosnode"
alias rn="rosnode list"
alias rcd="roscd"

# remove the flags if you're running python2 as default. This is mainly for
# ArchLinux users
alias ccm="catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so"

# needed exports
export PATH="$PATH:/opt/ros/indigo/bin"
export PYTHONPATH="/opt/ros/indigo/lib/python2.7/site-packages:$PYTHONPATH"
export PKG_CONFIG_PATH="/opt/ros/indigo/lib/pkgconfig:$PKG_CONFIG_PATH"

#source the needed files
for p in $rosPaths; do
	if [[ -e $p ]]; then
		source $p
	else
		echo "Cannot find ROS path: $p"
	fi
done
