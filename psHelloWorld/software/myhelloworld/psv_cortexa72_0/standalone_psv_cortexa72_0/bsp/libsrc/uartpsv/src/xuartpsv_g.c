#include "xuartpsv.h"

XUartPsv_Config XUartPsv_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"arm,pl011", /* compatible */
		0xff000000, /* reg */
		0x5f5e100, /* xlnx,clock-freq */
		0x0, /* ModemPinsConnected */
		0x1c200, /* xlnx,baudrate */
		0x4012, /* interrupts */
		0xf9000000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};