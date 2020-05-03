
deadlock.add_stack("radar", "__stacked-space-science__/graphics/stacked-radar.png", "deadlock-stacking-2", 64, "item", 4)
deadlock.add_stack("satellite", "__stacked-space-science__/graphics/stacked-satellite.png", "deadlock-stacking-3", 64, "item", 4)

local recipe_stacked_satellite = util.table.deepcopy(data.raw["recipe"]["satellite"])

recipe_stacked_satellite.name = "deadlock-stack-satellite"
recipe_stacked_satellite.enabled = true
recipe_stacked_satellite.ingredients = {
                                         {"deadlock-stack-low-density-structure", 100},
                                         {"deadlock-stack-solar-panel", 100},
                                         {"deadlock-stack-accumulator", 100},
                                         {"deadlock-stack-radar", 5},
                                         {"deadlock-stack-processing-unit", 100},
                                         {"deadlock-stack-rocket-fuel", 50}
                                       }
recipe_stacked_satellite.energy_required = recipe_stacked_satellite.energy_required * settings.startup["deadlock-stack-size"].value
recipe_stacked_satellite.result = "deadlock-stack-satellite"

data:extend({recipe_stacked_satellite})
