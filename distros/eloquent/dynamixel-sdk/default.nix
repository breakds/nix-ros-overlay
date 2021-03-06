
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-dynamixel-sdk";
  version = "3.7.30-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/eloquent/dynamixel_sdk/3.7.30-1.tar.gz";
    name = "3.7.30-1.tar.gz";
    sha256 = "9fa335dc65ec470650e5a4f1e667fa8627ec8a4b1158f72aa1d1538de98659be";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package is wrapping version of ROBOTIS Dynamixel SDK for ROS 2. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.'';
    license = with lib.licenses; [ asl20 ];
  };
}
