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
static const char *ng0 = "C:/Users/Nicholas/Documents/Project Fulminate/FulminateSim/FulminateCPU/src/FulBusRAMinternal.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3472088553_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1589875879_0318166943_p_0(char *t0)
{
    char t10[16];
    char t14[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(29, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 11112U);
    t4 = (t0 + 27662);
    t6 = (t0 + 11080U);
    t7 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t3, t2, t4, t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    t18 = (t0 + 6424);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t1;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 6248);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 11112U);
    t11 = (t0 + 27694);
    t13 = (t0 + 11080U);
    t15 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, 1024, 32);
    t16 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t10, t11, t13, t15, t14);
    t17 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t9, t8, t16, t10);
    t1 = t17;
    goto LAB7;

}

static void work_a_1589875879_0318166943_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    if (t4 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 6488);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB3:    t2 = (t0 + 6264);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 6488);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_1589875879_0318166943_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(40, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (0 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t10);
    t8 = (t0 + 2472U);
    t12 = *((char **)t8);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t11, t13);
    t8 = (t0 + 6552);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_delta(t8, 1U, 1, 0LL);

LAB2:    t19 = (t0 + 6280);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1589875879_0318166943_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t10);
    t8 = (t0 + 2472U);
    t12 = *((char **)t8);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t11, t13);
    t8 = (t0 + 6616);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);

LAB2:    t19 = (t0 + 6296);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1589875879_0318166943_p_4(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t5 = (0 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t5 = (1 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t9 = (t2 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t13 = (15 - 7);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t11 = (t12 + t15);
    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t16 = (t0 + 11112U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t17, t16);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    t21 = (16U * t20);
    t22 = (0U + t21);
    t23 = (15 - 7);
    t24 = (1U * t23);
    t25 = (t22 + t24);
    t26 = (t0 + 6680);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t11, 8U);
    xsi_driver_first_trans_delta(t26, t25, 8U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1352U);
    t11 = *((char **)t4);
    t13 = (15 - 15);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t4 = (t11 + t15);
    t12 = (t0 + 1512U);
    t16 = *((char **)t12);
    t12 = (t0 + 11112U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t16, t12);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    t21 = (16U * t20);
    t22 = (0U + t21);
    t23 = (15 - 15);
    t24 = (1U * t23);
    t25 = (t22 + t24);
    t17 = (t0 + 6680);
    t26 = (t17 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t4, 8U);
    xsi_driver_first_trans_delta(t17, t25, 8U, 0LL);
    goto LAB9;

}

static void work_a_1589875879_0318166943_p_5(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 27728);
    t7 = (t0 + 6744);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    t3 = (t0 + 6328);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t16 = (t0 + 2312U);
    t17 = *((char **)t16);
    t16 = (t0 + 1512U);
    t18 = *((char **)t16);
    t16 = (t0 + 11112U);
    t19 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t18, t16);
    t20 = (t19 - 0);
    t21 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t19);
    t22 = (16U * t21);
    t23 = (0 + t22);
    t24 = (t17 + t23);
    t25 = (t0 + 6744);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t24, 16U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB3;

LAB5:    t3 = (t0 + 1832U);
    t10 = *((char **)t3);
    t3 = (t0 + 27726);
    t12 = 1;
    if (2U == 2U)
        goto LAB11;

LAB12:    t12 = 0;

LAB13:    t1 = (!(t12));
    goto LAB7;

LAB8:    t3 = (t0 + 1992U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    t2 = t9;
    goto LAB10;

LAB11:    t13 = 0;

LAB14:    if (t13 < 2U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t14 = (t10 + t13);
    t15 = (t3 + t13);
    if (*((unsigned char *)t14) != *((unsigned char *)t15))
        goto LAB12;

LAB16:    t13 = (t13 + 1);
    goto LAB14;

}

static void work_a_1589875879_0318166943_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 6808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 6344);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6808);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}

static void work_a_1589875879_0318166943_p_7(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 5736);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 27744);
    t5 = (16U != 16U);
    if (t5 == 1)
        goto LAB8;

LAB9:    t6 = (t0 + 6872);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_delta(t6, 0U, 16U, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 27760);
    t5 = (16U != 16U);
    if (t5 == 1)
        goto LAB10;

LAB11:    t6 = (t0 + 6872);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_delta(t6, 16U, 16U, 0LL);
    xsi_set_current_line(75, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB11;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_1589875879_0318166943_init()
{
	static char *pe[] = {(void *)work_a_1589875879_0318166943_p_0,(void *)work_a_1589875879_0318166943_p_1,(void *)work_a_1589875879_0318166943_p_2,(void *)work_a_1589875879_0318166943_p_3,(void *)work_a_1589875879_0318166943_p_4,(void *)work_a_1589875879_0318166943_p_5,(void *)work_a_1589875879_0318166943_p_6,(void *)work_a_1589875879_0318166943_p_7};
	xsi_register_didat("work_a_1589875879_0318166943", "isim/FulBusRAM_tb.exe.sim/work/a_1589875879_0318166943.didat");
	xsi_register_executes(pe);
}
