--[[

xml2lua
luarocks install xml2lua

- docks:
https://github.com/manoelcampos/xml2lua

- dependencies
no dependencies (pure Lua)

--]]


local xml2lua = require("xml2lua")
local handler = require("xmlhandler.tree")
local http_request = require("http.request")


local url = "http://telemetriaws1.ana.gov.br/ServiceANA.asmx/ListaEstacoesTelemetricas?statusEstacoes=&origem="

local headers, stream = assert(http_request.new_from_uri(url):go())
local body = assert(stream:get_body_as_string())

if headers:get ":status" ~= "200" then
    error(body)
end

--Instantiates the XML parser
local parser = xml2lua.parser(handler)
parser:parse(body)


for j, g in pairs(handler.root["DataSet"]["diffgr:diffgram"]["Estacoes"]["Table"]) do
    print(j, g["CodEstacao"], g["NomeEstacao"], g["Latitude"], g["Longitude"])
end