
#include <drone.h>
#include <convert.h>
#include <callback.h>

// main function
int main(int argc, char **argv) {
    ros::init(argc, argv, "dronepoli_controller");
    ros::NodeHandle nh;

    ros::ServiceClient arming_client = nh.serviceClient < mavros_msgs::CommandBool > ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient < mavros_msgs::SetMode > ("mavros/set_mode");
    ros::Subscriber state_sub = nh.subscribe < mavros_msgs::State > ("mavros/state", 10, state_cb);
    ros::Subscriber global_pos_sub = nh.subscribe < sensor_msgs::NavSatFix > ("mavros/global_position/global", 1, globalPosition_cb);
    ros::Publisher goal_pos_pub = nh.advertise < geographic_msgs::GeoPoseStamped > ("mavros/setpoint_position/global", 10);
    // ros::Publisher goal_pos_pub = nh.advertise < mavros_msgs::GlobalPositionTarget > ("mavros/setpoint_position/global", 10);

    ros::Rate rate(10);

    // wait for fcu connection
    while (ros::ok() && !current_state.connected) {
        ROS_INFO_ONCE("Waiting for FCU connection...");
        ros::spinOnce();
        rate.sleep();
    }
    ROS_INFO("FCU connected");

    // wait for position information
    while (ros::ok() && !global_position_received) {
        ROS_INFO_ONCE("Waiting for GPS signal...");
        ros::spinOnce();
        rate.sleep();
    }
    ROS_INFO("GPS position received");

    // set target position
    geographic_msgs::GeoPoseStamped goal_position;
    goal_position.header.stamp = ros::Time::now();
    goal_position.pose.position.latitude = global_position.pose.position.latitude;
    goal_position.pose.position.longitude = global_position.pose.position.longitude;
    goal_position.pose.position.altitude = global_position.pose.position.altitude;

    // send a few setpoints before starting
    for (int i=0; i<20; ++i) {
        goal_position.header.stamp = ros::Time::now();
        goal_pos_pub.publish(goal_position);
        ros::spinOnce();
        rate.sleep();
    }

    // arm
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
    if (arming_client.call(arm_cmd) && arm_cmd.response.success) {
        ROS_INFO("Vehicle armed");
    } else {
        ROS_ERROR("Arming failed");
    }

     // set mode
    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.base_mode = 0;
    offb_set_mode.request.custom_mode = "OFFBOARD";
    if (set_mode_client.call(offb_set_mode) && offb_set_mode.response.mode_sent) {
        ROS_INFO("OFFBOARD enabled");
    } else {
        ROS_ERROR("Failed to set OFFBOARD");
    }

    
    // take off to 3m above ground
    goal_position.pose.position.altitude = goal_position.pose.position.altitude + 3.0;
    while (ros::ok()) {
        if(abs(goal_position.pose.position.altitude-global_position.pose.position.altitude)<0.5){
        goal_position.pose.position.latitude = 36.14424294;
        goal_position.pose.position.longitude = 128.39389622;
        }

        goal_position.header.stamp = ros::Time::now();
        goal_pos_pub.publish(goal_position);
        ros::spinOnce();
        ROS_INFO_THROTTLE(1, "Latitude : %.2f\t-> %.2f", global_position.pose.position.latitude, goal_position.pose.position.latitude);
        ROS_INFO_THROTTLE(1, "Longitude: %.2f\t-> %.2f", global_position.pose.position.longitude, goal_position.pose.position.longitude);
        ROS_INFO_THROTTLE(1, "Altitude : %.2f\t-> %.2f", global_position.pose.position.altitude, goal_position.pose.position.altitude);

        rate.sleep();

    }

    return 0;
}