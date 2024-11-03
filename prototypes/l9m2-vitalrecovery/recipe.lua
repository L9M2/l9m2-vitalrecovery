data:extend({
	{
		type = "recipe",
		name = "small-healthkit",
		enabled = false,
		energy_required = 2,
		allow_quality = false,
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 4},
			{type = "item", name = "solid-vitaliqueur", amount = 1}
		},
		results = {
			{type = "item", name = "small-healthkit", amount = 2}
		}
	},
	{
		type = "recipe",
		name = "medium-healthkit",
		enabled = false,
		energy_required = 4,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "steam", amount = 150},
			{type = "item", name = "small-healthkit", amount = 4}
			},
			results = {
				{type = "item", name = "medium-healthkit", amount = 2}
			}
	},
	{
		type = "recipe",
		name = "big-healthkit",
		enabled = false,
		energy_required = 6,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "steam", amount = 200},
			{type = "item", name = "medium-healthkit", amount = 4}
		},
		results = {
			{type = "item", name = "big-healthkit", amount = 2}
		}
	},
	
	--New Recipe For Making Solid Vitaliqueur
	{
		type = "recipe",
		name = "solid-vitaliqueur",
		enabled = false,
		energy_required = 5,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 10},
			{type = "item", name = "iron-plate", amount = 2},
			{type = "item", name = "raw-fish", amount = 1},
			{type = "fluid", name = "steam", amount = 25}
		},
		results = {
			{type = "item", name = "solid-vitaliqueur", amount = 3}
		}
	},
	{
		type = "recipe",
		name = "solid-vitaliqueur-hand",
		energy_required = 10,
		factoriopedia_description = {"factoriopedia-description.solid-vitaliqueur-hand"},
		enabled = false,
		ingredients = {
			{type = "item", name = "iron-stick", amount = 10},
			{type = "item", name = "iron-plate", amount = 2},
			{type = "item", name = "raw-fish", amount = 2}
		},
		results = {
			{type = "item", name = "solid-vitaliqueur", amount = 1}
		}
	},
	--Vitaliqueur Fluid
	{
    type = "recipe",
    name = "vitaliqueur",
    category = "chemistry",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {type="item", name="raw-fish", amount=1},
      {type="item", name="iron-plate", amount=2},
      {type="fluid", name="steam", amount=50}
    },
    results=
    {
      {type="fluid", name="vitaliqueur", amount=175}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.051, g = 0.957, b = 0.000, a = 1.000}, -- #0df400ff
      secondary = {r = 0.302, g = 0.851, b = 0.169, a = 1.000}, -- #4dd92bff
      tertiary = {r = 0.200, g = 0.761, b = 0.302, a = 1.000}, -- #33c24dff
      quaternary = {r = 0.031, g = 1.000, b = 0.020, a = 1.000}, -- #08ff05ff
    }
  },
  {
    type = "recipe",
    name = "vitaliqueur-solid-to-fluid",
    category = "chemistry",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {type="item", name="solid-vitaliqueur", amount=1},
      {type="fluid", name="steam", amount=25}
    },
    results=
    {
      {type="fluid", name="vitaliqueur", amount=300}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.051, g = 0.957, b = 0.000, a = 1.000}, -- #0df400ff
      secondary = {r = 0.302, g = 0.851, b = 0.169, a = 1.000}, -- #4dd92bff
      tertiary = {r = 0.200, g = 0.761, b = 0.302, a = 1.000}, -- #33c24dff
      quaternary = {r = 0.031, g = 1.000, b = 0.020, a = 1.000}, -- #08ff05ff
    },
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/solid-to-fluid-vitaliqueur.png"
  },
  {
    type = "recipe",
    name = "vitaliqueur-raw-fish",
    category = "chemistry",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {type="item", name="raw-fish", amount=8},
      {type="fluid", name="vitaliqueur", amount=600}
    },
    results=
    {
      {type="item", name="raw-fish", amount=10}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.051, g = 0.957, b = 0.000, a = 1.000}, -- #0df400ff
      secondary = {r = 0.302, g = 0.851, b = 0.169, a = 1.000}, -- #4dd92bff
      tertiary = {r = 0.200, g = 0.761, b = 0.302, a = 1.000}, -- #33c24dff
      quaternary = {r = 0.031, g = 1.000, b = 0.020, a = 1.000}, -- #08ff05ff
    },
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/more-fish.png"
  },
	{
		type = "recipe",
		name = "small-pure-healthkit",
		enabled = false,
		energy_required = 4,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "vitaliqueur", amount = 50},
			},
		results = {
			{type = "item", name = "small-pure-healthkit", amount = 2}
		}
	},
	{
		type = "recipe",
		name = "medium-pure-healthkit",
		enabled = false,
		energy_required = 4,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "vitaliqueur", amount = 50},
			{type = "item", name = "small-pure-healthkit", amount = 4}
			},
			results = {
				{type = "item", name = "medium-pure-healthkit", amount = 2}
			}
	},
	{
		type = "recipe",
		name = "big-pure-healthkit",
		enabled = false,
		energy_required = 6,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "vitaliqueur", amount = 50},
			{type = "item", name = "medium-pure-healthkit", amount = 4}
		},
		results = {
			{type = "item", name = "big-pure-healthkit", amount = 2}
		}
	},
	{
		type = "recipe",
		name = "medical-science-pack",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{type = "item", name = "iron-stick", amount = 5},
			{type = "item", name = "iron-plate", amount = 5},
			{type = "item", name = "raw-fish", amount = 1}
		},
		results = {
			{type = "item", name = "medical-science-pack", amount = 10}
		}
	}
})