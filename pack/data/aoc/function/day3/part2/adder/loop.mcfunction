$scoreboard players set $index temp $(index)
scoreboard players add $index temp 1
execute store result storage aoc:day3 adder.index int 1 run scoreboard players get $index temp

$execute store result score $biggest_length temp run data get storage aoc:day3 biggest[$(index)]

execute if score $biggest_length temp matches 0 if score $index temp < $length temp run return run function aoc:day3/part2/adder/loop with storage aoc:day3 adder
execute if score $biggest_length temp matches 0 run return 0

$data modify storage aoc:day3 adder.cast.input set string storage aoc:day3 biggest[$(index)] -1
$data modify storage aoc:day3 biggest[$(index)] set string storage aoc:day3 biggest[$(index)] 0 -1

data modify storage aoc:day3 adder.performed set value true

execute store result score $add temp run function aoc:utils/cast_to_number with storage aoc:day3 adder.cast
scoreboard players operation $sum temp += $add temp

execute if score $index temp < $length temp run function aoc:day3/part2/adder/loop with storage aoc:day3 adder