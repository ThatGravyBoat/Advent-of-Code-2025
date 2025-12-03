$data modify storage aoc:day2 value set value "$(value)"

data modify storage aoc:day2 part set value ""
data remove storage aoc:day2 equals
data remove storage aoc:day2 parts

function aoc:day2/process/step

data remove storage aoc:day2 part
data remove storage aoc:day2 char
data remove storage aoc:day2 value
data remove storage aoc:day2 equals

scoreboard players set $parts_index temp 0
data modify storage aoc:day2 results set value []
function aoc:day2/loop/parts_for_each

data remove storage aoc:day2 equals
data remove storage aoc:day2 one
data remove storage aoc:day2 two
data remove storage aoc:day2 parts
data remove storage aoc:day2 repeat_length
data remove storage aoc:day2 repeat_middle
data remove storage aoc:day2 parts_index_1
data remove storage aoc:day2 parts_index_2
data remove storage aoc:day2 split_1
data remove storage aoc:day2 split_2
data remove storage aoc:day2 repeat_end
data remove storage aoc:day2 repeat_check
data remove storage aoc:day2 repeat_start
data remove storage aoc:day2 repeat_check_substr

data modify storage utils:adder inputs set from storage aoc:day2 results
data remove storage aoc:day2 results
function aoc:utils/adder
data modify storage aoc:day2 output set from storage utils:adder output
