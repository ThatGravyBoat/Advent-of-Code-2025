execute store result score $adder_length utils run data get storage utils:adder inputs
scoreboard players set $adder_sum utils 0
data modify storage utils:adder index set value 0
data remove storage utils:adder performed

function aoc:utils/adder/loop with storage utils:adder

execute unless data storage utils:adder performed run return 0

data modify storage utils:adder cast.storage set value "utils:adder cast.output"
execute store result storage utils:adder cast.input int 1 run scoreboard players get $adder_sum utils
function aoc:utils/cast_to_string with storage utils:adder cast

data modify storage utils:adder final_output.char set string storage utils:adder cast.output -1
data modify storage utils:adder cast.carry set string storage utils:adder cast.output 0 -1

function aoc:utils/adder/concat with storage utils:adder final_output
data modify storage utils:adder inputs append from storage utils:adder cast.carry

function aoc:utils/adder/outer_loop
