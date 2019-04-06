
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, controller-manager-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-mode-adapter";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_mode_adapter/0.7.4-0.tar.gz;
    sha256 = "268dfcd264f0ac4c196a81e8a96eef3274b27a27ea7895a302a8fa137509a803";
  };

  propagatedBuildInputs = [ controller-manager-msgs boost roslint std-msgs roscpp ];
  nativeBuildInputs = [ controller-manager-msgs boost roslint std-msgs catkin roscpp ];

  meta = {
    description = ''The cob_control_mode_adapter package'';
    #license = lib.licenses.Apache 2.0;
  };
}
