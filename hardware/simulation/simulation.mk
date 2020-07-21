#core
include $(ROOT_DIR)/hardware/hardware.mk

#testbench
VSRC+=$(CACHE_HW_DIR)/testbench/iob-cache_tb.v \
$(ROOT_DIR)/submodules/axi-mem/rtl/axi_ram.v 
#$(CACHE_HW_DIR)/wrapper/L2_ID_1sp.v \

#additional includes
INCLUDE+=$(incdir)$(CACHE_HW_DIR)/testbench/
VHDR+=$(CACHE_HW_DIR)/testbench/iob-cache_tb.vh

#additional defines
DEFINE+=$(define)DATA_W=32 $(define)ADDR_W=32
