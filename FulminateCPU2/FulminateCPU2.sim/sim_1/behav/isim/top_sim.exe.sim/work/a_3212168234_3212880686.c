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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/src/offsetMux.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3212168234_3212880686_p_0(char *t0)
{
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = (15 - 15);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    if (-1 == 1)
        goto LAB5;

LAB6:    t10 = 16;

LAB7:    t11 = (t10 - 16);
    t12 = (t11 * 1);
    t13 = (1U * t12);
    t14 = (t2 + t13);
    t15 = (16 - 31);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    memset(t14, t9, t17);
    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 16;
    t24 = (t23 + 4U);
    *((int *)t24) = 31;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (31 - 16);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t0 + 10544U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t1, t22, (char)97, t19, t24, (char)101);
    t26 = (16U + 16U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB8;

LAB9:    t28 = (t0 + 6312);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 32U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t33 = (t0 + 6152);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t10 = 31;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t26, 0);
    goto LAB9;

}

static void work_a_3212168234_3212880686_p_1(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 10560U);
    t7 = (t0 + 10544U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (16U + 16U);
    t9 = (32U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 6376);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 32U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 6168);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t8, 0);
    goto LAB6;

}

static void work_a_3212168234_3212880686_p_2(char *t0)
{
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = (15 - 15);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    if (-1 == 1)
        goto LAB5;

LAB6:    t10 = 16;

LAB7:    t11 = (t10 - 16);
    t12 = (t11 * 1);
    t13 = (1U * t12);
    t14 = (t2 + t13);
    t15 = (16 - 31);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    memset(t14, t9, t17);
    t18 = (t0 + 1352U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 16;
    t24 = (t23 + 4U);
    *((int *)t24) = 31;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (31 - 16);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t0 + 10576U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t1, t22, (char)97, t19, t24, (char)101);
    t26 = (16U + 16U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB8;

LAB9:    t28 = (t0 + 6440);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 32U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t33 = (t0 + 6184);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t10 = 31;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t26, 0);
    goto LAB9;

}

static void work_a_3212168234_3212880686_p_3(char *t0)
{
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = xsi_get_transient_memory(28U);
    memset(t1, 0, 28U);
    t2 = t1;
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = (3 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    if (-1 == 1)
        goto LAB5;

LAB6:    t10 = 4;

LAB7:    t11 = (t10 - 4);
    t12 = (t11 * 1);
    t13 = (1U * t12);
    t14 = (t2 + t13);
    t15 = (4 - 31);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    memset(t14, t9, t17);
    t18 = (t0 + 1512U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 4;
    t24 = (t23 + 4U);
    *((int *)t24) = 31;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (31 - 4);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t0 + 10592U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t1, t22, (char)97, t19, t24, (char)101);
    t26 = (28U + 4U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB8;

LAB9:    t28 = (t0 + 6504);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 32U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t33 = (t0 + 6200);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t10 = 31;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t26, 0);
    goto LAB9;

}

static void work_a_3212168234_3212880686_p_4(char *t0)
{
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = xsi_get_transient_memory(25U);
    memset(t1, 0, 25U);
    t2 = t1;
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = (6 - 6);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    if (-1 == 1)
        goto LAB5;

LAB6:    t10 = 7;

LAB7:    t11 = (t10 - 7);
    t12 = (t11 * 1);
    t13 = (1U * t12);
    t14 = (t2 + t13);
    t15 = (7 - 31);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    memset(t14, t9, t17);
    t18 = (t0 + 1672U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 7;
    t24 = (t23 + 4U);
    *((int *)t24) = 31;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (31 - 7);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t0 + 10608U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t1, t22, (char)97, t19, t24, (char)101);
    t26 = (25U + 7U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB8;

LAB9:    t28 = (t0 + 6568);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 32U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t33 = (t0 + 6216);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t10 = 31;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t26, 0);
    goto LAB9;

}

static void work_a_3212168234_3212880686_p_5(char *t0)
{
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = xsi_get_transient_memory(23U);
    memset(t1, 0, 23U);
    t2 = t1;
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = (8 - 8);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    if (-1 == 1)
        goto LAB5;

LAB6:    t10 = 9;

LAB7:    t11 = (t10 - 9);
    t12 = (t11 * 1);
    t13 = (1U * t12);
    t14 = (t2 + t13);
    t15 = (9 - 31);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    memset(t14, t9, t17);
    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t21 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 9;
    t24 = (t23 + 4U);
    *((int *)t24) = 31;
    t24 = (t23 + 8U);
    *((int *)t24) = 1;
    t25 = (31 - 9);
    t26 = (t25 * 1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t0 + 10624U);
    t18 = xsi_base_array_concat(t18, t20, t21, (char)97, t1, t22, (char)97, t19, t24, (char)101);
    t26 = (23U + 9U);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB8;

LAB9:    t28 = (t0 + 6632);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t18, 32U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t33 = (t0 + 6232);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t10 = 31;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t26, 0);
    goto LAB9;

}


extern void work_a_3212168234_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3212168234_3212880686_p_0,(void *)work_a_3212168234_3212880686_p_1,(void *)work_a_3212168234_3212880686_p_2,(void *)work_a_3212168234_3212880686_p_3,(void *)work_a_3212168234_3212880686_p_4,(void *)work_a_3212168234_3212880686_p_5};
	xsi_register_didat("work_a_3212168234_3212880686", "isim/top_sim.exe.sim/work/a_3212168234_3212880686.didat");
	xsi_register_executes(pe);
}
