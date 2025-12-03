$scoreboard players set $adder_index utils $(index)
scoreboard players add $adder_index utils 1
execute store result storage utils:adder index int 1 run scoreboard players get $adder_index utils

$execute store result score $adder_element_length utils run data get storage utils:adder inputs[$(index)]

execute if score $adder_element_length utils matches 0 if score $adder_index utils < $adder_length utils run return run function aoc:utils/adder/loop with storage utils:adder
execute if score $adder_element_length utils matches 0 run return 0

$data modify storage utils:adder input set string storage utils:adder inputs[$(index)] -1
$data modify storage utils:adder inputs[$(index)] set string storage utils:adder inputs[$(index)] 0 -1

data modify storage utils:adder performed set value true

execute store result score $adder_add utils run function aoc:utils/cast_to_number with storage utils:adder
scoreboard players operation $adder_sum utils += $adder_add utils

execute if score $adder_index utils < $adder_length utils run function aoc:utils/adder/loop with storage utils:adder