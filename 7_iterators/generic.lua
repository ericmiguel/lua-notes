--[[
Iterator is a construct that enables you to traverse through the elements
of the so called collection or container. In Lua, these collections often
refer to tables, which are used to create various data structures like array.
--]] --[[

Generic iterator

A generic for iterator provides the key value pairs of each element in the
collection. A simple example is given below.

--]]

print("Generic iterator")

Array = {"Lua", "Notes"}

for key, value in ipairs(Array) do
    print(key, value)
end

