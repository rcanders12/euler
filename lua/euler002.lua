--[[
  Each new term in the Fibonacci sequence is generated by adding the previous
  two terms. By starting with 1 and 2, the first 10 terms will be:

  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  By considering the terms in the Fibonacci sequence whose values do
  not exceed four million, find the sum of the even-valued terms.
  ]]

local helper = require("lua/helper")
local fibA = 0
local fibB = 1
local fibX = 0
local limit = 4000000
local sum = 0

while fibB < limit do
  fibX = fibA + fibB
  fibA = fibB
  fibB = fibX

  if fibA % 2 == 0 then
    sum = sum + fibA
  end
end

helper(sum)
