/*
 * file: hello.c
 * description: This is a simple program for testing the compiling environment
 * author: Nhi Pham @ 2018
 *
 */
#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>

/*
 * GPIO Base Address
 */
#define SYSCTL_RCGC2_R          (*((volatile uint32_t *)0x400FE108))
#define SYSCTL_RCGC2_GPIOF      0x00000020  // Port F Clock Gating Control
#define GPIO_PORTF_DIR_R        (*((volatile uint32_t *)0x40025400))
#define GPIO_PORTF_DEN_R        (*((volatile uint32_t *)0x4002551C))
#define GPIO_PORTF_DATA_R       (*((volatile uint32_t *)0x400253FC))

/*
 * GPIO Base Address
 */

int main(void)
{
    volatile uint32_t ui32Loop;

    /* Setup the system clock */

    /* Enable GPIO Peripheral */
    SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF;
    ui32Loop = SYSCTL_RCGC2_R;

    /* Configure the GPIO as output */
    GPIO_PORTF_DIR_R = 0x08;
    GPIO_PORTF_DEN_R = 0x08;

    while (1)
    {
        /* Turn on LED */
        GPIO_PORTF_DATA_R |= 0x08;

        /* Delay 0.5s */
        for(ui32Loop = 0; ui32Loop < 200000; ui32Loop++)
        {
        }

        /* Turn off LED */
        GPIO_PORTF_DATA_R &= ~(0x08);

        /* Delay 0.5s */
        for(ui32Loop = 0; ui32Loop < 200000; ui32Loop++)
        {
        }
    }
}
