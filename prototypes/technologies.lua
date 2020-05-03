
data:extend(
    {
        {
            type = "technology",
            name = "stacked-space-science",
            localised_name = {"technology-name.stacked-space-science"},
            localised_description = {"technology-description.stacked-space-science"},
            icon_size = 64,
            icon = "__stacked-space-science__/graphics/stacked-space-science-pack.png",
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "stack-rocket-part"
                },
                {
                    type = "unlock-recipe",
                    recipe = "stack-rocket-silo"
                },
                {
                    type = "unlock-recipe",
                    recipe = "deadlock-stack-satellite"
                }
            },
            unit =
            {
                count = 10000,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1}
                },
                time = 60
            },
            prerequisites = {"space-science-pack"},
            order = "c-a"
        }
    }
)