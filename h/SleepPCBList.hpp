//
// Created by os on 5/11/22.
//

#ifndef PROJECT_BASE_V1_0_SLEEPPCBLIST_HPP
#define PROJECT_BASE_V1_0_SLEEPPCBLIST_HPP

#include "PCB.hpp"

class SleepPCBList
{
    static PCB* sleepingPCBHead;
public:
    static void insertSleepingPCB();
    static void tryToWakePCBs();
};
#endif //PROJECT_BASE_V1_0_SLEEPPCBLIST_HPP
