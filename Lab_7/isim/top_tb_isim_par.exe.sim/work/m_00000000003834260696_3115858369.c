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
static const char *ng0 = "//ugradfs/joelchin/win/ELEC3500/Lab_7/top_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {550, 0};
static int ng4[] = {1700, 0};
static int ng5[] = {4000, 0};



static void Always_37_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, 976562000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1012);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1012);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_49_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);

LAB4:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2060);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2068);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 3356);
    *((int *)t8) = t7;

LAB10:    t9 = (t0 + 3356);
    if (*((int *)t9) > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB11:    xsi_set_current_line(64, ng0);

LAB13:    xsi_set_current_line(65, ng0);
    t10 = (t0 + 2076);
    *((int *)t10) = 1;
    t11 = (t0 + 1892);
    *((char **)t11) = t10;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    t2 = (t0 + 3356);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB10;

LAB15:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng2)));
    t8 = (t0 + 1196);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2084);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2092);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 3360);
    *((int *)t8) = t7;

LAB20:    t9 = (t0 + 3360);
    if (*((int *)t9) > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB21:    xsi_set_current_line(74, ng0);
    t10 = (t0 + 2100);
    *((int *)t10) = 1;
    t11 = (t0 + 1892);
    *((char **)t11) = t10;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    t2 = (t0 + 3360);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB20;

LAB24:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng2)));
    t8 = (t0 + 1196);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2108);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2116);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2124);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2132);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB32:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2140);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2148);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB35:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB36:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 3364);
    *((int *)t8) = t7;

LAB37:    t9 = (t0 + 3364);
    if (*((int *)t9) > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB38:    xsi_set_current_line(88, ng0);
    t10 = (t0 + 2156);
    *((int *)t10) = 1;
    t11 = (t0 + 1892);
    *((char **)t11) = t10;
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB40:    t2 = (t0 + 3364);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB37;

LAB41:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng2)));
    t8 = (t0 + 1104);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2164);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB42:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB43:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2172);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB44:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1764);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB45:    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}


extern void work_m_00000000003834260696_3115858369_init()
{
	static char *pe[] = {(void *)Always_37_0,(void *)Initial_49_1};
	xsi_register_didat("work_m_00000000003834260696_3115858369", "isim/top_tb_isim_par.exe.sim/work/m_00000000003834260696_3115858369.didat");
	xsi_register_executes(pe);
}
