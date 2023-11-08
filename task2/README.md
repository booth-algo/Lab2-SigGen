# Task 2 #

**Firstly I had to create a new structure using a dual port ROM.**

Dual port ROM:

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/dccf6b39-173b-49df-84d9-5b4738b84c4d)

New sinegen model:

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/2b52d5ee-9886-4403-9d3f-d9cbccc05ac1)

**Creating a phase difference using a constant**

So here I used kind of a dumb method to do so, which I realised wasn't the best implementation until task 3, where I modified it to make it better.

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/8b1e4b5b-a1a5-4d85-a95e-ef1c50e7f68d)

If you look at my `rom2ports.sv` `always_ff` above, you can see that I added an offset which reads the offset value coming from the top level module `sinegen.sv`:

![image](https://github.com/booth-algo/Lab2-SigGen/assets/107279223/aa41c2dc-3080-4e5c-b5f6-b88d72b8937d)

This results in an offset delay being created:

