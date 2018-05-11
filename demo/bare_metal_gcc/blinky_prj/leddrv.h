/*
 * Filename: lebdrv.h
 * Description: Driver for led GPIO
 * Created by Nhi Pham @ 2018
 */
#ifndef _LED_DRV_
#define _LED_DRV_

#include <stdint.h>

/*
 * Macro and definition
 */
#define GPIO_BASE_ADDRESS /* Base address of GPIO */
#define GPIO_CTRL_REG     /* Control register address */

/*
 * Exported global function
 */
extern uint16_t led_init(void);
extern uint16_t led_toggle(void);
extern uint16_t led_set(bool isOn);

#endif /* _LED_DRV_ */
