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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void Gate_29_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 1432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 772U);
    t3 = *((char **)t2);
    t2 = (t0 + 1672);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = (t3 + 4);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 1672);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t15 = (t0 + 1628);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}


extern void simprims_ver_m_00000000001255213976_2021654676_0888251856_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0888251856", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0888251856.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3915873365_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3915873365", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3915873365.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3457657184_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3457657184", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3457657184.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0327250149_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0327250149", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0327250149.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0587077798_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0587077798", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0587077798.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3029616719_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3029616719", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3029616719.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1657645906_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1657645906", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1657645906.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2527867831_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2527867831", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2527867831.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2941577663_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2941577663", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2941577663.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4105634200_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4105634200", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4105634200.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0460679846_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0460679846", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0460679846.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_4232256475_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_4232256475", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_4232256475.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2634046212_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2634046212", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2634046212.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2498475219_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2498475219", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2498475219.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2066341869_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2066341869", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2066341869.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3677605614_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3677605614", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3677605614.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1743148980_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1743148980", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1743148980.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1437787407_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1437787407", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1437787407.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0690083869_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0690083869", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0690083869.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_3127938609_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_3127938609", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_3127938609.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1083605633_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1083605633", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1083605633.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2797536872_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2797536872", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2797536872.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1232956758_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1232956758", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1232956758.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_1925328954_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_1925328954", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_1925328954.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2143853546_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2143853546", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2143853546.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_2844883191_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_2844883191", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_2844883191.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0788859481_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0788859481", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0788859481.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_00000000001255213976_2021654676_0134896529_init()
{
	static char *pe[] = {(void *)Gate_29_0};
	xsi_register_didat("simprims_ver_m_00000000001255213976_2021654676_0134896529", "isim/top_tb_isim_par.exe.sim/simprims_ver/m_00000000001255213976_2021654676_0134896529.didat");
	xsi_register_executes(pe);
}
