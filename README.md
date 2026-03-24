# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Seth Walowski
Will White

## Summary

In this lab we created d-latches using regs to constantly update the inputs/outputs. To demonstrate basic memory, we then grouped up 8 d-latches to create a function capable of storing a byte of data. Then we used multiplexers to switch between four single byte memory functions. The board effectively stores the data from the switches and only resets specific byte data with the use of the clock. There is also a single bit d-latch demonstration using switch 0 and LEDs 0 and 1.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

Structural Verilog has no if-else, and the D-latch we implemented uses if-else.

### What is the meaning of always @(*) in a sensitivity block?

The always @(*) means the sensitivity list is automatic, it automatically includes every signal that is read inside the always block.

### What importance is memory to digital circuits?

Memory allows for complicated digital circuits. Memory allows for being able to process and save data. We can also use triggering to send data in packets as demonstrated in our project. data can be preset, then the clock is pressed to instantly store the byte of data. 
