
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, python3Packages, pythonPackages, rclpy, std-msgs, webots-ros2-msgs }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2-core";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2_core/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "47d726e86751cc3cb6fa470540abf767bfe786d30c81d308502efd356fa97714";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.tkinter rclpy std-msgs webots-ros2-msgs ];

  meta = {
    description = ''Core interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
