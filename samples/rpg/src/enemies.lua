local enemies = {}

function enemies.randomEnemy(level)

    --[[

	Generate a random enemy.

	Parameters:
		> level (int) : player level

	Returns:
		> enemy (table) : a random enemy

	--]]

    local names = {"Minotaur", "Olog-Hai", "Chuck Norris", "The Blog", "Sepiroth", "The Balrog"}

    local enemy = {}

    enemy.name = names[math.random(#names)];
    enemy.hp = 15 + level * math.random(7, 14);
    enemy.atk = 2 + math.floor(100 * level * (math.random() + 0.5)) / 100; -- round down
    enemy.def = 2 + math.ceil(level * (math.random() + 0.5)); -- round up
    enemy.level = level;
    enemy.gold = 5 * level;

    return enemy;
end

return enemies
