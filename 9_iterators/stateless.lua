--[[

Stateless Iterators

By the name itself we can understand that this type of iterator function does
not retain any state. Let us now see an example of creating our own iterator
using a simple function that prints the squares of n numbers.

--]]


function Square(iteratorMaxCount, currentNumber)
    --[[

    A stateless iterator example. Mimic the way ipairs works.

	Calculates the squared value of a number.

    Parameters:
    	> iteratorMaxCount (int): object length.
    	> currentNumber (int): start index position.

    Returns:
    	> iteratorMaxCount (int):
    	> currentNumber (int):

    --]]

    if currentNumber < iteratorMaxCount then
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end

end

function Squares(iteratorMaxCount)
    return Square, iteratorMaxCount, 0
end

for i, n in Squares(3) do
    print(i, n)
end