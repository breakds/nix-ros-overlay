
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, sensor-msgs, catkin, roscpp, nav-msgs, mrpt1, message-generation, visualization-msgs, message-runtime, std-msgs, mrpt-bridge, tf }:
buildRosPackage {
  pname = "ros-kinetic-mvsim";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ual-arm-ros-pkg-release/mvsim-release/archive/release/kinetic/mvsim/0.2.1-0.tar.gz;
    sha256 = "ba854c06a37cc8b5c4eb8d83b7695f99e859bc62c337a4f4f3a0a28d7dfe8203";
  };

  buildInputs = [ sensor-msgs roscpp nav-msgs message-generation message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp nav-msgs message-generation message-runtime mrpt1 dynamic-reconfigure std-msgs visualization-msgs mrpt-bridge tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the &quot;multivehicle simulator&quot; framework.'';
    #license = lib.licenses.BSD;
  };
}
