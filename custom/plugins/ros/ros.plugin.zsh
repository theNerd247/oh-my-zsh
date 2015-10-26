#source the catkin_ws paths (see the ros documentation for the order of the path
#installation which matters)
rosPaths=("/opt/ros/$ROS_DISTRO")

# remove the flags if you're running python2 as default. This is mainly for
# ArchLinux users
if [[ -n $(uname -a | grep "\-ARCH") ]]; then
	catkin_ops="-DPYTHON_EXECUTABLE=/usr/bin/python2"
	catkin_ops+=" -DPYTHON_INCLUDE_DIR=/usr/include/python2.7"
	catkin_ops+=" -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so"
fi

# needed exports
export PATH="$PATH:/opt/ros/$ROS_DISTRO/bin"
export PYTHONPATH="/opt/ros/$ROS_DISTRO/lib/python2.7/site-packages:$PYTHONPATH"
export PKG_CONFIG_PATH="/opt/ros/$ROS_DISTRO/lib/pkgconfig:$PKG_CONFIG_PATH"

for caws in $CATKIN_WS; do
	rosPaths+="$caws/devel"
done

for p in $rosPaths; do
	if [[ -e $p/setup.zsh ]]; then
		source "$p/setup.zsh"
	else
		echo "Cannot find ROS path: $p"
	fi
done

# our custom aliases
alias rr="rosrun"
alias rl="roslaunch"
alias rt="rostopic"
alias rte="rostopic echo"
alias rtl="rostopic list"
alias rtp="rostopic pub"
alias rn="rosnode"
alias rn="rosnode list"
alias rcd="roscd"
alias rcm="catkin_make $catkin_ops"
alias rb="rosbag"
alias rbp="rosbag play"
alias rbi="rosbag info"
alias tfv="rosrun tf view_frames && mv frames.pdf /tmp/frames.pdf"
alias tfm="rosrun tf tf_monitor"
alias tfe="rosrun tf tf_echo"
