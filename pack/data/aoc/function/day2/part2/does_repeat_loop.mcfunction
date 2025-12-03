execute if score $repeat_start temp >= $repeat_length temp run return 0

execute store result storage aoc:day2 repeat_start int 1 run scoreboard players get $repeat_start temp
execute store result storage aoc:day2 repeat_end int 1 run scoreboard players get $repeat_end temp

function aoc:day2/part2/does_repeat_substr with storage aoc:day2
execute store success score $is_not_equal temp run data modify storage aoc:day2 repeat_check_substr set from storage aoc:day2 one

execute if score $is_not_equal temp matches 0 run scoreboard players set $repeats temp 1
execute if score $is_not_equal temp matches 0 run return 0

scoreboard players add $repeat_start temp 1
scoreboard players add $repeat_end temp 1
function aoc:day2/part2/does_repeat_loop

