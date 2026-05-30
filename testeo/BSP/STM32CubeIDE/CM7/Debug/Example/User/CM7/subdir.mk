################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/trabajo_final/testeo/BSP/CM7/Src/analog_audio_record.c \
F:/trabajo_final/testeo/BSP/CM7/Src/audio_play.c \
F:/trabajo_final/testeo/BSP/CM7/Src/audio_record.c \
F:/trabajo_final/testeo/BSP/CM7/Src/camera.c \
F:/trabajo_final/testeo/BSP/CM7/Src/joystick.c \
F:/trabajo_final/testeo/BSP/CM7/Src/lcd.c \
F:/trabajo_final/testeo/BSP/CM7/Src/main.c \
F:/trabajo_final/testeo/BSP/CM7/Src/qspi.c \
F:/trabajo_final/testeo/BSP/CM7/Src/sd.c \
F:/trabajo_final/testeo/BSP/CM7/Src/sdram.c \
F:/trabajo_final/testeo/BSP/CM7/Src/stm32h7xx_it.c \
../Example/User/CM7/syscalls.c \
../Example/User/CM7/sysmem.c \
F:/trabajo_final/testeo/BSP/CM7/Src/touchscreen.c 

OBJS += \
./Example/User/CM7/analog_audio_record.o \
./Example/User/CM7/audio_play.o \
./Example/User/CM7/audio_record.o \
./Example/User/CM7/camera.o \
./Example/User/CM7/joystick.o \
./Example/User/CM7/lcd.o \
./Example/User/CM7/main.o \
./Example/User/CM7/qspi.o \
./Example/User/CM7/sd.o \
./Example/User/CM7/sdram.o \
./Example/User/CM7/stm32h7xx_it.o \
./Example/User/CM7/syscalls.o \
./Example/User/CM7/sysmem.o \
./Example/User/CM7/touchscreen.o 

C_DEPS += \
./Example/User/CM7/analog_audio_record.d \
./Example/User/CM7/audio_play.d \
./Example/User/CM7/audio_record.d \
./Example/User/CM7/camera.d \
./Example/User/CM7/joystick.d \
./Example/User/CM7/lcd.d \
./Example/User/CM7/main.d \
./Example/User/CM7/qspi.d \
./Example/User/CM7/sd.d \
./Example/User/CM7/sdram.d \
./Example/User/CM7/stm32h7xx_it.d \
./Example/User/CM7/syscalls.d \
./Example/User/CM7/sysmem.d \
./Example/User/CM7/touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
Example/User/CM7/analog_audio_record.o: F:/trabajo_final/testeo/BSP/CM7/Src/analog_audio_record.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/audio_play.o: F:/trabajo_final/testeo/BSP/CM7/Src/audio_play.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/audio_record.o: F:/trabajo_final/testeo/BSP/CM7/Src/audio_record.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/camera.o: F:/trabajo_final/testeo/BSP/CM7/Src/camera.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/joystick.o: F:/trabajo_final/testeo/BSP/CM7/Src/joystick.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/lcd.o: F:/trabajo_final/testeo/BSP/CM7/Src/lcd.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/main.o: F:/trabajo_final/testeo/BSP/CM7/Src/main.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/qspi.o: F:/trabajo_final/testeo/BSP/CM7/Src/qspi.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/sd.o: F:/trabajo_final/testeo/BSP/CM7/Src/sd.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/sdram.o: F:/trabajo_final/testeo/BSP/CM7/Src/sdram.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/stm32h7xx_it.o: F:/trabajo_final/testeo/BSP/CM7/Src/stm32h7xx_it.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/%.o Example/User/CM7/%.su Example/User/CM7/%.cyclo: ../Example/User/CM7/%.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/CM7/touchscreen.o: F:/trabajo_final/testeo/BSP/CM7/Src/touchscreen.c Example/User/CM7/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Example-2f-User-2f-CM7

clean-Example-2f-User-2f-CM7:
	-$(RM) ./Example/User/CM7/analog_audio_record.cyclo ./Example/User/CM7/analog_audio_record.d ./Example/User/CM7/analog_audio_record.o ./Example/User/CM7/analog_audio_record.su ./Example/User/CM7/audio_play.cyclo ./Example/User/CM7/audio_play.d ./Example/User/CM7/audio_play.o ./Example/User/CM7/audio_play.su ./Example/User/CM7/audio_record.cyclo ./Example/User/CM7/audio_record.d ./Example/User/CM7/audio_record.o ./Example/User/CM7/audio_record.su ./Example/User/CM7/camera.cyclo ./Example/User/CM7/camera.d ./Example/User/CM7/camera.o ./Example/User/CM7/camera.su ./Example/User/CM7/joystick.cyclo ./Example/User/CM7/joystick.d ./Example/User/CM7/joystick.o ./Example/User/CM7/joystick.su ./Example/User/CM7/lcd.cyclo ./Example/User/CM7/lcd.d ./Example/User/CM7/lcd.o ./Example/User/CM7/lcd.su ./Example/User/CM7/main.cyclo ./Example/User/CM7/main.d ./Example/User/CM7/main.o ./Example/User/CM7/main.su ./Example/User/CM7/qspi.cyclo ./Example/User/CM7/qspi.d ./Example/User/CM7/qspi.o ./Example/User/CM7/qspi.su ./Example/User/CM7/sd.cyclo ./Example/User/CM7/sd.d ./Example/User/CM7/sd.o ./Example/User/CM7/sd.su ./Example/User/CM7/sdram.cyclo ./Example/User/CM7/sdram.d ./Example/User/CM7/sdram.o ./Example/User/CM7/sdram.su ./Example/User/CM7/stm32h7xx_it.cyclo ./Example/User/CM7/stm32h7xx_it.d ./Example/User/CM7/stm32h7xx_it.o ./Example/User/CM7/stm32h7xx_it.su ./Example/User/CM7/syscalls.cyclo ./Example/User/CM7/syscalls.d ./Example/User/CM7/syscalls.o ./Example/User/CM7/syscalls.su ./Example/User/CM7/sysmem.cyclo ./Example/User/CM7/sysmem.d ./Example/User/CM7/sysmem.o ./Example/User/CM7/sysmem.su ./Example/User/CM7/touchscreen.cyclo ./Example/User/CM7/touchscreen.d ./Example/User/CM7/touchscreen.o ./Example/User/CM7/touchscreen.su

.PHONY: clean-Example-2f-User-2f-CM7

