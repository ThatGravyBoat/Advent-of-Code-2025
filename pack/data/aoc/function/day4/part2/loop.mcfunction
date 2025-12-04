scoreboard players set $accessible temp 0
scoreboard players add $iteration temp 1
scoreboard players set $x temp 0
scoreboard players set $y temp 0

scoreboard players set $replace temp 1
function aoc:day4/calculate/calculate

scoreboard players operation $output temp += $accessible temp
execute if score $accessible temp matches 1.. run function aoc:day4/part2/loop