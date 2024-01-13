data:extend({
	{
		type = "recipe",
		name = "small-healthkit-recipe",
		enabled = false,
		energy_required = 2,
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 4},
			{type = "item", name = "solid-vitaliqueur", amount = 1}
		},
		result_count = 2,
		result = "small-healthkit"
	},
	{
		type = "recipe",
		name = "medium-healthkit-recipe",
		enabled = false,
		energy_required = 4,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "steam", amount = 150},
			{type = "item", name = "small-healthkit", amount = 4}
			},
		result_count = 2,
		result = "medium-healthkit"
	},
	{
		type = "recipe",
		name = "big-healthkit-recipe",
		enabled = false,
		energy_required = 6,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "steam", amount = 200},
			{type = "item", name = "medium-healthkit", amount = 4}
		},
		result_count = 2,
		result = "big-healthkit"
	},
	
	--New Recipe For Making Solid Vitaliqueur
	{
		type = "recipe",
		name = "solid-vitaliqueur-recipe",
		enabled = false,
		energy_required = 5,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 10},
			{type = "item", name = "iron-plate", amount = 2},
			{type = "item", name = "raw-fish", amount = 1},
			{type = "fluid", name = "steam", amount = 25}
		},
		result_count = 3,
		result = "solid-vitaliqueur"
	},
	{
		type = "recipe",
		name = "solid-vitaliqueur-recipe-hand",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{type = "item", name = "iron-stick", amount = 10},
			{type = "item", name = "iron-plate", amount = 2},
			{type = "item", name = "raw-fish", amount = 2}
		},
		result = "solid-vitaliqueur"
	},
	--Vitaliqueur Fluid
	{
    type = "recipe",
    name = "vitaliqueur-recipe",
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
    name = "vitaliqueur-solid-to-fluid-recipe",
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
    }
  },
  {
    type = "recipe",
    name = "vitaliqueur-raw-fish-recipe",
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
      {type="item", name="raw-fish", amount=9}
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
		name = "small-pure-healthkit-recipe",
		enabled = false,
		energy_required = 4,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "vitaliqueur", amount = 50},
			},
		result_count = 2,
		result = "small-pure-healthkit"
	},
	{
		type = "recipe",
		name = "medium-pure-healthkit-recipe",
		enabled = false,
		energy_required = 4,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "vitaliqueur", amount = 50},
			{type = "item", name = "small-pure-healthkit", amount = 4}
			},
		result_count = 2,
		result = "medium-pure-healthkit"
	},
	{
		type = "recipe",
		name = "big-pure-healthkit-recipe",
		enabled = false,
		energy_required = 6,
		category = "crafting-with-fluid",
		ingredients = {
			{type = "item", name = "iron-stick", amount = 2},
			{type = "item", name = "iron-plate", amount = 3},
			{type = "fluid", name = "vitaliqueur", amount = 50},
			{type = "item", name = "medium-pure-healthkit", amount = 4}
		},
		result_count = 2,
		result = "big-pure-healthkit"
	},
	{
		type = "recipe",
		name = "medical-science-pack-recipe",
		energy_required = 10,
		enabled = false,
		ingredients = {
			{type = "item", name = "iron-stick", amount = 5},
			{type = "item", name = "iron-plate", amount = 5},
			{type = "item", name = "raw-fish", amount = 1}
		},
		result_count = 10,
		result = "medical-science-pack"
	}
})