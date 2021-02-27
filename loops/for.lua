--[[

for loop syntax

A for loop is a repetition control structure that allows you to
efficiently write a loop that needs to execute a specific number of times.

base syntax:

```
for init,max/min value, increment
do
   statement(s)
end
```

The init step is executed first, and only once. This step allows you to declare
and initialize any loop control variables.

Next, the max/min. This is the maximum or minimum value till which the loop continues
to execute. It creates a condition check internally to compare between the initial
value and maximum/minimum value.

After the body of the for loop executes, the flow of the control jumps back up to the
increment/decrement statement. This statement allows you to update any loop control variables.

The condition is now evaluated again. If it is true, the loop executes and the process repeats
itself (body of loop, then increment step, and then again condition). After the condition becomes
false, the for loop terminates.


--]]

for a = 10, 1, -1
do
    print("valor of a:", a)
end

