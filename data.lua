--Funny Required Require stuff that is required.
require("prototypes.l9m2-vitalrecovery.item") --Item Data
require("prototypes.l9m2-vitalrecovery.recipe") --Recipe Data
require("prototypes.l9m2-vitalrecovery.tips-and-tricks") --Tip Data


--TODO: Research Data
--require("prototypes.l9m2-vitalrecovery.technology")
local science_disabled = settings.startup["l9m2-vital-recovery-disable-medical-science"].value


if science_disabled == false then
local labPacks = data.raw["lab"]["lab"]
  if labPacks then
	  --Simplier, Can be added anywhere (1 is beginning)
	  table.insert(data.raw["lab"]["lab"].inputs, 2, "medical-science-pack")
	  --Messier adds to the end of th list
	  --local itemSet = labPacks["inputs"]
	  --itemSet[#itemSet + 1] = "medical-science-pack"
  end
end



--Note To Self: 
--Potential Options. How much fish required for various recipes.
--Other things. Healing Grenade?


--Tech!!!
--Mainly because I didn't want to create yet another file, but this may change.
data:extend(
{
  {
    type = "technology",
    name = "vital-recovery-small-healthkit-research",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/small_healthkit_research.png",
    icon_size = 256,
	  icon_mipmaps = 4,
    prerequisites = {"automation","medical-science-pack"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "small-healthkit-recipe"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-vitaliqueur-recipe-hand"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"automation-science-pack", 1},{"medical-science-pack", 1}
      },
      time = 5
    },
    ignore_tech_cost_multiplier = true,
    order = "a-b-b"
  },
  {
    type = "technology",
    name = "vital-recovery-medium-healthkit-research",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/medium_healthkit_research.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"vital-recovery-small-healthkit-research","automation-2"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "medium-healthkit-recipe" -- Unlock the healing item recipe when the research is completed
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"medical-science-pack", 1}
      },
      time = 30
    },
    ignore_tech_cost_multiplier = true,
    order = "c-m-a-a"
  },
  {
    type = "technology",
    name = "vital-recovery-big-healthkit-research",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/big_healthkit_research.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"vital-recovery-medium-healthkit-research","automation-2"}, -- Requires the "Automation" research as a prerequisite
    effects = {
      {
        type = "unlock-recipe",
        recipe = "big-healthkit-recipe" -- Unlock the healing item recipe when the research is completed
      },
      {
        type = "unlock-recipe",
        recipe = "solid-vitaliqueur-recipe"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"medical-science-pack", 1}
      },
      time = 15
    },
    ignore_tech_cost_multiplier = true,
    order = "c-m-a-b"
  },
  {
    type = "technology",
    name = "vitaliqueur-research",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/vitaliqueur.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"vital-recovery-big-healthkit-research","oil-processing"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vitaliqueur-recipe"
      },
      {
        type = "unlock-recipe",
        recipe = "vitaliqueur-solid-to-fluid-recipe"
      }
    },
    unit = {
      count = 125,
      ingredients = {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"medical-science-pack", 1}
      },
      time = 30
    },
    ignore_tech_cost_multiplier = true,
    order = "c-m-a-c"
  },
  {
    type = "technology",
    name = "vitaliqueur-raw-fish-production",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/fish_replication.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"vitaliqueur-research"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vitaliqueur-raw-fish-recipe"
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"medical-science-pack", 1}
      },
      time = 30
    },
    ignore_tech_cost_multiplier = true,
    order = "c-m-a-d"
  },
  {
    type = "technology",
    name = "vital-recovery-small-pure-healthkit-research",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/small_pure_healthkit_research.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"vitaliqueur-research","chemical-science-pack"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "small-pure-healthkit-recipe"
      }
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"medical-science-pack", 2}
      },
      time = 15
    },
    ignore_tech_cost_multiplier = true,
    order = "c-m-a-e"
  },
  {
    type = "technology",
    name = "vital-recovery-medium-pure-healthkit-research",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/medium_pure_healthkit_research.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"vital-recovery-small-pure-healthkit-research"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "medium-pure-healthkit-recipe"
      }
    },
    unit = {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"medical-science-pack", 2}
      },
      time = 20
    },
    ignore_tech_cost_multiplier = true,
    order = "c-m-a-f"
  },
  {
    type = "technology",
    name = "vital-recovery-big-pure-healthkit-research",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/big_pure_healthkit_research.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"vital-recovery-medium-pure-healthkit-research"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "big-pure-healthkit-recipe"
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"medical-science-pack", 2}
      },
      time = 30
    },
    ignore_tech_cost_multiplier = true,
    order = "c-m-a-g"
  },
  {
    type = "technology",
    name = "medical-science-pack",
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/medical-science-pack.png",
    icon_size = 256,
	icon_mipmaps = 4,
    prerequisites = {"automation"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "medical-science-pack-recipe"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 5
    },
    ignore_tech_cost_multiplier = true,
    order = "a-a-a"
  },
  {
    type = "technology",
    name = "vitalrecovery-health-boost-1",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/health-boost.png",
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 25
      }
    },
    prerequisites = {"medical-science-pack"},
    unit =
    {
      count = 100*1,
      ingredients =
      {
        {"automation-science-pack", 1},{"medical-science-pack", 2}
      },
      time = 30
    },
    upgrade = true,
    order = "a-a-b"
  },
  {
    type = "technology",
    name = "vitalrecovery-health-boost-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/health-boost.png",
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 25
      }
    },
    prerequisites = {"vitalrecovery-health-boost-1"},
    unit =
    {
      count = 100*2,
      ingredients =
      {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"medical-science-pack", 2}
      },
      time = 30
    },
    upgrade = true,
    order = "a-a-c"
  },
  {
    type = "technology",
    name = "vitalrecovery-health-boost-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/health-boost.png",
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 25
      }
    },
    prerequisites = {"vitalrecovery-health-boost-2"},
    unit =
    {
      count = 100*3,
      ingredients =
      {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"medical-science-pack", 2}
      },
      time = 30
    },
    upgrade = true,
    order = "a-a-d"
  },
  {
    type = "technology",
    name = "vitalrecovery-health-boost-4",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/health-boost.png",
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 25
      }
    },
    prerequisites = {"vitalrecovery-health-boost-3"},
    unit =
    {
      count = 100*4,
      ingredients =
      {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"medical-science-pack", 2}
      },
      time = 30
    },
    upgrade = true,
    order = "a-a-e"
  },
  {
    type = "technology",
    name = "vitalrecovery-health-boost-5",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/health-boost.png",
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 25
      }
    },
    prerequisites = {"vitalrecovery-health-boost-4"},
    unit =
    {
      count = 100*5,
      ingredients =
      {
        {"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},
        {"utility-science-pack", 1},{"medical-science-pack", 2}
      },
      time = 30
    },
    upgrade = true,
    order = "a-a-f"
  },
  {
    type = "technology",
    name = "vitalrecovery-health-boost-6",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__l9m2-vitalrecovery__/graphics/technology/l9m2-vitalrecovery/health-boost.png",
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 25
      }
    },
	prerequisites = {"vitalrecovery-health-boost-5", "space-science-pack"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"medical-science-pack", 2}
      },
      time = 30,
      count_formula = "100(L-5)+500"
    },
    max_level = "infinite",
    upgrade = true,
    order = "a-a-g"
  }
})

--Effect type to consider as infinite research:
--character-health-bonus
--It is a healing based mod, so a mod that increases the character health from the starting 250 would be nice.