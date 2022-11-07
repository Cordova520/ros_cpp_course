#include "actionlib/client/simple_action_client.h"
#include "final_project/Navigate2DAction.h"

typedef actionlib::SimpleActionClient<final_project::Navigate2DAction> NavClient;

bool feedback_cb_ready_flag = false;

void activeCallback()
{
    std::cout << "\nGoal Activated" << std::endl;
    feedback_cb_ready_flag = true;
}

void feedbackCallback(const final_project::Navigate2DFeedback::ConstPtr& feedback)
{
    if (feedback_cb_ready_flag)
    {
        std::cout << "\33[2K\r";
        std::cout << "Distance to goal: " << feedback->distance_to_point;
        std::cout.flush();
    }
}

void resultCallback(const actionlib::SimpleClientGoalState& state,
                    const final_project::Navigate2DResult::ConstPtr& result)
{
    std::cout << "\n\nFinished.\nTime Elapsed: " << result->elapsed_time << std::endl;
    feedback_cb_ready_flag = false;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "navigate_2d_client_node");

    NavClient client("navigate_2d", true);
    client.waitForServer();

    final_project::Navigate2DGoal goal;
    goal.point.z = 0;

    while (ros::ok())
    {
        std::cout << "\nEnter the X-Coordinate: ";
        std::cin >> goal.point.x;

        std::cout << "\nEnter the Y-Coordinate: ";
        std::cin >> goal.point.y;

        client.sendGoal(goal, &resultCallback, &activeCallback, &feedbackCallback);

        client.waitForResult();

    }

    return 0;
}
