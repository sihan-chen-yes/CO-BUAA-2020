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
    work_m_00000000000481378128_3386054228_init();
    work_m_00000000003493363662_1733832700_init();
    work_m_00000000000768757615_0467708899_init();
    work_m_00000000003461417980_0512421113_init();
    work_m_00000000000011049269_1531285090_init();
    work_m_00000000002193629657_3092946469_init();
    work_m_00000000003789509171_1621229167_init();
    work_m_00000000001305894600_1785967555_init();
    work_m_00000000003162944368_1579609468_init();
    work_m_00000000001996246903_0757879789_init();
    work_m_00000000003537704887_4035218901_init();
    work_m_00000000003799027308_0742571764_init();
    work_m_00000000000849602049_0886308060_init();
    work_m_00000000004011667775_2273557827_init();
    work_m_00000000004194909033_0580466374_init();
    work_m_00000000001920099411_2924402094_init();
    work_m_00000000002112410790_2304259441_init();
    work_m_00000000001897980635_3757821884_init();
    work_m_00000000002264353034_1950010379_init();
    work_m_00000000001645973107_3877310806_init();
    work_m_00000000002047498008_0258635663_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_0258635663");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
