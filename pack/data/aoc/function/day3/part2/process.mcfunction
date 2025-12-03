$data modify storage aoc:day3 value set value "$(value)"
$data modify storage aoc:day3 text set value "$(value)"

scoreboard players set $cycle temp 11
scoreboard players set $index temp -1
data modify storage aoc:day3 output set value ""

function aoc:day3/part2/process_foreach

data modify storage aoc:day3 biggest append from storage aoc:day3 output

