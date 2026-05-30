################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_audio.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_bus.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_camera.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_lcd.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_qspi.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_sd.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_sdram.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_ts.c 

OBJS += \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_audio.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_bus.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_camera.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_lcd.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_qspi.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sd.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sdram.o \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_ts.o 

C_DEPS += \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_audio.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_bus.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_camera.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_lcd.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_qspi.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sd.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sdram.d \
./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_audio.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_audio.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_bus.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_bus.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_camera.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_camera.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_lcd.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_lcd.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_qspi.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_qspi.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sd.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_sd.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sdram.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_sdram.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_ts.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/STM32H747I-DISCO/stm32h747i_discovery_ts.c Drivers/BSP/STM32H747I_DISCOVERY/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32H747I_DISCOVERY

clean-Drivers-2f-BSP-2f-STM32H747I_DISCOVERY:
	-$(RM) ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_audio.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_audio.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_audio.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_audio.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_bus.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_bus.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_bus.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_bus.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_camera.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_camera.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_camera.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_camera.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_lcd.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_lcd.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_lcd.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_lcd.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_qspi.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_qspi.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_qspi.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_qspi.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sd.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sd.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sd.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sd.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sdram.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sdram.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sdram.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_sdram.su ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_ts.cyclo ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_ts.d ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_ts.o ./Drivers/BSP/STM32H747I_DISCOVERY/stm32h747i_discovery_ts.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32H747I_DISCOVERY

