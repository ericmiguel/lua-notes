--[[

repeat until

Unlike the for and while loops, which test the loop condition
at the top of the loop, the repeat...until loop in Lua programming
language checks its condition at the bottom of the loop.

A repeat...until loop is similiar to a while loop, except that a
until...repeat loop is guaranteed to execute at least one time.

base syntax:

```
repeat
	statement(s)
until(condition)
```

--]]


A = 10
repeat
	print("value of A:", A)
	A = A + 1
until(A > 15) -- will run until a == 15

--[[
try change '>' to '<' sign. The repeat loop will run a first time
then evaluate the condition, then stop.
--]]


-- same, but written using while loop
B = 10
while (B < 15) do
	print("value of B:", B)
	B = B + 1
end -- will run until b == 14

--[[
try change '<' to '<'. The while loop will not run, since the
condition was not met.
--]]


-- same, but written using for loop
for c = 10, 15, 1 do
	print("value of c:", c)
end

--[[
same behavior of while loop as the condition is evaluated at the top.
--]]
