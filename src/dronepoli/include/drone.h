#pragma once

#include <ros/ros.h>

#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>

#include <sensor_msgs/NavSatFix.h>

#include <geographic_msgs/GeoPoseStamped.h>
// #include <mavros_msgs/GlobalPositionTarget.h> -> GeoPoseStamped.h

// global variables
mavros_msgs::State current_state;
geographic_msgs::GeoPoseStamped global_position;
// sensor_msgs::NavSatFix global_position; -> GeoPoseStamped
bool global_position_received = false;

