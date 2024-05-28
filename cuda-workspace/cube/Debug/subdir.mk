################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../main.cu 

CU_DEPS += \
./main.d 

OBJS += \
./main.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/Developer/NVIDIA/CUDA-6.0/bin/nvcc -G -g -O0 -gencode arch=compute_30,code=sm_30  -odir "" -M -o "$(@:%.o=%.d)" "$<"
	/Developer/NVIDIA/CUDA-6.0/bin/nvcc --compile -G -O0 -g -gencode arch=compute_30,code=compute_30 -gencode arch=compute_30,code=sm_30  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


