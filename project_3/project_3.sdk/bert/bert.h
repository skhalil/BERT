/*
 * helloworld.h
 *
 *  Created on: Oct 31, 2017
 *      Author: rwyoung
 */

#ifndef SRC_BERT_H_
#define SRC_BERT_H_

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xintc.h"
#include "xgpio.h"
#include "xtmrctr.h"
#include "xil_exception.h"

#define COWSNOTHOME 1

int SetUpInterruptSystem(XIntc *XIntcInstancePtr);
void DeviceDriverHandler(void *CallbackRef);
long Init(void);
void lcd_init(void);
void delay_us(u32 time);
void delay_ms(u32 time);

// device IDs for peripherals attached to MicroBlaze core
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID
#define GPIO_EXAMPLE_DEVICE_ID	XPAR_GPIO_0_DEVICE_ID
#define TMRCTR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
/*
 *  This is the Interrupt Number of the Device whose Interrupt Output is
 *  connected to the Input of the Interrupt Controller
 */
#define INTC_DEVICE_INT_ID	  0
#define TIMER_COUNTER_0	 0

#endif /* SRC_BERT_H_ */
