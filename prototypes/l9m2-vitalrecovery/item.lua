local sounds = require ("__base__.prototypes.entity.sounds")
data:extend({
  {
  --These are impure versions. Pure versions later.
    type = "capsule",
    name = "small-healthkit",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/small_healthkit.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "capsule",
    order = "a[health]-a[healing-item]",
    stack_size = 10,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 90,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -50}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      }
    }
  },
  {
    type = "capsule",
    name = "medium-healthkit",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/medium_healthkit.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "capsule",
    order = "a[health]-b[healing-item]",
    stack_size = 10,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 90,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -100}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      }
    }
  },
  {
    type = "capsule",
    name = "big-healthkit",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/big_healthkit.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "capsule",
    order = "a[health]-c[healing-item]",
    stack_size = 10,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 90,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -160}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      }
    }
  },
  {
  --Item to make the impure capsules
  --Impure can be converted to pure fluid
  --Pure fluid makes a more efficient capsule type.
    type = "item",
    name = "solid-vitaliqueur",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/solid-vitaliqueur.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "a[health]-d[healing-item]",
    stack_size = 100
  },
  {
  --These are pure versions.
    type = "capsule",
    name = "small-pure-healthkit",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/small_healthkit_pure.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "capsule",
    order = "b[health]-a[healing-item]",
    stack_size = 10,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -80}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      }
    }
  },
  {
    type = "capsule",
    name = "medium-pure-healthkit",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/medium_healthkit_pure.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "capsule",
    order = "b[health]-b[healing-item]",
    stack_size = 10,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -160}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      }
    }
  },
  {
    type = "capsule",
    name = "big-pure-healthkit",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/big_healthkit_pure.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "capsule",
    order = "b[health]-c[healing-item]",
    stack_size = 10,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -240}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      }
    }
  },
  {
  --Science Pack
    type = "tool",
    name = "medical-science-pack",
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/medical-science-pack.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "science-pack",
    order = "a[medical-science-pack]",
    stack_size = 200,
    durability = 1,
    localised_description = {"item-description.science-pack"},
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  }
})

data:extend({
  {
    type = "fluid",
    name = "vitaliqueur",
    default_temperature = 25,
    subgroup = "fluid",
    heat_capacity = "0.1kJ",
    base_color = {r=0.15, g=0.82, b=0.15},
    flow_color = {r=0.31, g=0.95, b=0.31},
    icon = "__l9m2-vitalrecovery__/graphics/icons/l9m2-vitalrecovery/fluid-vitaliqueur.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "a[fluid]-v[vitality]"
  }
})