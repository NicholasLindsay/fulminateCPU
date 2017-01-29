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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0832606739_3212880686_init();
    work_a_0266662733_3212880686_init();
    work_a_2426618689_3212880686_init();
    work_a_2041234665_0318166943_init();
    work_a_0006837526_0318166943_init();
    work_a_3673650178_3212880686_init();
    work_a_3787699801_3212880686_init();
    work_a_3212168234_3212880686_init();
    work_a_1170026011_3212880686_init();
    work_a_2129260682_1181938964_init();
    work_a_1226109857_0318166943_init();
    work_a_1563065183_0318166943_init();
    work_a_2935715806_0318166943_init();
    work_a_2831118893_1181938964_init();
    work_a_0533214936_3212880686_init();
    work_a_2013115810_3212880686_init();
    work_a_1335952598_3212880686_init();
    work_a_2668991232_3212880686_init();


    xsi_register_tops("work_a_2668991232_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
