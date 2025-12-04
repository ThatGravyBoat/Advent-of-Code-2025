scoreboard players add $x temp 1
execute if score $x temp >= $row_length temp run scoreboard players add $y temp 1
scoreboard players operation $x temp %= $row_length temp
function aoc:day4/calculate/calculate