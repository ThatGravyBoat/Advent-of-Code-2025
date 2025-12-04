data modify storage aoc:day4 grid set value []
function aoc:day4/part1/input

scoreboard players set $x temp 0
scoreboard players set $y temp 0

execute store result score $row_length temp run data get storage aoc:day4 grid[0]
execute store result score $col_length temp run data get storage aoc:day4 grid

scoreboard players set $replace temp 0
function aoc:day4/calculate/calculate

scoreboard players operation $output temp = $accessible temp