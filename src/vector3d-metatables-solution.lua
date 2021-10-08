-- declaration
local meta = {}
local vector3d = {}



-- constructor
function vector3d.new(x, y, z)
  local vector = {x = x, y = y, z = z}

  setmetatable(vector, meta)

  return vector
end



-- functions (metamethods)
function vector3d.add(v1, v2)
  return vector3d.new(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
end
meta.__add = vector3d.add -- bind the function to the metamethod

function vector3d.sub(v1, v2)
  return vector3d.new(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z)
end
meta.__sub = vector3d.sub -- bind the function to the metamethod

function vector3d.tostring(v)
  return '(' .. v.x .. ', ' .. v.y .. ', ' .. v.z .. ')'
end
meta.__tostring = vector3d.tostring -- bind the function to the metamethod



-- processing
-- create two vector3d tables
local velocity = vector3d.new(10.0, -3.5, 0.0)
local position = vector3d.new(5.0, 5.0, 5.0)

-- add and subtract the two vectors
local result_add = velocity + position
local result_sub = velocity - position

-- print the vectors using tostring
print('Velocity vector:     ' .. tostring(velocity))
print('Position vector:     ' .. tostring(position))
print('Position + Velocity: ' .. tostring(result_add))
print('Position - Velocity: ' .. tostring(result_sub))
