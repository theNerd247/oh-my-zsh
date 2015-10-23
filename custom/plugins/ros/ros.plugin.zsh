#source the catkin_ws paths (see the ros documentation for the order of the path
#installation which matters)
rosPaths=("/opt/ros/$ROS_DISTRO")

for caws in $CATKIN_WS; do
	rosPaths+="$caws/devel"
done

for p in $rosPaths; do
	if [[ -e $p ]]; then
		source "$p/setup.zsh"
	else
		echo "Cannot find ROS path: $p"
	fi
done

alias rr="rosrun"
alias rl="roslaunch"
alias rt="rostopic"
alias rte="rostopic echo"
alias rtl="rostopic list"
alias rtp="rostopic pub"
alias rn="rosnode"
alias rn="rosnode list"
alias rcd="roscd"
alias rcm="catkin_make"
alias rb="rosbag"
alias rbp="rosbag play"
alias rbi="rosbag info"
alias tfv="rosrun tf view_frames && mv frames.pdf /tmp/frames.pdf"
alias tfm="rosrun tf tf_monitor"
alias tfe="rosrun tf tf_echo"
