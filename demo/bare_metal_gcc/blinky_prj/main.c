/*
 * Filename: main.c
 * Description: Blinky demo
 * Created by Nhi Pham @ 2018
 */
#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include "inc/hw_types.h"
#include "inc/hw_memmap.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"

//*****************************************************************************
//
// Define pin to LED color mapping.
//
//*****************************************************************************

#define RED_LED   GPIO_PIN_1
#define BLUE_LED  GPIO_PIN_2
#define GREEN_LED GPIO_PIN_3

int main(void)
{
    //
    // Setup the system clock to run at 50 Mhz from PLL with crystal reference
    //
    SysCtlClockSet(SYSCTL_SYSDIV_4|SYSCTL_USE_PLL|SYSCTL_XTAL_16MHZ|
                    SYSCTL_OSC_MAIN);

    //
    // Enable and configure the GPIO port for the LED operation.
    //
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, RED_LED|BLUE_LED|GREEN_LED);

    //
    // Loop Forever
    //
    while(1)
    {
        //
        // Turn on the LED
        //
        GPIOPinWrite(GPIO_PORTF_BASE, RED_LED|BLUE_LED|GREEN_LED, RED_LED);

        //
        // Delay for a bit
        //
        // SysCtlDelay(2000000);

        //
        // Turn on the LED
        //
        // GPIOPinWrite(GPIO_PORTF_BASE, RED_LED|BLUE_LED|GREEN_LED, BLUE_LED);

        //
        // Delay for a bit
        //
        // SysCtlDelay(2000000);
    }
}
