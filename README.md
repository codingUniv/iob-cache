# IOb-cache

IOb-cache is a high-performance configurable open-source Verilog cache. 
IOb-cache supports pipeline architectures, allowing 1 request per clock cycle (read and write).
It has both Native (pipelined) and AXI4 back-end interfaces.
The write policy is configurable: either write-through/not-allocate or write-back/allocate. 
Configuration supports the number of ways, address-width, cache's word-size (front-end data with), the memory's word-size (back-end data width), the number of lines and words per line, replacement policy (if set associative), and cache-control module (allows performance measurement, cache invalidation and write-through buffer status).

## Clone the repository

``git clone --recursive git@github.com:IObundle/iob-cache.git``

## Simulation
Simulation supports both Icarus Verilog and Verilator simulators. 

To simulate, run:
```
make sim 
```
In this case Icarus Verilog is used by default.

To select a specific simulator, run:
```
make sim SIMULATOR=<simulator name>
```
\<simulator name\> can be icarus or verilator
For example:
```
make sim SIMULATOR=verilator
```
To simulate with generating VCD file, run:
```
make sim VCD=1 
```
In this case Icarus Verilog is used by default. If you are interested in another simulator, use also SIMULATOR option to select it.
  For example
```
make sim SIMULATOR=verilator VCD=1
```
To simulate with regression testing, run 
``` 
make sim-test
```
In this case Icarus Verilog is selected by default. 
If you are interested in selecting another simulator, set SIMULATOR option as explained previously. 

To simulate with regression testing for all simulators, run 
```
make test-sim
```
To clean simulation generated file, run
```
make sim-clean
```
In this case Icarus Verilog is selected by default. 
If you are interested in selecting another simulator, set SIMULATOR option as explained previously. 

To clean simulation generated file for all simulators, run
```
make sim-clean-all
```

To clean all simulation generated file, run
```
make test-sim-clean
```

## FPGA 

## Integration in IOb-Soc

## Documentation

## Cleaning all directories

