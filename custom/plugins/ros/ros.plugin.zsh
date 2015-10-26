#source the catkin_ws paths (see the ros documentation for the order of the path
#installation which matters)
rosPaths=("/opt/ros/$ROS_DISTRO")

# remove the flags if you're running python2 as default. This is mainly for
# ArchLinux users
alias ccm="catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so"

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
