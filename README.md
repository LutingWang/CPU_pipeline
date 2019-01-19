# CPU_pipeline

## Overview

This is the final version of ***Project 5 CPU pipeline*** of ***BUAA Computer Origanization*** year 2018 - 2019. The project is written in Verilog and is designed handle the MIPS-Lite Instruction Set, i.e. {nop, jr, addu, subu, slt, beq, addiu, ori, lui, lw, sw, j, jal}. 

**WARNING: the project is used only for study! Cloning the whole project and submitting it as your project is a serious violation of the course regulations. Cheating will bring about numerous penalties. Moreover, nobody ensures the project being absolutely correct. Please test it before you put into use.** 

## Project Info

The project consists of one 5-stage pipeline CPU, using one set of instruction and data cache. Upon booting (stating simulation in ISim), the CPU model automatically searches for ./CPU_monocycle/code.txt and loads it into the instruction cache. Then the model will execute the instructions in order.

### Hazard

The model detects instruction conflicts and hazards, and will stall only if it has to. Therefore, the efficiency is maximized under this particular condition.

### Branch Delay

Branch delay is regarded as a normal hardware behavior, meaning that the first instruction following a branch instruction or jump instruction will be unconditionally executed. 

## Testing

A short piece of MIPS code is attached to the project in folder /code, in order to test the model. The files in /code can be opened and edited in any text pocessing applications, while MARS is specifically preffered. MARS is an open-source, lightweight application developed in Java, intending to simulate the behavior of MIPS CPU. 

To test the project, first open an asm file in MARS. After compiling the source code, a hexdecimal version of the binary code can be exported. **It is exceedingly crucial that the file is named code.txt, and is placed immediately under /CPU_pipeline.**

Thereafter, open the project in ISE and run ISim to inspect the values of all registers. You could compare the values in ISim and those in MARS, or you can also check the value information output in the console.
