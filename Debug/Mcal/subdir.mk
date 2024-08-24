################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Mcal/DIO.c \
../Mcal/DIO_Lcfg.c \
../Mcal/EX_Interrupt.c \
../Mcal/Timers.c \
../Mcal/UART.c 

OBJS += \
./Mcal/DIO.o \
./Mcal/DIO_Lcfg.o \
./Mcal/EX_Interrupt.o \
./Mcal/Timers.o \
./Mcal/UART.o 

C_DEPS += \
./Mcal/DIO.d \
./Mcal/DIO_Lcfg.d \
./Mcal/EX_Interrupt.d \
./Mcal/Timers.d \
./Mcal/UART.d 


# Each subdirectory must supply rules for building sources it contributes
Mcal/%.o: ../Mcal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


