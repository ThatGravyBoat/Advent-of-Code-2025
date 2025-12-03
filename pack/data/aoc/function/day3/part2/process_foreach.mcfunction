scoreboard players operation $cycle temp += $-1 temp
execute store result storage aoc:day3 max int 1 run scoreboard players get $cycle temp

scoreboard players set $biggest temp -1
scoreboard players set $biggest_index temp -1

function aoc:day3/get_biggest with storage aoc:day3

scoreboard players operation $index temp = $biggest_index temp
scoreboard players operation $temp temp = $biggest_index temp
scoreboard players add $temp temp 1

execute store result storage aoc:day3 index int 1 run scoreboard players get $temp temp
function aoc:day3/substr with storage aoc:day3

execute store result storage aoc:day3 append int 1 run scoreboard players get $biggest temp
function aoc:day3/part2/concat with storage aoc:day3

execute if score $cycle temp matches 0.. run function aoc:day3/part2/process_foreach