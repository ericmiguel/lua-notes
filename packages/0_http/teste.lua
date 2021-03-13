--[[

http
- docs
https://daurnimator.github.io/lua-http/0.4/

dependencies:
- apt-get install m4
- luarocks install luaossl
- luarocks install basexx
- luarocks install lpeg
- luarocks install lpeg_patterns
- luarocks install binaryheap
- luarocks install fifo
- luarocks install luaossl
- luarocks install http


rapidjson
- docs
https://github.com/xpol/lua-rapidjson

dependencies:
- apt-get install cmake
- luarocks install rapidjson

--]]

local http_request = require "http.request"
local rapidjson = require('rapidjson')

local headers, stream = assert(http_request.new_from_uri("https://jsonplaceholder.typicode.com/todos/1"):go())
local body = assert(stream:get_body_as_string())

if headers:get ":status" ~= "200" then
    error(body)
end

resp = rapidjson.decode(body)

print("id de usuário: ", resp.userId, "\ntítulo: ", resp.title)

