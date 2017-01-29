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
static const char *ng0 = "C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/FulminateCPU2.srcs/sources_1/new/LEDcontroller.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2013115810_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4448);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t13 = (1 - 1);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t3 + t16);
    t6 = *((unsigned char *)t1);
    t17 = (t6 == (unsigned char)3);
    if (t17 == 1)
        goto LAB14;

LAB15:    t5 = (unsigned char)0;

LAB16:    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = (unsigned char)0;

LAB13:    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 8018);
    t8 = (t0 + 4560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1352U);
    t9 = *((char **)t4);
    t22 = (15 - 7);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t4 = (t9 + t24);
    t10 = (t0 + 4560);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t25 = (t12 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t4, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB9;

LAB11:    t4 = (t0 + 1992U);
    t8 = *((char **)t4);
    t20 = *((unsigned char *)t8);
    t21 = (t20 == (unsigned char)3);
    t2 = t21;
    goto LAB13;

LAB14:    t4 = (t0 + 1672U);
    t7 = *((char **)t4);
    t18 = *((unsigned char *)t7);
    t19 = (t18 == (unsigned char)3);
    t5 = t19;
    goto LAB16;

}

static void work_a_2013115810_3212880686_p_1(char *t0)
{
    char t5[16];
    char t7[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 8026);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 7;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (7 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 7964U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t11 = (8U + 8U);
    t12 = (16U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 4624);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 16U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 4464);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t11, 0);
    goto LAB6;

}

static void work_a_2013115810_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4688);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4480);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2013115810_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2013115810_3212880686_p_0,(void *)work_a_2013115810_3212880686_p_1,(void *)work_a_2013115810_3212880686_p_2};
	xsi_register_didat("work_a_2013115810_3212880686", "isim/top_sim.exe.sim/work/a_2013115810_3212880686.didat");
	xsi_register_executes(pe);
}
