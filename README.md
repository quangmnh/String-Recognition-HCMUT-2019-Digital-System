# String-Recognition-HCMUT-2019-Digital-System
Simple string (4 bits) recognition using state machines (or is it automata???) . This is part of a Digital System assignment  from term 192, Ho Chi Minh university of Technology.

# About
This project is one of 16 topic handed out during term 192, Ho Chi Minh University of Technology on Digital System subject.

Provided with an user-defined string (4 bits), we have to create a state machine (should have been automata???) that detects any of its appearence in the string fed to our Board

# Hardware

This Board we used in the project is the Altera De2i-150, which works on an Intel N2600 processor and Cyclone IV GX FPGA architecture.

# Constraint

The board above.

Quartus 16.5 and Verilog HDL.

# Disclaimer

This solution of the assignment is kind of retarded in which we use **16 state machines running in parallel** in order to detect all 16 variaties of the 4-bit string that the user might provide.
