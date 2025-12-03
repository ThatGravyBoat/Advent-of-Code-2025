execute store result score $length temp run data get storage aoc:day2 value

execute if score $length temp matches 0 run data modify storage aoc:day2 parts append from storage aoc:day2 part
execute if score $length temp matches 0 run return 0

data modify storage aoc:day2 char set string storage aoc:day2 value 0 1
data modify storage aoc:day2 value set string storage aoc:day2 value 1

data modify storage aoc:day2 equals set value "-"
execute store success score $success temp run data modify storage aoc:day2 equals set from storage aoc:day2 char
execute if score $success temp matches 0 run return run function aoc:day2/process/append

data modify storage aoc:day2 equals set value ","
execute store success score $success temp run data modify storage aoc:day2 equals set from storage aoc:day2 char
execute if score $success temp matches 0 run return run function aoc:day2/process/append

function aoc:day2/process/concat with storage aoc:day2
function aoc:day2/process/step