/***********************************************************************
 *  Project Name : bert
 *  Description  : Demonstration program for MicroBlaze running on VC707
 *  Sponsor      : Dr. A. Bean
 *  Device       : Virtex 7 on VC707 evaluation board
 *  Compiler     : Vivado 2017.2
 *  Module name  : helloworld.c
 *  Revision     : 0.1
 *  Last Revised : 31-Jan-2018
 *
 *  Instrumentation Design Laboratory
 *  Malott Hall, Room 6042
 *  1251 Wescoe Hall Drive, The University of Kansas
 *  Lawrence, Kansas 66045
 *
 *  Kenneth L. Ratzlaff, Director
 *  Robert W. Young, Research Engineer Sr.
 *
 *  Notes        : 0.1 -- initial version
 **********************************************************************/
#define VERSION "0.1.0"

#include "bert.h"

static XIntc InterruptController; 	// Instance of the Interrupt Controller
static XGpio Gpio; 					// The Instance of the GPIO Driver
static XTmrCtr TimerCounter;		// The instance of the Tmrctr Device

// a shared variable that can be used to signal to the main line code
// that an interrupt is being processed
volatile static int InterruptProcessed = FALSE;
u32 ErrorCount=0;

int main() {
	int i=0;
	init_platform();
	//microblaze_enable_interrupts();

	xil_printf("\r\nHello world! Running version %s of BERT test code\r\n", VERSION);

	if (Init() != XST_FAILURE)
	{
		xil_printf("\r\nMain loop\r\n");
		//xil_printf("\r bit \%i \n", GPIO_2_DDR);
		//xil_printf("\r\nInterruptProcesse = %d\r\n", InterruptProcessed);
		ErrorCount = 0;
		EnableTest();
		i=0;
		while(COWSNOTHOME)
		{
			// print something on screen to indicate code is running
			//xil_printf("*** i=%d ***\r\n", i++);
			//delay_ms(50);
			if (InterruptProcessed)
			{
				xil_printf("\r\%i ERROR", ErrorCount);
				// when the interrupt occurs, it will read back the error count
				// update statistics and re-start test using EnableTest();
				InterruptProcessed = FALSE;
				//EnableTest();
			}
		}

		//SCLR the accumulator
		XGpio_DiscreteWrite(&Gpio, 2, 0x00);
	}
	cleanup_platform();
	return 0;
}

/***********************************************************************
 * long Init(void)
 * Purpose   : call peripheral initialization code
 * Arguments : none
 * Returns   : STATUS
 * Calls     : various
 * Notes     :
 * Tested    :
 **********************************************************************/
long Init(void) {
	int Status; // status messages from library calls

	// Initialize the interrupt controller driver
	Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("\tFailed to initialize interrupt controller.\n");
		return XST_FAILURE;
	}
	else {xil_printf("Initializing interrupt controller\n");}

	// Initialize the GPIO driver
	Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("\tGpio Initialization Failed.\n");
		return XST_FAILURE;
	}
	else{xil_printf("\r\nInitialize GPIO\n");}

	// Set the direction for all signals as input or output
	XGpio_SetDataDirection(&Gpio, 1, ALLINPUT);
	XGpio_SetDataDirection(&Gpio, 2, ALLOUTPUT);

	// initialize timer for use by delay functions
	// Initialize the timer counter so that it's ready to use,
	// specify the device ID that is generated in xparameters.h
	Status = XTmrCtr_Initialize(&TimerCounter, TMRCTR_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("\tTimer Initialization Failed.\n");
		return XST_FAILURE;
	}
	else{xil_printf("\r\nInitialize timer\n");}
	XTmrCtr_SetOptions(&TimerCounter, TIMER_COUNTER_0, XTC_AUTO_RELOAD_OPTION);
	XTmrCtr_SetOptions(&TimerCounter, TIMER_COUNTER_0, XTC_DOWN_COUNT_OPTION);

	// Now setup the interrupt the system
	Status = SetUpInterruptSystem(&InterruptController);
	if (Status != XST_SUCCESS) {
		xil_printf("\tFailed to enable interrupt(s).\n");
		return XST_FAILURE;
	}
	else{xil_printf("\r\nInterrupt enable\n");}

	return XST_SUCCESS;
}

/***********************************************************************
 * int SetUpInterruptSystem(XIntc *XIntcInstancePtr)
 * Purpose   : configure interrupt(s)
 * Arguments : Xintc *XintcInstancePtr
 * Returns   : STATUS
 * Calls     : various
 * Notes     : Based on example code supplied from Xilinx
 * Tested    : Nov-2017 RWY
 **********************************************************************/
int SetUpInterruptSystem(XIntc *XIntcInstancePtr) {
	int Status;

	// Connect a device driver handler that will be called when an interrupt
	// for the device occurs, the device driver handler performs the
	// specific interrupt processing for the device.
	Status = XIntc_ConnectFastHandler(XIntcInstancePtr, INTC_DEVICE_INT_ID,(XFastInterruptHandler)DeviceDriverHandler);
	//Status = XIntc_Connect(XIntcInstancePtr, INTC_DEVICE_INT_ID,
	//		(XInterruptHandler) DeviceDriverHandler, (void *) 0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	else{xil_printf("\rDriver handler is connected \n");}


	// Enable the interrupt for the device and then cause an
	// interrupt so the handlers will be called.
	XIntc_Enable(XIntcInstancePtr, INTC_DEVICE_INT_ID);

	// Initialize the exception table.
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table.
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XIntc_InterruptHandler, XIntcInstancePtr);

	// Enable exceptions
	Xil_ExceptionEnable();

	// trigger on the last two bits of GPOI output
	XGpio_DiscreteWrite(&Gpio, 2, 0x03);

	// stop the interrupt
	XIntc_Stop(XIntcInstancePtr);

	InterruptProcessed=FALSE;

	//Start the interrupt controller
	Status = XIntc_Start(XIntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	else{xil_printf("\rIn real mode\n");}

	delay_ms(10);


	//trigger the rst_1 as slice0 (9th bit)
    XGpio_DiscreteWrite(&Gpio, 2, 0x00);

	return XST_SUCCESS;
}

/***********************************************************************
 * void DeviceDriverHandler(void *CallbackRef)
 * Purpose   : Interrupt Service Handler
 * Arguments : void *CallbackRef (not used)
 * Returns   : void or can use callback
 * Calls     : various
 * Notes     :
 * Tested    : Nov-2017
 **********************************************************************/
void DeviceDriverHandler(void *CallbackRef) {
	//static int ping = 0;
	//static u32 count = 0;
	// Indicate the interrupt is being processed using a shared variable
	// More useful if there are nested interrupts or if the main line code
	// should be able to over-ride ISR processing.
	//InterruptProcessed = FALSE;

	// trigger the rst_1 as slice1 (8th bit)
	XGpio_DiscreteWrite(&Gpio, 2, 0x01);

	// count the errors
	ErrorCount= ErrorCount + XGpio_DiscreteRead(&Gpio, 1);
	//ErrorCount += XGpio_In32(XPAR_AXI_GPIO_0_BASEADDR);
	delay_ms(5);
	// Send the rst_1 and SCLR again
	XGpio_DiscreteWrite(&Gpio, 2, 0x03);

	//ping = !ping;
	//if (ping)
	//	xil_printf("0x%02X\tping\n", ++count);
	//else
	//	xil_printf("0x%02X\tpong\n", ++count);

	// Indicate the interrupt has been processed using a shared variable.
	InterruptProcessed = TRUE;
	// Indicate the interrupt has been processed using a shared variable.
	XIntc_Acknowledge(&InterruptController, INTC_DEVICE_INT_ID);
}
/***********************************************************************
 * void delay_us(u32 time)
 * Purpose   : delay number of microseconds
 * Arguments : u32 time -- number of microseconds
 * Returns   : none
 * Calls     : various
 * Notes     : Dead-loops as timer hardware counts
 * Tested    :
 **********************************************************************/
void delay_us(u32 time) {
	XTmrCtr_SetResetValue(&TimerCounter, TIMER_COUNTER_0, time * 100);
	XTmrCtr_Start(&TimerCounter, TIMER_COUNTER_0);
	while (!(XTmrCtr_IsExpired(&TimerCounter, TIMER_COUNTER_0))) {
	}
	XTmrCtr_Stop(&TimerCounter, TIMER_COUNTER_0);
	xil_printf("Delay_us time over\n");
}

/***********************************************************************
 * void delay_ms(u32 time)
 * Purpose   : delay number of miliseconds
 * Arguments : u32 time -- number of miliseconds
 * Returns   : none
 * Calls     : various
 * Notes     : Dead-loops as timer hardware counts
 * Tested    :
 **********************************************************************/
void delay_ms(u32 time) {
	/*
	XTmrCtr_SetResetValue(&TimerCounter, TIMER_COUNTER_0, time * 100000);
	XTmrCtr_Start(&TimerCounter, TIMER_COUNTER_0);
	while (!(XTmrCtr_IsExpired(&TimerCounter, TIMER_COUNTER_0))) {
	}
	XTmrCtr_Stop(&TimerCounter, TIMER_COUNTER_0);
	*/
	xdelay_ms(time);
}

void EnableTest(void)
{
	// clear error accumulator hardware

	// pulse line in GPIO2 to begin test counter which
	// will run through the BERT ROM data approximately
	// 700 times to give 10e6 bits our output.

}

void xdelay_ms(u32 time)
{
	u32 i;
	for(i=0;i<time*10000;i++);
}