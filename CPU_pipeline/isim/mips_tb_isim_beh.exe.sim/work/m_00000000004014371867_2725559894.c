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
static const char *ng0 = "C:/Users/ThinkPad/Documents/ISE/CPU_pipeline/CPU_pipeline/mips/datapath/3_E/alu.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {30, 0};
static int ng4[] = {0, 0};
static int ng5[] = {31, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {7U, 0U};



static void Cont_33_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t7 = (t4 + 4);
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t6) = t13;
    t14 = (t0 + 2540);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t5 + 4);
    t22 = *((unsigned int *)t5);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t27 = (t0 + 2480);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Cont_34_1(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;

LAB0:    t1 = (t0 + 2140U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1196);
    t5 = (t2 + 36U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 4294967295U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    memset(t3, 0, 8);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t14) == 0)
        goto LAB8;

LAB10:    t20 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t20) = 1;

LAB11:    t21 = (t3 + 4);
    t22 = (t4 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    *((unsigned int *)t3) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB13;

LAB12:    t29 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 2576);
    t32 = (t31 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    memset(t35, 0, 8);
    t36 = 1U;
    t37 = t36;
    t38 = (t3 + 4);
    t39 = *((unsigned int *)t3);
    t36 = (t36 & t39);
    t40 = *((unsigned int *)t38);
    t37 = (t37 & t40);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t42 | t36);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t43 | t37);
    xsi_driver_vfirst_trans(t31, 0, 0);
    t44 = (t0 + 2488);
    *((int *)t44) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t3) = 1;
    goto LAB11;

LAB13:    t25 = *((unsigned int *)t3);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t3) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB12;

}

static void Always_38_2(char *t0)
{
    char t9[8];
    char t16[8];
    char t25[8];
    char t27[8];
    char t28[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t26;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    int t37;
    char *t38;
    unsigned int t39;
    int t40;
    int t41;
    char *t42;
    unsigned int t43;
    int t44;
    int t45;
    unsigned int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;

LAB0:    t1 = (t0 + 2284U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2496);
    *((int *)t2) = 1;
    t3 = (t0 + 2312);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(40, ng0);

LAB24:    xsi_set_current_line(41, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t0 + 1196);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB23;

LAB9:    xsi_set_current_line(43, ng0);

LAB25:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 2147483647U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 2147483647U);
    t8 = (t0 + 692U);
    t17 = *((char **)t8);
    memset(t16, 0, 8);
    t8 = (t16 + 4);
    t18 = (t17 + 4);
    t19 = *((unsigned int *)t17);
    t20 = (t19 >> 0);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 0);
    *((unsigned int *)t8) = t22;
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 & 2147483647U);
    t24 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t24 & 2147483647U);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 32, t9, 32, t16, 32);
    t26 = (t0 + 1196);
    t30 = (t0 + 1196);
    t31 = (t30 + 44U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng3)));
    t34 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t27, t28, t29, ((int*)(t32)), 2, t33, 32, 1, t34, 32, 1);
    t35 = (t27 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (!(t36));
    t38 = (t28 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (!(t39));
    t41 = (t37 && t40);
    t42 = (t29 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (!(t43));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB26;

LAB27:    t52 = (t0 + 1472);
    xsi_vlogvar_assign_value(t52, t25, 31, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 576U);
    t4 = (t2 + 44U);
    t7 = *((char **)t4);
    t8 = ((char*)((ng5)));
    xsi_vlog_generic_get_index_select_value(t9, 2, t3, t7, 2, t8, 32, 1);
    t17 = (t0 + 692U);
    t18 = *((char **)t17);
    t17 = (t0 + 668U);
    t26 = (t17 + 44U);
    t30 = *((char **)t26);
    t31 = ((char*)((ng5)));
    xsi_vlog_generic_get_index_select_value(t16, 2, t18, t30, 2, t31, 32, 1);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 2, t9, 2, t16, 2);
    t32 = (t0 + 1472);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    memset(t27, 0, 8);
    xsi_vlog_unsigned_add(t27, 2, t25, 2, t34, 1);
    t35 = (t0 + 1196);
    t38 = (t0 + 1196);
    t42 = (t38 + 44U);
    t52 = *((char **)t42);
    t53 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t28, t52, 2, t53, 32, 1);
    t54 = (t28 + 4);
    t10 = *((unsigned int *)t54);
    t6 = (!(t10));
    if (t6 == 1)
        goto LAB28;

LAB29:    t55 = (t0 + 1380);
    xsi_vlogvar_assign_value(t55, t27, 1, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = (t0 + 1380);
    t8 = (t7 + 36U);
    t17 = *((char **)t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t17);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t18 = (t4 + 4);
    t26 = (t17 + 4);
    t30 = (t9 + 4);
    t13 = *((unsigned int *)t18);
    t14 = *((unsigned int *)t26);
    t15 = (t13 | t14);
    *((unsigned int *)t30) = t15;
    t19 = *((unsigned int *)t30);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB30;

LAB31:
LAB32:    t31 = (t0 + 1288);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 1);
    goto LAB23;

LAB11:    xsi_set_current_line(48, ng0);

LAB33:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 2147483647U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 2147483647U);
    t8 = (t0 + 692U);
    t17 = *((char **)t8);
    memset(t16, 0, 8);
    t8 = (t16 + 4);
    t18 = (t17 + 4);
    t19 = *((unsigned int *)t17);
    t20 = (t19 >> 0);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t18);
    t22 = (t21 >> 0);
    *((unsigned int *)t8) = t22;
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 & 2147483647U);
    t24 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t24 & 2147483647U);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_minus(t25, 32, t9, 32, t16, 32);
    t26 = (t0 + 1196);
    t30 = (t0 + 1196);
    t31 = (t30 + 44U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng3)));
    t34 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t27, t28, t29, ((int*)(t32)), 2, t33, 32, 1, t34, 32, 1);
    t35 = (t27 + 4);
    t36 = *((unsigned int *)t35);
    t37 = (!(t36));
    t38 = (t28 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (!(t39));
    t41 = (t37 && t40);
    t42 = (t29 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (!(t43));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB34;

LAB35:    t52 = (t0 + 1472);
    xsi_vlogvar_assign_value(t52, t25, 31, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 576U);
    t4 = (t2 + 44U);
    t7 = *((char **)t4);
    t8 = ((char*)((ng5)));
    xsi_vlog_generic_get_index_select_value(t9, 2, t3, t7, 2, t8, 32, 1);
    t17 = (t0 + 692U);
    t18 = *((char **)t17);
    t17 = (t0 + 668U);
    t26 = (t17 + 44U);
    t30 = *((char **)t26);
    t31 = ((char*)((ng5)));
    xsi_vlog_generic_get_index_select_value(t16, 2, t18, t30, 2, t31, 32, 1);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_minus(t25, 2, t9, 2, t16, 2);
    t32 = (t0 + 1472);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    memset(t27, 0, 8);
    xsi_vlog_unsigned_minus(t27, 2, t25, 2, t34, 1);
    t35 = (t0 + 1196);
    t38 = (t0 + 1196);
    t42 = (t38 + 44U);
    t52 = *((char **)t42);
    t53 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t28, t52, 2, t53, 32, 1);
    t54 = (t28 + 4);
    t10 = *((unsigned int *)t54);
    t6 = (!(t10));
    if (t6 == 1)
        goto LAB36;

LAB37:    t55 = (t0 + 1380);
    xsi_vlogvar_assign_value(t55, t27, 1, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = (t0 + 1380);
    t8 = (t7 + 36U);
    t17 = *((char **)t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t17);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t18 = (t4 + 4);
    t26 = (t17 + 4);
    t30 = (t9 + 4);
    t13 = *((unsigned int *)t18);
    t14 = *((unsigned int *)t26);
    t15 = (t13 | t14);
    *((unsigned int *)t30) = t15;
    t19 = *((unsigned int *)t30);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB38;

LAB39:
LAB40:    t31 = (t0 + 1288);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 1);
    goto LAB23;

LAB13:    xsi_set_current_line(53, ng0);

LAB41:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 & t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t17 = (t9 + 4);
    t13 = *((unsigned int *)t3);
    t14 = *((unsigned int *)t8);
    t15 = (t13 | t14);
    *((unsigned int *)t17) = t15;
    t19 = *((unsigned int *)t17);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB42;

LAB43:
LAB44:    t30 = (t0 + 1196);
    xsi_vlogvar_assign_value(t30, t9, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(56, ng0);

LAB45:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 | t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t17 = (t9 + 4);
    t13 = *((unsigned int *)t3);
    t14 = *((unsigned int *)t8);
    t15 = (t13 | t14);
    *((unsigned int *)t17) = t15;
    t19 = *((unsigned int *)t17);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB46;

LAB47:
LAB48:    t30 = (t0 + 1196);
    xsi_vlogvar_assign_value(t30, t9, 0, 0, 32);
    goto LAB23;

LAB17:    xsi_set_current_line(59, ng0);

LAB49:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t17 = (t9 + 4);
    t13 = *((unsigned int *)t3);
    t14 = *((unsigned int *)t8);
    t15 = (t13 | t14);
    *((unsigned int *)t17) = t15;
    t19 = *((unsigned int *)t17);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB50;

LAB51:
LAB52:    t18 = (t0 + 1196);
    xsi_vlogvar_assign_value(t18, t9, 0, 0, 32);
    goto LAB23;

LAB19:    xsi_set_current_line(62, ng0);

LAB53:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    memset(t25, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB55;

LAB54:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB55;

LAB58:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB56;

LAB57:    memset(t16, 0, 8);
    t18 = (t25 + 4);
    t10 = *((unsigned int *)t18);
    t11 = (~(t10));
    t12 = *((unsigned int *)t25);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t18) != 0)
        goto LAB61;

LAB62:    t30 = (t16 + 4);
    t15 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t30);
    t20 = (t15 || t19);
    if (t20 > 0)
        goto LAB63;

LAB64:    t21 = *((unsigned int *)t16);
    t22 = (~(t21));
    t23 = *((unsigned int *)t30);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t30) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t16) > 0)
        goto LAB69;

LAB70:    memcpy(t9, t32, 8);

LAB71:    t33 = (t0 + 1196);
    xsi_vlogvar_assign_value(t33, t9, 0, 0, 32);
    goto LAB23;

LAB21:    xsi_set_current_line(65, ng0);

LAB72:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB23;

LAB26:    t46 = *((unsigned int *)t29);
    t47 = (t46 + 0);
    t48 = *((unsigned int *)t27);
    t49 = *((unsigned int *)t28);
    t50 = (t48 - t49);
    t51 = (t50 + 1);
    xsi_vlogvar_assign_value(t26, t25, t47, *((unsigned int *)t28), t51);
    goto LAB27;

LAB28:    xsi_vlogvar_assign_value(t35, t27, 0, *((unsigned int *)t28), 1);
    goto LAB29;

LAB30:    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t30);
    *((unsigned int *)t9) = (t21 | t22);
    goto LAB32;

LAB34:    t46 = *((unsigned int *)t29);
    t47 = (t46 + 0);
    t48 = *((unsigned int *)t27);
    t49 = *((unsigned int *)t28);
    t50 = (t48 - t49);
    t51 = (t50 + 1);
    xsi_vlogvar_assign_value(t26, t25, t47, *((unsigned int *)t28), t51);
    goto LAB35;

LAB36:    xsi_vlogvar_assign_value(t35, t27, 0, *((unsigned int *)t28), 1);
    goto LAB37;

LAB38:    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t30);
    *((unsigned int *)t9) = (t21 | t22);
    goto LAB40;

LAB42:    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t17);
    *((unsigned int *)t9) = (t21 | t22);
    t18 = (t4 + 4);
    t26 = (t7 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t36 = *((unsigned int *)t18);
    t39 = (~(t36));
    t43 = *((unsigned int *)t7);
    t46 = (~(t43));
    t48 = *((unsigned int *)t26);
    t49 = (~(t48));
    t37 = (t24 & t39);
    t40 = (t46 & t49);
    t56 = (~(t37));
    t57 = (~(t40));
    t58 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t58 & t56);
    t59 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t59 & t57);
    t60 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t60 & t56);
    t61 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t61 & t57);
    goto LAB44;

LAB46:    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t17);
    *((unsigned int *)t9) = (t21 | t22);
    t18 = (t4 + 4);
    t26 = (t7 + 4);
    t23 = *((unsigned int *)t18);
    t24 = (~(t23));
    t36 = *((unsigned int *)t4);
    t37 = (t36 & t24);
    t39 = *((unsigned int *)t26);
    t43 = (~(t39));
    t46 = *((unsigned int *)t7);
    t40 = (t46 & t43);
    t48 = (~(t37));
    t49 = (~(t40));
    t56 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t56 & t48);
    t57 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t57 & t49);
    goto LAB48;

LAB50:    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t17);
    *((unsigned int *)t9) = (t21 | t22);
    goto LAB52;

LAB55:    t17 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB57;

LAB56:    *((unsigned int *)t25) = 1;
    goto LAB57;

LAB59:    *((unsigned int *)t16) = 1;
    goto LAB62;

LAB61:    t26 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB62;

LAB63:    t31 = ((char*)((ng2)));
    goto LAB64;

LAB65:    t32 = ((char*)((ng1)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t9, 32, t31, 32, t32, 32);
    goto LAB71;

LAB69:    memcpy(t9, t31, 8);
    goto LAB71;

}


extern void work_m_00000000004014371867_2725559894_init()
{
	static char *pe[] = {(void *)Cont_33_0,(void *)Cont_34_1,(void *)Always_38_2};
	xsi_register_didat("work_m_00000000004014371867_2725559894", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000004014371867_2725559894.didat");
	xsi_register_executes(pe);
}
