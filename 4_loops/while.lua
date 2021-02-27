--[[

while loop syntax 

basic syntax:

```
while(condition)
do
	statement(s)
end
```

Here, statement(s) may be a single statement or a block of statements.
The condition may be any expression, and true is any non-zero value.
The loop iterates while the condition is true. When the condition becomes
false, the program control passes to the line immediately following the loop.

--]]


A = 10

while(A < 20)
do
	print("value of a:",a)
	A = A + 1
end


