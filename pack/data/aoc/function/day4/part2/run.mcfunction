data modify storage aoc:day4 grid set value []
function aoc:day4/part2/input

execute store result score $row_length temp run data get storage aoc:day4 grid[0]
execute store result score $col_length temp run data get storage aoc:day4 grid

scoreboard players set $iteration temp 0
function aoc:day4/part2/loop