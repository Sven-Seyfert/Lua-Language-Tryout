-- functions
local function seperator( i )
    return print( string.rep( '-', 2 ) .. ' ' .. i .. ' ' .. string.rep( '-', 36 ) .. '\n' )
end

local function factorial_of_number( n )
    if n == 0 then
        return 1
    elseif n < 0 then
        print( 'Exercice 1.1' )
        return 0
    else
        return n * factorial_of_number( n - 1 )
    end
end

-- io.read
seperator( 1 )
print( 'Enter a number' )
local i = io.read( '*n' )
print( factorial_of_number( i ) )
print( '' )

-- comments
--[[
    io.write( 'multi line comment' )
    print( 'multi line comment' )
--]]

-- type
seperator( 2 )
print( 'type a: ' .. type( 'a' ) )
local a = 10
print( 'type a: ' .. type( a ) )
print( '' )

-- string.format
seperator( 3 )
local s = string.format('%q', 'a string with "quotes" and \n new line')
print( s )
print( '' )

-- boolean test
seperator( 4 )
print( type( nil ) == nil )
print( '' )

-- script arguments
seperator( 5 )
print( arg[-1] )
print( arg[0] )
print( '' )
