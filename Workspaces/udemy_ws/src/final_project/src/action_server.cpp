#include "actionlib/server/simple_action_server.h"
#include "final_project/Navigate2DAction.h"

typedef actionlib::SimpleActionServer<final_project::Navigate2DAction> NavServer;

float DIST_THRESHOLD = 0.1;
geometry_msgs::Point robot_current_position;

void navCallback(const final_project::Navigate2DGoal::ConstPtr& goal_point,
                 NavServer* nav_server)
{
    final_project::Navigate2DFeedback feedback_msg;
    final_project::Navigate2DResult result_msg;

    ros::Rate feedback_rate(2);

    double goal_recieved_time = ros::Time::now().toSec();
    ROS_INFO("Goal Recieved");

    float dist = std::sqrt(std::pow(robot_current_position.x - goal_point->point.x, 2) + std::pow(robot_current_position.y - goal_point->point.y, 2));

    while (dist > DIST_THRESHOLD)
    {
        dist = dist = std::sqrt(std::pow(robot_current_position.x - goal_point->point.x, 2) + std::pow(robot_current_position.y - goal_point->point.y, 2));

        feedback_msg.distance_to_point = dist;

        nav_server->publishFeedback(feedback_msg);

        feedback_rate.sleep();
    }

    double goal_reached_time = ros::Time::now().toSec();
    ROS_INFO("Goal Reached");

    double elapsed_time = goal_recieved_time - goal_reached_time;

    result_msg.elapsed_time = elapsed_time;

    nav_server->setSucceeded(result_msg);
    
}

void subscriberCallback(const geometry_msgs::Point::ConstPtr& msg)
{
    robot_current_position = *msg;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "navigate_2d_server_node");

    ros::NodeHandle node_handle;

    ros::Subscriber robot_position = node_handle.subscribe("robot_position", 10, subscriberCallback);

    NavServer server(node_handle, "navigate_2d", boost::bind(&navCallback, _1, &server), false);
    server.start();

    ros::spin();

    return 0;
}