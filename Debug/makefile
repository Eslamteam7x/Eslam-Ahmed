################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Services/subdir.mk
-include Mcal/subdir.mk
-include HAL/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
app_wash_machine.lss \

FLASH_IMAGE += \
app_wash_machine.hex \

SIZEDUMMY += \
sizedummy \

AVRDUDEDUMMY += \
avrdudedummy \


# All Target
all: app_wash_machine.elf secondary-outputs

# Tool invocations
app_wash_machine.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,app_wash_machine.map -mmcu=atmega32 -o "app_wash_machine.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

app_wash_machine.lss: app_wash_machine.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S app_wash_machine.elf  >"app_wash_machine.lss"
	@echo 'Finished building: $@'
	@echo ' '

app_wash_machine.hex: app_wash_machine.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex app_wash_machine.elf  "app_wash_machine.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: app_wash_machine.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32 app_wash_machine.elf
	@echo 'Finished building: $@'
	@echo ' '

avrdudedummy: app_wash_machine.elf
	@echo 'Invoking: AVRDude'
	C:\WinAVR-20100110\bin\avrdude -pm32 -cusbasp -Uflash:w:app_wash_machine.hex:a
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(AVRDUDEDUMMY)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) app_wash_machine.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY) $(AVRDUDEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
