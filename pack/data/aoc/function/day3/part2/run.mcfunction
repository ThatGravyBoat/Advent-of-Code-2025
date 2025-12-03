data modify storage aoc:day3 biggest set value []
function aoc:day3/part2/input

#startregion Clean up
data remove storage aoc:day3 output
data remove storage aoc:day3 value
data remove storage aoc:day3 text
data remove storage aoc:day3 append
data remove storage aoc:day3 index
data remove storage aoc:day3 max
data remove storage aoc:day3 cast
data remove storage aoc:day3 first
data remove storage aoc:day3 second
#endregion

scoreboard players set $sum temp 0
data modify storage aoc:day3 final_output.value set value ""

function aoc:day3/part2/adder/outer_loop

#startregion Clean up
data modify storage aoc:day3 output set from storage aoc:day3 final_output.value
data remove storage aoc:day3 adder
data remove storage aoc:day3 caster
data remove storage aoc:day3 biggest
data remove storage aoc:day3 final_output
#endregion
