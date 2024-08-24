################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Services/Timers_Services.c \
../Services/UART_Services.c \
../Services/UART_Stack.c 

OBJS += \
./Services/Timers_Services.o \
./Services/UART_Services.o \
./Services/UART_Stack.o 

C_DEPS += \
./Services/Timers_Services.d \
./Services/UART_Services.d \
./Services/UART_Stack.d 


# Each subdirectory must supply rules for building sources it contributes
Services/%.o: ../Services/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


