#include "xsysmonpsv.h"

XSysMonPsv_Config XSysMonPsv_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,versal-sysmon", /* compatible */
		0xf1270000, /* reg */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		{
		}, /* child,required */
	},
	 {
		 NULL
	}
};

const char *XSysMonPsv_Supply_Arr[] = {
};
