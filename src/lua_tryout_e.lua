-- declaration
local board     = {}
local player    = 'X'
local move      = 1
local game_over = false



-- functions
local function clear_board()
    for i = 1, 3 do
        board[i] = {}

        for j = 1, 3 do
            board[i][j] = ' '
        end
    end
end

local function display_board()
    print('   1  2  3 ')

    for i = 1, 3 do
        local column1 = board[i][1]
        local column2 = board[i][2]
        local column3 = board[i][3]

        print(i .. ' [' .. column1 .. '][' .. column2 .. '][' .. column3 .. ']')
    end
end

local function is_board_full()
    for i = 1, 3 do
        for j = 1, 3 do
            if board[i][j] == ' ' then
                return false
            end
        end
    end
    return true
end

local function check_rows()
    if board[1][1] ~= ' ' and board[1][1] == board[1][2] and board[1][2] == board[1][3] then
        return board[1][1]
    end

    if board[2][1] ~= ' ' and board[2][1] == board[2][2] and board[2][2] == board[2][3] then
        return board[2][1]
    end

    if board[3][1] ~= ' ' and board[3][1] == board[3][2] and board[3][2] == board[3][3] then
        return board[3][1]
    end

    return nil
end

local function check_columns()
    if board[1][1] ~= ' ' and board[1][1] == board[2][1] and board[2][1] == board[3][1] then
        return board[1][1]
    end

    if board[1][2] ~= ' ' and board[1][2] == board[2][2] and board[2][2] == board[3][2] then
        return board[1][2]
    end

    if board[1][3] ~= ' ' and board[1][3] == board[2][3] and board[2][3] == board[3][3] then
        return board[1][3]
    end

    return nil
end

local function check_diagonals()
    if board[1][1] ~= ' ' and board[1][1] == board[2][2] and board[2][2] == board[3][3] then
        return board[1][1]
    end

    if board[1][3] ~= ' ' and board[1][3] == board[2][2] and board[2][2] == board[3][1] then
        return board[1][3]
    end

    return nil
end

local function check_winner()
    local winner_sign = check_rows()

    if winner_sign ~= nil then
        return winner_sign
    end

    winner_sign = check_columns()

    if winner_sign ~= nil then
        return winner_sign
    end

    winner_sign = check_diagonals()
    if winner_sign ~= nil then
        return winner_sign
    end

    return nil
end

local function is_board_position_already_taken(row, column)
    return board[row][column] ~= ' '
end

local function is_number_odd(number)
    return number % 2 == 0
end

local function increase_number(number)
    return number + 1
end



-- processing
clear_board()

while not game_over do
    display_board()

    print('Enter the row you want to place the symbol ' .. player .. ': ')

    local row_to_play = io.read('*n')

    print('Enter the col you want to place the symbol ' .. player .. ': ')

    local column_to_play = io.read('*n')

    if is_board_position_already_taken(row_to_play, column_to_play) then
        print('Invalid! Please select an empty position.')
    else
        board[row_to_play][column_to_play] = player

        if is_number_odd(move) then
            player = 'X'
        else
            player = 'O'
        end

        move = increase_number(move)

        -- check if there is a winner
        local winner = check_winner()

        if winner ~= nil then
            display_board()

            print('Game Over! The winner is ' .. winner)

            game_over = true
        elseif is_board_full() then
            print('Game Over! Tie.')

            game_over = true
        end
    end
end
