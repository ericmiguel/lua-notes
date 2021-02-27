--[[

Arrays are ordered arrangement of objects, which may be a one-dimensional array containing
a collection of rows or a multi-dimensional array containing multiple rows and columns.

In Lua, arrays are implemented using indexing tables with integers. The size of an array
is not fixed and it can grow based on our requirements, subject to memory constraints.

Accordingly to the official documentation

"Frequently, in Lua, we assume that an array ends just before its first nil element.
This convention has one drawback: We cannot have a nil inside an array."

Therefore, Lua doesn't accept null values inside arrays.

Another strange feature is Lua doesn't have a array size counter, like len() in Python.
Until now, the only method I found so far is iterating all over the array.

--]]


--[[
Unidimensional arrays
--]]

local array = {"Lua", "Notes"}

-- the first print will be nil, because the indexing starts at 1 (pretty unusual, huh?!)
for i = 0, 2, 1 do
	print(array[i])
end


--[[
Multi-dimensional arrays
--]]

array = {}

for i = 1, 3 do
   array[i] = {}
   for j = 1, 3 do
      array[i][j] = i * j
   end
end

-- acessing the array
for i = 1, 3 do
   for j = 1, 3 do
      print(array[i][j])
   end
end


