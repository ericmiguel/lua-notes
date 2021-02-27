local pythonlike = {}


function pythonlike.iter(collection)

    local index = 0
    local count = #collection

    return function()
        index = index + 1
        if index <= count then
            return collection[index]
        end
    end
end


function pythonlike.range(start, limit)

    --[[

    Python-like in-built `range` function.

    Parameters:
        > start (int): counter start, non-inclusive interval
        > limite (int): counter limit, inclusive interval

    Returns:
        > iterator

    
    Example:
        ```
        for i in Range(0, 4) do
            print(i)
        end
        ```

    ]]

    function _Counter(_limit, _start)

        if _start < _limit then
            _start = _start + 1
            return _start
        end
    end

    return _Counter, limit, start
end


return pythonlike