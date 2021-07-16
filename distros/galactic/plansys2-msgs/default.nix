
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-msgs";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_msgs/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "4dd6168fab5c756d5dcd85fcf836b161f129d9c4a521708a00024a6ba295b439";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ action-msgs builtin-interfaces rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
