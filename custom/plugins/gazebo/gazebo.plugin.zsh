source /usr/share/gazebo/setup.sh

for p in $CATKIN_WS; do
	for d in $(ls -F "$p/src" | grep "_gazebo"); do
		gp="$p/src/$d"
		GAZEBO_PROJECTS+=${gp%/}
	done
done

for p in $GAZEBO_PROJECTS; do
	export GAZEBO_MODEL_PATH="${GAZEBO_MODEL_PATH}$p/models"
	export GAZEBO_RESOURCE_PATH="${GAZEBO_RESOURCE_PATH}$p:$p/media"
done
