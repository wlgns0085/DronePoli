#pragma once

#include <drone.h>

// callback functions
void globalPosition_cb(const sensor_msgs::NavSatFix::ConstPtr& msg) {
    global_position.pose.position.altitude = ellipsoid_height_to_amsl(msg->latitude, msg->longitude, msg->altitude);
    global_position.header.stamp = msg->header.stamp;
    global_position.pose.position.latitude = msg->latitude;
    global_position.pose.position.longitude = msg->longitude;
    global_position_received = true;
    ROS_INFO_ONCE("Got global position: [%.2f, %.2f, %.2f]", global_position.pose.position.latitude, global_position.pose.position.longitude, global_position.pose.position.altitude);
}

void state_cb(const mavros_msgs::State::ConstPtr& msg) {
    current_state = *msg;
}