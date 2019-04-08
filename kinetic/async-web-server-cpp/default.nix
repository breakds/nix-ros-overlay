
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pythonPackages, rostest, rospy, openssl, roslib }:
buildRosPackage {
  pname = "ros-kinetic-async-web-server-cpp";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/gt-rail-release/async_web_server_cpp-release/archive/release/kinetic/async_web_server_cpp/0.0.3-0.tar.gz;
    sha256 = "32d6fc632c8c80656899d314fae6ca57e3db01312e82b3735c9ee50bb3f996e7";
  };

  buildInputs = [ openssl boost ];
  checkInputs = [ rostest roslib rospy ];
  propagatedBuildInputs = [ openssl boost pythonPackages.websocket_client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Asynchronous Web/WebSocket Server in C++'';
    #license = lib.licenses.BSD;
  };
}