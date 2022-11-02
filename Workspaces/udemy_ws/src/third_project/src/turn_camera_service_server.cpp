#include "ros/ros.h"
#include "third_project/TurnCamera.h"

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <iostream>

std::string exe_dir, ws_dir, image_path;

const int AVAIABLE_ANGLES_SIZE = 5;

float avaiable_angles [AVAIABLE_ANGLES_SIZE] {-30, -15, 0, 15, 30};

bool getCameraImage(third_project::TurnCamera::Request &req,
                      third_project::TurnCamera::Response &res)
{
    float closest_num = avaiable_angles[0];
    float smallest_angle = req.deg_turn - avaiable_angles[0];
    float angle_diff;

    for (int idx = 0; idx < AVAIABLE_ANGLES_SIZE; idx++)
    {
        angle_diff = abs(req.deg_turn - avaiable_angles[idx]);

        if (angle_diff < smallest_angle)
        {
            smallest_angle = angle_diff;
            closest_num = avaiable_angles[idx];
        }
        
    }

    image_path = ws_dir + "src/third_project/images/" + std::to_string((int)closest_num) + ".png";

    std::cout << image_path << std::endl;

    cv::Mat image = cv::imread(image_path, 1);

    sensor_msgs::ImagePtr img_ptr = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();

    res.camera_image = *img_ptr;
    
    return true;
}

int main(int argc, char **argv)
{
    exe_dir = argv[0];

    std::string::size_type subs_index = exe_dir.find("devel");

    ws_dir = exe_dir.substr(0, subs_index);

    std::cout << exe_dir << std::endl;

    std::cout << ws_dir << std::endl;

    ros::init(argc, argv, "turn_camera_service_server_node");

    ros::NodeHandle node_handle;

    ros::ServiceServer service = node_handle.advertiseService("turn_camera", getCameraImage);

    ROS_INFO("Turn Camera Server Runnig... ");

    ros::spin();

    return 0;
}