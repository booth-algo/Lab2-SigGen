Task 2 Notes

# Step 1 - Use a dual-port ROM
>> Use a dual-port ROM design (Lec 4 Slide 24)
>> Made changes to sinegen.sv to match the logic in rom2ports.sv

# Step 2 - Adding "offset" logic
>> Adding an extra logic called "offset" to both rom2ports.sv and sinegen.sv so that counter.sv does not have to be changed

# Step 3 - Modifying testbench
>> Modifying testbench by changing the vbdplot output to output both dout1 and dout2 to see the changes plotted on the vbuddy
