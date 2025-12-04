$scoreboard players set $check_x temp $(x)
$scoreboard players set $check_y temp $(y)

scoreboard players set $out_of_bounds temp 0
execute if score $check_x temp >= $row_length temp run scoreboard players set $out_of_bounds temp 1
execute if score $check_x temp matches ..-1 run scoreboard players set $out_of_bounds temp 1
execute if score $check_y temp >= $col_length temp run scoreboard players set $out_of_bounds temp 1
execute if score $check_y temp matches ..-1 run scoreboard players set $out_of_bounds temp 1

execute if score $out_of_bounds temp matches 1 run return run scoreboard players set $is_roll temp 0

$data modify storage aoc:day4 check set from storage aoc:day4 grid[$(x)][$(y)]
execute store success score $success temp run data modify storage aoc:day4 check set value "@"
execute if score $success temp matches 0 run scoreboard players set $is_roll temp 1
execute unless score $success temp matches 0 run scoreboard players set $is_roll temp 0