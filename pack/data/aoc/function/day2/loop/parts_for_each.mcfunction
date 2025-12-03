execute store result storage aoc:day2 parts_index_1 int 1 run scoreboard players get $parts_index temp
scoreboard players add $parts_index temp 1
execute store result storage aoc:day2 parts_index_2 int 1 run scoreboard players get $parts_index temp
scoreboard players add $parts_index temp 1

function aoc:day2/loop/parts_for_each_extract with storage aoc:day2

function aoc:day2/loop/range_for_each

execute store result score $parts_length temp run data get storage aoc:day2 parts
execute if score $parts_index temp < $parts_length temp run function aoc:day2/loop/parts_for_each