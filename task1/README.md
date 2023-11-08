# Task 1 #

**Creating the rom.sv file**

Firstly I created a `rom.sv` component:

<img width="720" alt="image" src="https://user-images.githubusercontent.com/69715492/198234970-feee656b-5643-4f28-9d59-657c69658909.png">

Here are some details about the init of the ROM:

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/9884b918-2718-45d0-bc9b-0f089f9a004c)

We can see that ROM needs to “programmed” or configured with original contents. In SystemVerilog, the `$readmemh(.)` function allows the ROM to be loaded with the contents stored in a file with numbers stored as hexadecimal code as shown in the slide.

For Lab 2, Task 1, `sinerom.mem` file contains 256 samples of a single cycle cosine values with a number ranging from 8’h00 to 8’hFF, generated from `sinegen.py`.

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/b3f3e2e9-db6a-4b91-b40d-267ef4047b83)

**Creating sinegen.sv**

Generation of a simple sinewave generator for `singegen.sv`:

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/b2592e79-d7a0-42ee-825d-abb1e4b62984)

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/f237efda-6817-4930-b878-4186e7e71ae1)

**Changing the testbench**

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/fef1f55f-a8b2-45c1-b28c-50206679441d)

Changes were made to initialisation of the variables and the vbdPlot function. 

**Changes to doit.sh file and testbench**

Afterwards, I made some changes to the doit.sh file and also added an escape from the loop:

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/809fa136-e111-46aa-808f-ed6b85f0a9f1)

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/10d04310-a558-417a-b425-c7d2e625ecb7)

**CHALLENGE**

Note that in the code above, I used the incr signal to increment the counter by an amount determined by vbdValue, as I directly modified the code from the task to include the challenge.

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/e0b13750-c0d1-49f2-99d9-4dedc32e20fb)
![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/85363f87-7a8b-48c6-ade3-e69c326e56cb)
![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/72bc8519-5502-45f1-af21-c6e313334bd7)

Hence changing the rotary encoder changes the frequency. However, when the frequency is changed, the resolution of the output is worsened due to the sampled nature of the original wave.

**Video Evidence**
https://github.com/booth-algo/Lab2-SigGen/assets/107279223/f7073bfd-70ed-4124-b0fb-5cd47f334fc4









