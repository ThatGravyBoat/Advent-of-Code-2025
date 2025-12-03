execute store result score $length temp run data get storage aoc:day3 biggest
scoreboard players set $sum temp 0
data modify storage aoc:day3 adder.index set value 0
data remove storage aoc:day3 adder.performed

function aoc:day3/part2/adder/loop with storage aoc:day3 adder

execute unless data storage aoc:day3 adder.performed run return 0

data modify storage aoc:day3 caster.storage set value "aoc:day3 caster.output"
execute store result storage aoc:day3 caster.input int 1 run scoreboard players get $sum temp
function aoc:utils/cast_to_string with storage aoc:day3 caster

data modify storage aoc:day3 final_output.char set string storage aoc:day3 caster.output -1
data modify storage aoc:day3 caster.carry set string storage aoc:day3 caster.output 0 -1

function aoc:day3/part2/adder/concat with storage aoc:day3 final_output
data modify storage aoc:day3 biggest append from storage aoc:day3 caster.carry

function aoc:day3/part2/adder/outer_loop
