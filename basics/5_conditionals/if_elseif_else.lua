--[[

An if statement consists of a Boolean expression followed by one or more statements.

basic syntax:

```
if(boolean_expression)
then
    statement(s) will execute if the boolean expression is true
end
```

If the Boolean expression evaluates to true, then the block of code inside the if
statement will be executed. If Boolean expression evaluates to false, then the
first set of code after the end of the if statement(after the closing curly brace)
will be executed.

Lua programming language assumes any combination of Boolean true and non-nil values
as true, and if it is either Boolean false or nil, then it is assumed as false value.
It is to be noted that in Lua, zero will be considered as true.


--]]


local a = 30

if a < 20 then
    -- [ if condition is true  --]
    print("a is less than 20")
elseif a == 22 then
    -- [ if else if condition is true  --]
    print("a == 22")
else
    -- [ if condition is false  --]
    print("a is not less than 20")
end

