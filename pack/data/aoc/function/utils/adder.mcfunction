data remove storage utils:adder input
data remove storage utils:adder index
data remove storage utils:adder cast
data remove storage utils:adder final_output
data remove storage utils:adder output

data modify storage utils:adder final_output.value set value ""
function aoc:utils/adder/outer_loop
data modify storage utils:adder output set from storage utils:adder final_output.value

data remove storage utils:adder input
data remove storage utils:adder inputs
data remove storage utils:adder index
data remove storage utils:adder cast
data remove storage utils:adder final_output