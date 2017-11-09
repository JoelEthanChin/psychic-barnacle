/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001083957454_3576570620_init();
    work_m_00000000002342717452_0147935835_init();
    work_m_00000000000118816202_2553562080_init();
    work_m_00000000001918520170_3823007873_init();
    work_m_00000000003834260696_3115858369_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003834260696_3115858369");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
