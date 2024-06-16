local simulations = require("prototypes.l9m2-vitalrecovery.tips-and-tricks-simulations")
data:extend(
	{
		{
			type = "tips-and-tricks-item-category",
			name = "vitalrecovery",
			order = "a-[vitalrecovery]"
		},
		{
			type = "tips-and-tricks-item",
			name = "intro-vitalrecovery",
			tag = "[item=small-healthkit]",
			order = "a-[vitalrecovery]",
			category = "vitalrecovery",
			starting_status = "unlocked",
			is_title = true,
			dependencies = {"introduction"},
			trigger =
			{
			type = "time-elapsed",
			ticks = 60 * 60 * 2 -- 2 minutes
			},
			image = "__l9m2-vitalrecovery__/graphics/tips-and-tricks/vital-recovery/vital-recovery.png"
		},
		{
			type = "tips-and-tricks-item",
			name = "vitalrecovery-healthkits-pure-impure",
			tag = "[item=medium-healthkit]",
			order = "b",
			indent = 1,
			category = "vitalrecovery",
			dependencies = {"introduction"},
			trigger =
			{
			type = "time-elapsed",
			ticks = 60 * 60 * 4 -- 4 minutes
			}
		},
		{
			type = "tips-and-tricks-item",
			name = "vitalrecovery-modsettings",
			tag = "[fluid=vitaliqueur]",
			order = "b",
			indent = 1,
			category = "vitalrecovery",
			dependencies = {"introduction"},
			trigger =
			{
			type = "time-elapsed",
			ticks = 60 * 60 * 4 -- 4 minutes
			}
		},
		{
			type = "tips-and-tricks-item",
			name = "vitalrecovery-solid-vitaliqueur",
			tag = "[item=solid-vitaliqueur]",
			order = "c",
			indent = 1,
			category = "vitalrecovery",
			dependencies = {"introduction"},
			trigger =
			{
			type = "unlock-recipe",
			recipe = "solid-vitaliqueur-recipe-hand"
			}
		},
		{
			type = "tips-and-tricks-item",
			name = "vitalrecovery-vitaliqueur",
			tag = "[fluid=vitaliqueur]",
			order = "d",
			indent = 1,
			category = "vitalrecovery",
			dependencies = {"introduction"},
			trigger =
			{
			type = "unlock-recipe",
			recipe = "vitaliqueur-recipe"
			},
			simulation = simulations.l9m2_vr_vitalfuid
		},
		{
			type = "tips-and-tricks-item",
			name = "vitalrecovery-fish-replication",
			tag = "[fluid=vitaliqueur][item=raw-fish]",
			order = "e",
			indent = 1,
			category = "vitalrecovery",
			dependencies = {"introduction"},
			trigger =
			{
			type = "unlock-recipe",
			recipe = "vitaliqueur-raw-fish-recipe"
			},
			simulation = simulations.l9m2_vr_fish
		}
	}
)