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
static const char *ng0 = "C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU2/src/addr_reg_file.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2935715806_0318166943_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB16;

LAB17:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 7191);
    t8 = (32U != 32U);
    if (t8 == 1)
        goto LAB8;

LAB9:    t9 = (t0 + 3976);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 32U);
    xsi_driver_first_trans_delta(t9, 0U, 32U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 7223);
    t2 = (32U != 32U);
    if (t2 == 1)
        goto LAB10;

LAB11:    t4 = (t0 + 3976);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_delta(t4, 32U, 32U, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 7255);
    t2 = (32U != 32U);
    if (t2 == 1)
        goto LAB12;

LAB13:    t4 = (t0 + 3976);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_delta(t4, 64U, 32U, 0LL);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 7287);
    t2 = (32U != 32U);
    if (t2 == 1)
        goto LAB14;

LAB15:    t4 = (t0 + 3976);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_delta(t4, 96U, 32U, 0LL);
    goto LAB6;

LAB8:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t1 = (t0 + 6920U);
    t14 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t1);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    t17 = (32U * t16);
    t18 = (0U + t17);
    t9 = (t0 + 3976);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 32U);
    xsi_driver_first_trans_delta(t9, t18, 32U, 0LL);
    goto LAB6;

}

static void work_a_2935715806_0318166943_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 6952U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 3, 1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 4040);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);
    t1 = (t0 + 3896);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_2935715806_0318166943_init()
{
	static char *pe[] = {(void *)work_a_2935715806_0318166943_p_0,(void *)work_a_2935715806_0318166943_p_1};
	xsi_register_didat("work_a_2935715806_0318166943", "isim/top_sim.exe.sim/work/a_2935715806_0318166943.didat");
	xsi_register_executes(pe);
}
