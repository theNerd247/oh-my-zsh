#source the catkin_ws paths (see the ros documentation for the order of the path
#installation which matters)
rosPaths=("/opt/ros/indigo/setup.zsh" "$HOME/src/SensingAndGrasping/catkin_ws/devel/setup.zsh")

for p in $rosPaths; do
	if [[ -e $p ]]; then
		source $p
	else
		echo "Cannot find ROS path: $p"
	fi
done

alias rr="rosrun"
alias rl="roslaunch"
alias rt="rostopic"
alias rte="rostopic echo"
alias rtl="rostopic list"
alias rn="rosnode"
alias rn="rosnode list"
alias rcd="roscd"
