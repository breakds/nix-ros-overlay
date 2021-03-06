
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mavlink";
  version = "2020.11.11-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/melodic/mavlink/2020.11.11-1.tar.gz";
    name = "2020.11.11-1.tar.gz";
    sha256 = "bada2901df30654db92fc55cfa785e157c9c50a37cb42d133fb380f8cb924cc2";
  };

  buildType = "cmake";
  buildInputs = [ python pythonPackages.future pythonPackages.lxml ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
