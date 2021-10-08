local quiz_scores = {
    mark = 88.7,
    john = 99,4,
    mary = 67.7,
    paul = 45.0,
    caroline = 88.5,
}

local game_prices = {
    599.99,
    455.23,
    600.00,
    190.00
}

for key, value in pairs(quiz_scores) do
    print('Key: ' .. key .. ', Value: ' .. value)
end

print('')

for index, value in ipairs(game_prices) do
    print('Index: ' .. index .. ', Value: ' .. value)
end
