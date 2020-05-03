
local recipe_rocket_silo = util.table.deepcopy(data.raw["recipe"]["rocket-silo"])
local recipe_rocket_part = util.table.deepcopy(data.raw["recipe"]["rocket-part"])
local rocket_silo = util.table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
local item_rocket_silo = util.table.deepcopy(data.raw["item"]["rocket-silo"])

recipe_rocket_part.name = "stack-rocket-part"
recipe_rocket_part.ingredients = {{"deadlock-stack-rocket-control-unit", 10}, {"deadlock-stack-low-density-structure", 10}, {"deadlock-stack-rocket-fuel", 10}}
recipe_rocket_part.energy_required = recipe_rocket_part.energy_required * settings.startup["deadlock-stack-size"].value

rocket_silo.name = "stack-rocket-silo"
rocket_silo.fixed_recipe = recipe_rocket_part.name
rocket_silo.order = "z-e[rocket-silo-2]"

recipe_rocket_silo.name = rocket_silo.name
recipe_rocket_silo.result = rocket_silo.name

item_rocket_silo.name = rocket_silo.name
item_rocket_silo.place_result = rocket_silo.name
item_rocket_silo.order = item_rocket_silo.order .. "2"

data:extend({recipe_rocket_part})
data:extend({rocket_silo})
data:extend({item_rocket_silo})
data:extend({recipe_rocket_silo})
