#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/shashank/ws_task3/src/vb_simulation_pkgs/gazebo_ros_pkgs/gazebo_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/shashank/ws_task3/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/shashank/ws_task3/install/lib/python2.7/dist-packages:/home/shashank/ws_task3/build/gazebo_ros/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/shashank/ws_task3/build/gazebo_ros" \
    "/usr/bin/python2" \
    "/home/shashank/ws_task3/src/vb_simulation_pkgs/gazebo_ros_pkgs/gazebo_ros/setup.py" \
     \
    build --build-base "/home/shashank/ws_task3/build/gazebo_ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/shashank/ws_task3/install" --install-scripts="/home/shashank/ws_task3/install/bin"
