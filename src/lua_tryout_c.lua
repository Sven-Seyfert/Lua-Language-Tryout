-- const
local EXIT_LOOP_NUMBER = 0



-- declaration
local user_attempts  = 0
local sum_of_numbers = 0



-- functions
local function get_user_input_number()
    return io.read('*n')
end

local function add_two_numbers(number_one, number_two)
    return number_one + number_two
end

local function increase_number(number)
    return number + 1
end



-- processing
-- while user_input_number ~= EXIT_LOOP_NUMBER do
--     print('Enter a number (or 0 to exit):')

--     user_input_number = get_user_input_number()

--     if user_input_number ~= EXIT_LOOP_NUMBER then
--         sum_of_numbers    = add_two_numbers(sum_of_numbers, user_input_number)
--         user_attempts     = increase_number(user_attempts)
--     end
-- end

repeat
    print('Enter a number (or 0 to exit):')

    local user_input_number = get_user_input_number()

    if user_input_number ~= EXIT_LOOP_NUMBER then
        sum_of_numbers    = add_two_numbers(sum_of_numbers, user_input_number)
        user_attempts     = increase_number(user_attempts)
    end
until user_input_number == EXIT_LOOP_NUMBER

print('Average of all ' .. user_attempts .. ' values is ' .. sum_of_numbers / user_attempts)
