$data modify storage aoc:day3 value set value "$(value)"
$data modify storage aoc:day3 text set value "$(value)"

scoreboard players set $index temp -1
scoreboard players set $biggest temp -1
scoreboard players set $biggest_index temp -1

function aoc:day3/get_biggest  { "max": 0 }

execute store result storage aoc:day3 first int 1 run scoreboard players get $biggest temp
scoreboard players operation $index temp = $biggest_index temp
scoreboard players operation $temp temp = $biggest_index temp
scoreboard players add $temp temp 1
scoreboard players set $biggest temp -1
scoreboard players set $biggest_index temp -1

execute store result storage aoc:day3 index int 1 run scoreboard players get $temp temp
function aoc:day3/substr with storage aoc:day3

function aoc:day3/get_biggest { "max": -1 }

execute store result storage aoc:day3 second int 1 run scoreboard players get $biggest temp

function aoc:day3/part1/concat with storage aoc:day3

scoreboard players operation $result temp += $biggest temp