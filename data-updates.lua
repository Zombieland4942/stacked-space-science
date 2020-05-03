
-- Add new rocket part to all prod module limitations

for _,mod in pairs(data.raw["module"]) do

    if mod.effect.productivity then
        if mod.limitation then
            table.insert(mod.limitation , "stack-rocket-part")
        end
    end
end
