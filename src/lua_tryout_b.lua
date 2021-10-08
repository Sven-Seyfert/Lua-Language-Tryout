-- const
local GAME_WIDTH  = 800
local GAME_HEIGHT = 600



-- declaration
local player = {
    width  = 32,
    height = 32,
    x      = 0,
    y      = 0
}

local enemy = {
    width  = 50,
    height = 50,
    x      = 100,
    y      = 100
}

local distance = 0
local angle = 0



-- functions
local function get_user_input_number()
    return io.read('*n')
end

local function initialize_random()
    math.randomseed(os.time())
end

local function round(number, digits)
    return tonumber(string.format('%.' .. digits ..'f', number))
end

local function set_player_to_centered_position()
    player.x = math.floor((GAME_WIDTH  / 2) - (player.width  / 2))
    player.y = math.floor((GAME_HEIGHT / 2) - (player.height / 2))
end

local function set_enemy_to_random_position()
    enemy.x = math.random(1, GAME_WIDTH)
    enemy.y = math.random(1, GAME_HEIGHT)
end

local function calculate_distance_from_enemy_to_player()
    distance = math.sqrt((enemy.x - player.x) ^ 2 + (enemy.y - player.y) ^ 2)
    distance = round(distance, 2)
end

local function calculate_angle_from_enemy_to_player()
    angle = math.atan((enemy.y - player.y), (enemy.x - player.x)) -- in radian
    angle = math.deg(angle) -- in degree
end

local function printInformation()
    print('Player:   ' .. player.x, player.y)
    print('Enemy:    ' .. enemy.x, enemy.y)
    print('Distance: ' .. distance)
    print('Angle:    ' .. angle)
end

local function exit()
    os.exit()
end



-- processing
local options_functions_table =
{
    [1] = set_player_to_centered_position,
    [2] = set_enemy_to_random_position,
    [3] = calculate_distance_from_enemy_to_player,
    [4] = calculate_angle_from_enemy_to_player
}

local option = 0

while option <= 4 do
    print('\nSelect a option:')

    initialize_random()

    option = get_user_input_number()
    local found_function = options_functions_table[option]

    if found_function then
        found_function()
        printInformation()
    else
        print('Only numbers 1, 2, 3, 4 are valid inputs.')

        exit()
    end
end
