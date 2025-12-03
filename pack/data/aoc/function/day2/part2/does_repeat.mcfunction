# repeat_check = one + one
function aoc:day2/part2/does_repeat_concat with storage aoc:day2

execute store result score $repeat_length temp run data get storage aoc:day2 one
scoreboard players set $repeats temp 0
scoreboard players set $repeat_start temp 1
scoreboard players set $repeat_end temp 1
scoreboard players operation $repeat_end temp += $repeat_length temp

function aoc:day2/part2/does_repeat_loop