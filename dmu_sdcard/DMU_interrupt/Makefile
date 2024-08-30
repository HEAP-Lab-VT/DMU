CVA6_SDK=/mnt/nvme/fpga_dev/cva6-sdk
ARCH=riscv
CROSS_COMPILE=$(CVA6_SDK)/buildroot/output/host/bin/riscv64-unknown-linux-gnu-
KCFLAGS=-Wno-attribute-alias
K=$(CVA6_SDK)/buildroot/output/build/linux-main

obj-m += watchpoints_interrupt_module.o
all:
	make -C $(K)  M=$(shell pwd) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) KCFLAGS=$(KCFLAGS) modules

clean:
	make -C $(K)  M=$(shell pwd) ARCH=$(ARCH) clean
