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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Xilinx workspace/MIPS_Github/Decode.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_3410769178_1035706684(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3977952979_1446275585_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 8136U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t10 = (t7 - 31);
    t22 = (t10 * -1);
    t23 = (32U * t22);
    t24 = (0U + t23);
    t6 = (t0 + 5336);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 32U);
    xsi_driver_first_trans_delta(t6, t24, 32U, 0LL);

LAB3:    t1 = (t0 + 5016);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 9443);
    t7 = xsi_mem_cmp(t1, t5, 3U);
    if (t7 == 1)
        goto LAB6;

LAB12:    t8 = (t0 + 9446);
    t10 = xsi_mem_cmp(t8, t5, 3U);
    if (t10 == 1)
        goto LAB7;

LAB13:    t11 = (t0 + 9449);
    t13 = xsi_mem_cmp(t11, t5, 3U);
    if (t13 == 1)
        goto LAB8;

LAB14:    t14 = (t0 + 9452);
    t16 = xsi_mem_cmp(t14, t5, 3U);
    if (t16 == 1)
        goto LAB9;

LAB15:    t17 = (t0 + 9455);
    t19 = xsi_mem_cmp(t17, t5, 3U);
    if (t19 == 1)
        goto LAB10;

LAB16:
LAB11:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 9484);
    t5 = (t0 + 5144);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 9489);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 9494);
    t5 = (t0 + 5272);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(33, ng0);
    t20 = (t0 + 1512U);
    t21 = *((char **)t20);
    t22 = (31 - 25);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t20 = (t21 + t24);
    t25 = (t0 + 5144);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t20, 5U);
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 9458);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 15);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5272);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB7:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 26);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5144);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 20);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 15);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5272);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 22);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5144);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 16);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 9463);
    t5 = (t0 + 5272);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 28);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5144);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 22);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 16);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5272);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB10:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 25);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5144);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 9479);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t22 = (31 - 15);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 5272);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB17:;
}

static void work_a_3977952979_1446275585_p_1(char *t0)
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
    char *t15;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 8280U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 31);
    t6 = (t5 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5400);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5032);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3977952979_1446275585_p_2(char *t0)
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
    char *t15;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 8280U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 31);
    t6 = (t5 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5464);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5048);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3977952979_1446275585_p_3(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 8296U);
    t4 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t1, t3, t2, 32);
    t5 = (t0 + 5528);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB2:    t10 = (t0 + 5064);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3977952979_1446275585_init()
{
	static char *pe[] = {(void *)work_a_3977952979_1446275585_p_0,(void *)work_a_3977952979_1446275585_p_1,(void *)work_a_3977952979_1446275585_p_2,(void *)work_a_3977952979_1446275585_p_3};
	xsi_register_didat("work_a_3977952979_1446275585", "isim/Decode_test_isim_beh.exe.sim/work/a_3977952979_1446275585.didat");
	xsi_register_executes(pe);
}
