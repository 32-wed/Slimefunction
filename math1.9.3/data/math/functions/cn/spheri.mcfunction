summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score x cn run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score y cn run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score z cn run data get entity @e[tag=stmp,limit=1] Pos[2] 10000

execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -0.0001 run scoreboard players get θ cn
execute store result entity @e[tag=stmp,limit=1] Rotation[1] float -0.0001 run scoreboard players get φ cn

execute as @e[tag=stmp] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score stemp int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
scoreboard players set stemp2 int 1
execute if score stemp int matches ..-1 run scoreboard players set stemp2 int -1
execute if score stemp int matches ..-1 run scoreboard players operation stemp int *= -1 int
scoreboard players operation stemp1 int = stemp int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= ρ cn
scoreboard players operation stemp1 int *= ρ cn
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp int *= stemp2 int
scoreboard players operation x cn += stemp int
execute store result score stemp int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
scoreboard players set stemp2 int 1
execute if score stemp int matches ..-1 run scoreboard players set stemp2 int -1
execute if score stemp int matches ..-1 run scoreboard players operation stemp int *= -1 int
scoreboard players operation stemp1 int = stemp int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= ρ cn
scoreboard players operation stemp1 int *= ρ cn
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp int *= stemp2 int
scoreboard players operation y cn += stemp int
execute store result score stemp int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
scoreboard players set stemp2 int 1
execute if score stemp int matches ..-1 run scoreboard players set stemp2 int -1
execute if score stemp int matches ..-1 run scoreboard players operation stemp int *= -1 int
scoreboard players operation stemp1 int = stemp int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= ρ cn
scoreboard players operation stemp1 int *= ρ cn
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp int *= stemp2 int
scoreboard players operation z cn += stemp int

kill @e[tag=stmp]