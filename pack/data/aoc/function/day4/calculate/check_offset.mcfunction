scoreboard players operation $og_x temp = $x temp
scoreboard players operation $og_y temp = $y temp

$scoreboard players set $offset temp $(x)
scoreboard players operation $x temp += $offset temp
$scoreboard players set $offset temp $(y)
scoreboard players operation $y temp += $offset temp

execute store result storage aoc:day4 pos.x int 1 run scoreboard players get $x temp
execute store result storage aoc:day4 pos.y int 1 run scoreboard players get $y temp

function aoc:day4/calculate/check with storage aoc:day4 pos

scoreboard players operation $x temp = $og_x temp
scoreboard players operation $y temp = $og_y temp