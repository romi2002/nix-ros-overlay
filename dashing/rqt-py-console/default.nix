
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, rclpy, rqt-gui, qt-gui, qt-gui-py-common, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-py-console";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_py_console-release/archive/release/dashing/rqt_py_console/1.0.0-1.tar.gz;
    sha256 = "a3ceb771e9cecd16841d02a48b3e48b1a564a3a67dd16e5b63dec2ddae9dd029";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py python-qt-binding rclpy rqt-gui qt-gui ament-index-python qt-gui-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}