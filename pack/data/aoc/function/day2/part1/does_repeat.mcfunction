execute store result score $repeat_length temp run data get storage aoc:day2 one

scoreboard players operation $repeat_even temp = $repeat_length temp
scoreboard players operation $repeat_even temp %= $2 temp

scoreboard players operation $repeat_middle temp = $repeat_length temp
scoreboard players operation $repeat_middle temp /= $2 temp

execute if score $repeat_even temp matches 1 run scoreboard players set $repeats temp 0
execute if score $repeat_even temp matches 1 run return 0

execute store result storage aoc:day2 repeat_middle int 1 run scoreboard players get $repeat_middle temp
function aoc:day2/loop/range_for_each_does_repeat_split with storage aoc:day2

execute store success score $is_not_equal temp run data modify storage aoc:day2 split_1 set from storage aoc:day2 split_2

execute if score $is_not_equal temp matches 0 run scoreboard players set $repeats temp 1
execute unless score $is_not_equal temp matches 0 run scoreboard players set $repeats temp 0