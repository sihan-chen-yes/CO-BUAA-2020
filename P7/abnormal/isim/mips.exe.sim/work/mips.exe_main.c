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
    work_m_00000000000397510752_3386054228_init();
    work_m_00000000001247433668_1733832700_init();
    work_m_00000000000450440134_0467708899_init();
    work_m_00000000003943450848_0512421113_init();
    work_m_00000000004136028024_1531285090_init();
    work_m_00000000001589182483_3092946469_init();
    work_m_00000000003239352492_1621229167_init();
    work_m_00000000001305894600_1785967555_init();
    work_m_00000000001892207887_1579609468_init();
    work_m_00000000003323533588_0757879789_init();
    work_m_00000000001720722918_4035218901_init();
    work_m_00000000001057512117_0742571764_init();
    work_m_00000000003802249621_0886308060_init();
    work_m_00000000000526991334_4111503280_init();
    work_m_00000000001183270663_2273557827_init();
    work_m_00000000003918847788_0580466374_init();
    work_m_00000000003891187597_2818087301_init();
    work_m_00000000001920099411_2924402094_init();
    work_m_00000000001476611433_3975733304_init();
    work_m_00000000001608895458_2304259441_init();
    work_m_00000000002284487578_3757821884_init();
    work_m_00000000002264353034_1950010379_init();
    work_m_00000000001383029840_3508565487_init();
    work_m_00000000003904619916_0156190743_init();
    work_m_00000000003991901483_2782103923_init();
    work_m_00000000000568667715_3877310806_init();
    work_m_00000000002540040907_0258635663_init();


    xsi_register_tops("work_m_00000000002540040907_0258635663");


    return xsi_run_simulation(argc, argv);

}
