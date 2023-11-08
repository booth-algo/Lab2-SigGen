# Task 1 #

**Creating the rom.sv file**

In this step I had to create the rom.sv component:
<img width="720" alt="image" src="https://user-images.githubusercontent.com/69715492/198234970-feee656b-5643-4f28-9d59-657c69658909.png">

Structure of Code:
* define parameters (ADDRESS_WIDTH and DATA_WIDTH). The reason we use parameters (which are like variables) is so that when we instantiate the module in code [rom sineRom(clk, 10, 12)] this would mean the ADDRESS_WIDTH and DATA_WIDTH would get overwritten with new values 10 and 12 respectively. This allows reusablity of modules (as opposed to using 8 and 8 throughout the code). 
* define input and output (INPUTS: clock signal, address of ROM; OUTPUTS: data-value in ROM address). The notation [(ADDRESS_WIDTH-1):0] means the input should be in the form [(8-1):0] or [7:0].
* (logic) used to define a binary signal (logic signal) which is a signal type (rather than datatype like int)

<img width="720" alt="image" src="https://user-images.githubusercontent.com/69715492/198246790-f83e7f1c-627e-4ecf-9666-67acc7f96f0a.png">

The $readmemh(.) function allows ROM to be loaded with contents stored in file "sinerom.mem". Thus the ROM is now filled with the following Hexadecimal numbers:

<img width="400" alt="image" src="https://user-images.githubusercontent.com/69715492/198247560-c6c38718-7008-49e1-aef2-843babaa99e7.png">

The code is generated using sinegen.py

<img width="800" alt="image" src="https://user-images.githubusercontent.com/69715492/198248009-4bb817bb-fd06-4ca7-902a-4bc554b688d2.png">

Analysing the python code:

<img width="800" alt="image" src="https://user-images.githubusercontent.com/69715492/198250772-b6f88b8d-76f4-441a-82f4-a685964e96aa.png">

**In Summary**
* Python script (*sinegen.py*) used to generate values that plot a cosine function
* The values are stored in *sinerom.mem*
* Values are stored in *rom.sv* using the $readmemh(.) function

## Step 2 ##
In this step I created the sinegen.sv module:

<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198255686-a3d31f3f-cdbe-4a21-a903-a7fa1343ac10.png">

Which produces the following module:

<img width="600" alt="image" src="https://user-images.githubusercontent.com/69715492/198255894-6018ed82-1af5-4b69-ba98-56f43dc90a88.png">

How it works:
* rst, en, clk work the same way for the original counter module. The difference is we need to add an increment input. The increment is what determines the frequency of the wave. Before our counter would increment by 1. Now it will increment by the amount we specify in the increment input
* The output of the counter is the address input in the ROM
* In this manner we are able to traverse through the ROM addresses using the counter. As the ROM contains the coordinates for a sinusoid, the dout of the ROM helps plot the sine wave

**How does the increment work?**
The counter produces the address of the ROM, and the output is the sine (actually cosine) values. The frequency of the output sinewave is determined by incr[7:0]. 

This is because if we have a higher increment. This means the counter will traverse through the ROM addresses in a few number of cycles. (10, 20, 30...) vs (1,2,3...256), the first one takes a fewer number of cycles to reach the end. 

In general the output sinewave frequency is:

<img width="188" alt="image" src="https://user-images.githubusercontent.com/69715492/198557510-2de31cb9-1288-4e6c-a671-c04070fa89b1.png">

The counter produces the address of the ROM, and the output is the sine (actually cosine) values. The frequency of the output sinewave is determined by incr[7:0]. 

## Step 3 ##

<img width="300" alt="image" src="https://user-images.githubusercontent.com/69715492/198558179-3cb1fdef-cf9b-40e3-bf51-dfa5a7187c35.png">

[NEEDS ANNOTATION]

**New Function Learned**\
*vbdGetkey()*: used to check if a key has been pressed. 

```
//exits if 'q' key pressed
 if ((vbdGetkey()=='q')) 
      exit(0); 
```

## Step 4 ##

<img width="521" alt="image" src="https://user-images.githubusercontent.com/69715492/198871959-f0ce7d55-9c6d-4420-9920-ec51a8be6efa.png">

I took the counter doit.sh file and replaced the word 'counter' with 'sinegen'. This worked because all the counter files and header files were aligned with the sinegen name.
