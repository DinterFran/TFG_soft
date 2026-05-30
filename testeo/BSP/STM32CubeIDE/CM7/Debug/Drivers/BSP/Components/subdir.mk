################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/adv7533/adv7533.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/adv7533/adv7533_reg.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ft6x06/ft6x06.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ft6x06/ft6x06_reg.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/is42s32800j/is42s32800j.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/mt25tl01g/mt25tl01g.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/nt35510/nt35510.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/nt35510/nt35510_reg.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/otm8009a/otm8009a.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/otm8009a/otm8009a_reg.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov5640/ov5640.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov5640/ov5640_reg.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov9655/ov9655.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov9655/ov9655_reg.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/wm8994/wm8994.c \
F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/wm8994/wm8994_reg.c 

OBJS += \
./Drivers/BSP/Components/adv7533.o \
./Drivers/BSP/Components/adv7533_reg.o \
./Drivers/BSP/Components/ft6x06.o \
./Drivers/BSP/Components/ft6x06_reg.o \
./Drivers/BSP/Components/is42s32800j.o \
./Drivers/BSP/Components/mt25tl01g.o \
./Drivers/BSP/Components/nt35510.o \
./Drivers/BSP/Components/nt35510_reg.o \
./Drivers/BSP/Components/otm8009a.o \
./Drivers/BSP/Components/otm8009a_reg.o \
./Drivers/BSP/Components/ov5640.o \
./Drivers/BSP/Components/ov5640_reg.o \
./Drivers/BSP/Components/ov9655.o \
./Drivers/BSP/Components/ov9655_reg.o \
./Drivers/BSP/Components/wm8994.o \
./Drivers/BSP/Components/wm8994_reg.o 

C_DEPS += \
./Drivers/BSP/Components/adv7533.d \
./Drivers/BSP/Components/adv7533_reg.d \
./Drivers/BSP/Components/ft6x06.d \
./Drivers/BSP/Components/ft6x06_reg.d \
./Drivers/BSP/Components/is42s32800j.d \
./Drivers/BSP/Components/mt25tl01g.d \
./Drivers/BSP/Components/nt35510.d \
./Drivers/BSP/Components/nt35510_reg.d \
./Drivers/BSP/Components/otm8009a.d \
./Drivers/BSP/Components/otm8009a_reg.d \
./Drivers/BSP/Components/ov5640.d \
./Drivers/BSP/Components/ov5640_reg.d \
./Drivers/BSP/Components/ov9655.d \
./Drivers/BSP/Components/ov9655_reg.d \
./Drivers/BSP/Components/wm8994.d \
./Drivers/BSP/Components/wm8994_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/adv7533.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/adv7533/adv7533.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/adv7533_reg.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/adv7533/adv7533_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ft6x06.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ft6x06/ft6x06.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ft6x06_reg.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ft6x06/ft6x06_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/is42s32800j.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/is42s32800j/is42s32800j.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/mt25tl01g.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/mt25tl01g/mt25tl01g.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/nt35510.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/nt35510/nt35510.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/nt35510_reg.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/nt35510/nt35510_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/otm8009a.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/otm8009a/otm8009a.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/otm8009a_reg.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/otm8009a/otm8009a_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ov5640.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov5640/ov5640.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ov5640_reg.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov5640/ov5640_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ov9655.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov9655/ov9655.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ov9655_reg.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/ov9655/ov9655_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/wm8994.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/wm8994/wm8994.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/wm8994_reg.o: F:/trabajo_final/testeo/BSP/STM32CubeIDE/Drivers/BSP/Components/wm8994/wm8994_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_STM32H747I_DISCO -DUSE_HAL_DRIVER -DUSE_PWR_DIRECT_SMPS_SUPPLY -DSTM32H747xx -DCORE_CM7 -DTS_MULTI_TOUCH_SUPPORTED -c -I../../../CM7/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32H747I-DISCO -I../../../Drivers/BSP/Components/Common -I../../../Utilities/lcd -I../../../Utilities/Fonts -I../../../Utilities/CPU -I../../../Middlewares/ST/STM32_Audio/Addons/PDM/Inc -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/adv7533.cyclo ./Drivers/BSP/Components/adv7533.d ./Drivers/BSP/Components/adv7533.o ./Drivers/BSP/Components/adv7533.su ./Drivers/BSP/Components/adv7533_reg.cyclo ./Drivers/BSP/Components/adv7533_reg.d ./Drivers/BSP/Components/adv7533_reg.o ./Drivers/BSP/Components/adv7533_reg.su ./Drivers/BSP/Components/ft6x06.cyclo ./Drivers/BSP/Components/ft6x06.d ./Drivers/BSP/Components/ft6x06.o ./Drivers/BSP/Components/ft6x06.su ./Drivers/BSP/Components/ft6x06_reg.cyclo ./Drivers/BSP/Components/ft6x06_reg.d ./Drivers/BSP/Components/ft6x06_reg.o ./Drivers/BSP/Components/ft6x06_reg.su ./Drivers/BSP/Components/is42s32800j.cyclo ./Drivers/BSP/Components/is42s32800j.d ./Drivers/BSP/Components/is42s32800j.o ./Drivers/BSP/Components/is42s32800j.su ./Drivers/BSP/Components/mt25tl01g.cyclo ./Drivers/BSP/Components/mt25tl01g.d ./Drivers/BSP/Components/mt25tl01g.o ./Drivers/BSP/Components/mt25tl01g.su ./Drivers/BSP/Components/nt35510.cyclo ./Drivers/BSP/Components/nt35510.d ./Drivers/BSP/Components/nt35510.o ./Drivers/BSP/Components/nt35510.su ./Drivers/BSP/Components/nt35510_reg.cyclo ./Drivers/BSP/Components/nt35510_reg.d ./Drivers/BSP/Components/nt35510_reg.o ./Drivers/BSP/Components/nt35510_reg.su ./Drivers/BSP/Components/otm8009a.cyclo ./Drivers/BSP/Components/otm8009a.d ./Drivers/BSP/Components/otm8009a.o ./Drivers/BSP/Components/otm8009a.su ./Drivers/BSP/Components/otm8009a_reg.cyclo ./Drivers/BSP/Components/otm8009a_reg.d ./Drivers/BSP/Components/otm8009a_reg.o ./Drivers/BSP/Components/otm8009a_reg.su ./Drivers/BSP/Components/ov5640.cyclo ./Drivers/BSP/Components/ov5640.d ./Drivers/BSP/Components/ov5640.o ./Drivers/BSP/Components/ov5640.su ./Drivers/BSP/Components/ov5640_reg.cyclo ./Drivers/BSP/Components/ov5640_reg.d ./Drivers/BSP/Components/ov5640_reg.o ./Drivers/BSP/Components/ov5640_reg.su ./Drivers/BSP/Components/ov9655.cyclo ./Drivers/BSP/Components/ov9655.d ./Drivers/BSP/Components/ov9655.o ./Drivers/BSP/Components/ov9655.su ./Drivers/BSP/Components/ov9655_reg.cyclo ./Drivers/BSP/Components/ov9655_reg.d ./Drivers/BSP/Components/ov9655_reg.o ./Drivers/BSP/Components/ov9655_reg.su ./Drivers/BSP/Components/wm8994.cyclo ./Drivers/BSP/Components/wm8994.d ./Drivers/BSP/Components/wm8994.o ./Drivers/BSP/Components/wm8994.su ./Drivers/BSP/Components/wm8994_reg.cyclo ./Drivers/BSP/Components/wm8994_reg.d ./Drivers/BSP/Components/wm8994_reg.o ./Drivers/BSP/Components/wm8994_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

