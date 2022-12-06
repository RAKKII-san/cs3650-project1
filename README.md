# cs3650-project1
CS3650 Project 1: Certified Preowned Processor - Michael Left, Austin Celestino, Sean Chuang

This project consists of a pipelined implementation of a MIPS processor
in Verilog. It handles a basic subset of instructions: ALU functions, lw/sw,
beq, jump.

This project is not an original recreation of a MIPS processor; rather, it serves
as a learning experience and seeks to gain more understanding in Verilog.
Our project uses fpga4student.com's implementation to examine how
single-cycle and 5-stage pipelining is done in Verilog.

A txt file is included to test out the Verilog processor. This was also provided by
fpga4student.com. Screenshots from local testing are provided by us. 

Throughout this project, we were able to learn how the verilog code interacts with 
the hardware in order to create the MIPS commands we know about. Seeing the direct 
datapath gave a good visualization of what goes on internally, and we were able to 
experience how it was to code in language directly above hardware.

Some miscellaneous things we also learned:
* Code in Verilog doesn't necessarily execution instructions from top to bottom,
rather, multiple instructions execute (seemingly) concurrently given long enough
delays, so this allows pipelining.
* Making a buffer for the data memory somehow makes pipelining possible
* Lots of Verilog syntax (some of them have (output, inputs) pattern)

Resources used: 
* https://www.fpga4student.com/2017/06/32-bit-pipelined-mips-processor-in-verilog-1.html
* https://www.fpga4student.com/2017/06/32-bit-pipelined-mips-processor-in-verilog-2.html
* https://www.fpga4student.com/2017/06/32-bit-pipelined-mips-processor-in-verilog-3.html 