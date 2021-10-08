local my_name = 'Sven Seyfert'
local my_age  = 35

print('My name is ' .. my_name .. '. And I am ' .. my_age .. ' years old.' .. '\n\r')

local function return_lower_case_name(name)
    return string.lower(name)
end

if return_lower_case_name(my_name) == 'sven seyfert' then
    print('lowercase' .. '\n\r')
end

print('Sub string: ' .. string.sub(my_name, 4, 6))
print('String replace: ' .. string.gsub(my_name, 'e', 'a'))
print('String length: ' .. string.len(my_name))
print('String length: ' .. #my_name)
print('String find: ' .. string.find(my_name, 'ey') .. '\n\r')

local raw_multiline_string = [[
    test one
    test two
more tests
    and so on
]]

print(raw_multiline_string .. '\n\r')

math.randomseed(os.time())

local function get_random_number()
    return math.random()
end

for _ = 1, 10 do
    print('Random:' .. get_random_number())
end

for i = 1, 20, 2 do
    print('Random number' .. i .. ': ' .. get_random_number())
end

local loop_counter = 1
while loop_counter < 16 do
    print(loop_counter)

    loop_counter = loop_counter + 1
end
