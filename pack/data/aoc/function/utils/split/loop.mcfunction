data modify storage utils:split output append string storage utils:split input 0 1
data modify storage utils:split input set string storage utils:split input 1
execute store result score $split_length utils run data get storage utils:split input
execute if score $split_length utils matches 1.. run function aoc:utils/split/loop