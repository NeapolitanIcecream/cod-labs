CC = iverilog
TARGET = cpu.out
TESTBENCH_FILE = testbench.v
VCD_FILE = testbench.vcd
IM_FILE = IMem_init.coe
DM_FILE = DMem_init.coe
DM_OUT_FILE = DMem_out.coe

build:	
	$(CC) -DIM_DATA_FILE="\"$(IM_FILE)\"" \
			-DNUM_IM_DATA=59 \
			-DDM_DATA_FILE="\"$(DM_FILE)\"" \
			-DNUM_DM_DATA=22 \
			-DDUMP_FILE="\"$(VCD_FILE)\"" \
			-DDM_DATA_OUT_FILE="\"$(DM_OUT_FILE)\"" \
			-DDEBUG_CPU_STAGES="0" \
			-I../ -g2005 \
			-o $(TARGET) \
			$(TESTBENCH_FILE)

run:
	./$(TARGET)

view:
	gtkwave $(VCD_FILE)

all:
	build
	run
	view

clean:
	rm -rf ./$(TARGET)
	rm -rf ./$(VCD_FILE)
	rm -rf ./$(DM_OUT_FILE)