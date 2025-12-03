function aoc:day2/loop/range_for_each_tell with storage aoc:day2
function aoc:day2/loop/range_for_each_does_repeat

execute if score $repeats temp matches 1 run data modify storage aoc:day2 results append from storage aoc:day2 one

data modify storage aoc:day2 equals set from storage aoc:day2 one
execute store success score $success temp run data modify storage aoc:day2 equals set from storage aoc:day2 two

execute if score $success temp matches 0 run return 0

data modify storage utils:adder inputs set value []
data modify storage utils:adder inputs append from storage aoc:day2 one
data modify storage utils:adder inputs append value "1"
function aoc:utils/adder
data modify storage aoc:day2 one set from storage utils:adder output

function aoc:day2/loop/range_for_each