#include "xgpiops.h"

XGpioPs_Config XGpioPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,versal-gpio-1.0", /* compatible */
		0xff0b0000, /* reg */
		0x400d, /* interrupts */
		0xf9000000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};