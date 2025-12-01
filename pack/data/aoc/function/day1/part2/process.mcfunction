data modify storage aoc:day1 entry set value {}
$data modify storage aoc:day1 entry.value set value "$(value)"
data modify storage aoc:day1 entry.dir set string storage aoc:day1 entry.value 0 1
data modify storage aoc:day1 entry.cast.input set string storage aoc:day1 entry.value 1
execute store result storage aoc:day1 entry.num int 1 run function aoc:utils/cast_to_number with storage aoc:day1 entry.cast

execute store success score $success temp run data modify storage aoc:day1 entry.dir set value "L"
execute store result score $value temp run data get storage aoc:day1 entry.num

execute if score $success temp matches 1 run execute run scoreboard players operation $diff temp = $max temp
execute if score $success temp matches 1 run execute run scoreboard players operation $diff temp -= $rotation temp
execute if score $success temp matches 0 run execute run scoreboard players operation $diff temp = $rotation temp

execute if score $diff temp matches 1.. if score $value temp >= $diff temp run scoreboard players add $hits temp 1
scoreboard players operation $temp temp = $value temp
scoreboard players operation $temp temp -= $diff temp
scoreboard players operation $temp temp /= $max temp
scoreboard players operation $temp temp > $0 temp
scoreboard players operation $hits temp += $temp temp

execute if score $success temp matches 1 run scoreboard players operation $rotation temp += $value temp
execute if score $success temp matches 0 run scoreboard players operation $rotation temp -= $value temp

scoreboard players operation $rotation temp %= $max temp