
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, pythonPackages, rclpy, rosgraph-msgs, rviz2, sensor-msgs, std-msgs, trajectory-msgs, webots-ros2-core, webots-ros2-ur-e-description }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-universal-robot";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_universal_robot/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "ef439e350a94b416ce221dd2e0ab8a4615211d501a8c564412f0c3491d76be5b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs rclpy rosgraph-msgs rviz2 sensor-msgs std-msgs trajectory-msgs webots-ros2-core webots-ros2-ur-e-description ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
