local enemies = require "./src/enemies"
local character = require "./src/character"

local random_enemy = enemies.randomEnemy(1)
local player = character.createcharacter()

character.showStats(player)
character.showInventory(player)

while true do
    character.doAction()
end
