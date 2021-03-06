
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-collision-monitor, cob-grasp-generation, cob-lookat-action, cob-moveit-bringup, cob-moveit-interface, cob-obstacle-distance-moveit }:
buildRosPackage {
  pname = "ros-kinetic-cob-manipulation";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_manipulation/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "4678e88b4e17dfa887a4cd3cba290d4284f2e6d1262ef8d707cd8894bf416218";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-collision-monitor cob-grasp-generation cob-lookat-action cob-moveit-bringup cob-moveit-interface cob-obstacle-distance-moveit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
