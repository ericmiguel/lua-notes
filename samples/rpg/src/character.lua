local store = require "./src/store"
local battle = require "./src/battle"

character = {}

function character.createcharacter()
    --[[

	Generate a character instance.

	Parameters:
		> name (str): character name.

	Returns:
		> character (table): character instance.

	--]]

    io.write('Hello, what is your name? ')
    local name = io.read()
    io.write('Nice to meet you, ', name, '!\n')

    character = {}
    character.name = name;
    character.energy = 100;
    character.hp = 10;
    character.atk = 1;
    character.def = 1;
    character.level = 1;
    character.inventory = {};
    character.inventory.gold = 10;

    return character

end

function character.showStats(obj)
    io.write('\nYour stats:\n')

    for key, value in pairs(obj) do
        if key ~= "inventory" then
            print(key, " -- ", value)
        end
    end

end

function character.showInventory(obj)
    io.write("\nInventory:\n")

    for item, amount in pairs(obj.inventory) do
        print(item, " -- ", amount)
    end

end

--[[
=========================================================================
Player actions
=========================================================================
--]]

local possible_actions = {}
possible_actions[1] = "battle";
possible_actions[2] = "rest";
possible_actions[3] = "buy";
possible_actions[4] = "exit";

function character.rest()
    print("You will rest.")
end

function character.exit()
    os.exit()
end

local actions = {}
actions['battle'] = battle.battle;
actions['rest'] = character.rest;
actions['buy'] = store.buy;
actions['exit'] = character.exit;

function chooseAction()
    io.write("\nWhat do you want to do?\n")

    for index, action in ipairs(possible_actions) do
        print(index, " -- ", action)
    end

    local chosen_action = possible_actions[io.read("*n")]

    return chosen_action

end

function character.doAction(action)

    chosen_action = chooseAction()
    actions[chosen_action]()

end

return character
