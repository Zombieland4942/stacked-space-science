
script.on_event(defines.events.on_rocket_launched,
   function (e)    
    if e.rocket.get_item_count("deadlock-stack-satellite") > 0 then
        if e.rocket_silo.name == "stack-rocket-silo" then
            e.rocket_silo.get_output_inventory().insert({name="deadlock-stack-space-science-pack", count=1000})
        else
            e.rocket_silo.get_output_inventory().insert({name="space-science-pack", count=1000})
        end
    end
   end
)