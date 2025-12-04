function aoc:day4/calculate/check_offset { x: 0, y: 0 }

execute if score $y temp < $row_length temp if score $x temp < $col_length temp if score $is_roll temp matches 0 run return run function aoc:day4/calculate/move
execute if score $is_roll temp matches 0 run return 0

scoreboard players set $nearby temp 0

function aoc:day4/calculate/check_offset { x: -1, y: -1 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1
function aoc:day4/calculate/check_offset { x: 0, y: -1 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1
function aoc:day4/calculate/check_offset { x: 1, y: -1 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1

function aoc:day4/calculate/check_offset { x: -1, y: 0 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1
function aoc:day4/calculate/check_offset { x: 1, y: 0 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1

function aoc:day4/calculate/check_offset { x: -1, y: 1 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1
function aoc:day4/calculate/check_offset { x: 0, y: 1 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1
function aoc:day4/calculate/check_offset { x: 1, y: 1 }
execute if score $is_roll temp matches 1 run scoreboard players add $nearby temp 1

execute store result storage aoc:day4 pos.x int 1 run scoreboard players get $x temp
execute store result storage aoc:day4 pos.y int 1 run scoreboard players get $y temp
execute if score $nearby temp matches ..3 run scoreboard players add $accessible temp 1
execute if score $replace temp matches 1 if score $nearby temp matches ..3 run function aoc:day4/calculate/replace with storage aoc:day4 pos

execute if score $y temp < $row_length temp if score $x temp < $col_length temp run function aoc:day4/calculate/move