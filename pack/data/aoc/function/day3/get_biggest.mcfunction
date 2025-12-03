scoreboard players add $index temp 1
data modify storage aoc:day3 cast.input set string storage aoc:day3 text 0 1
data modify storage aoc:day3 text set string storage aoc:day3 text 1

# if (aoc:day3.text.length()) == 0 return 0
execute store result score $length temp run data get storage aoc:day3 text
$execute if score $length temp matches ..$(max) run return 0

execute store result score $num temp run function aoc:utils/cast_to_number with storage aoc:day3 cast

execute if score $num temp > $biggest temp run scoreboard players operation $biggest_index temp = $index temp
execute if score $num temp > $biggest temp run scoreboard players operation $biggest temp = $num temp

execute if score $length temp matches 0 run return 0

$function aoc:day3/get_biggest { "max": $(max) }