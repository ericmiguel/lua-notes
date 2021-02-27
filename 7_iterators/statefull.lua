--[[

Stateful Iterators
The previous example of iteration using function does not retain the state. Each time the function is called,
it returns the next element of the collection based on a second variable sent to the function. To hold the state
of the current element, closures (#) are used. Closure retain variables values across functions calls. To create a
new closure, we create two functions including the closure itself and a factory, the function that creates the closure.

Let us now see an example of creating our own iterator in which we will be using closures.

--]]

print("Stateful iterator")

Array = {"Lua", "Notes"}

function ElementIterator(collection)

    local index = 0
    local count = #collection

    -- The closure function is returned
    return function()
        index = index + 1
        if index <= count then
            -- return the current element of the iterator
            return collection[index]
        end
    end
end

for element in ElementIterator(Array) do
    print(element)
end

--[[

The stateful iterator works in a very close manner Python in-built "range(x, y)" function.

--]]
