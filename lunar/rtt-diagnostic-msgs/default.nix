
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, rtt-roscomm, catkin, rtt-std-msgs }:
buildRosPackage {
  pname = "ros-lunar-rtt-diagnostic-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_diagnostic_msgs/2.9.2-1.tar.gz;
    sha256 = "c09b3b08be7995867b2333b0dcf4e4d2234bf88cf660d1f82fbb48ff2a8b5302";
  };

  buildInputs = [ diagnostic-msgs rtt-std-msgs rtt-roscomm ];
  propagatedBuildInputs = [ diagnostic-msgs rtt-std-msgs rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS diagnostic_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/diagnostic_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}