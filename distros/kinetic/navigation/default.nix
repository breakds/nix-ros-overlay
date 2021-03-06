
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, carrot-planner, catkin, clear-costmap-recovery, costmap-2d, dwa-local-planner, fake-localization, global-planner, map-server, move-base, move-base-msgs, move-slow-and-clear, nav-core, navfn, robot-pose-ekf, rotate-recovery, voxel-grid }:
buildRosPackage {
  pname = "ros-kinetic-navigation";
  version = "1.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.8-1.tar.gz";
    name = "1.14.8-1.tar.gz";
    sha256 = "d43703ad272f607890de8b95d17aad4707d3150704554b87758de200581641a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl base-local-planner carrot-planner clear-costmap-recovery costmap-2d dwa-local-planner fake-localization global-planner map-server move-base move-base-msgs move-slow-and-clear nav-core navfn robot-pose-ekf rotate-recovery voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
