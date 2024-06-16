local science_disabled = settings.startup["l9m2-vital-recovery-disable-medical-science"].value

if science_disabled then
data.raw["technology"]["vital-recovery-small-healthkit-research"].prerequisites = {"automation"} --Change it to just Automation
data.raw["technology"]["vital-recovery-small-healthkit-research"].unit.ingredients = {{"automation-science-pack", 1}} --Change it to just Automation
data.raw["technology"]["vital-recovery-medium-healthkit-research"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}
data.raw["technology"]["vital-recovery-big-healthkit-research"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}
data.raw["technology"]["vitaliqueur-research"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}
data.raw["technology"]["vitaliqueur-raw-fish-production"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}
data.raw["technology"]["vital-recovery-small-pure-healthkit-research"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}
data.raw["technology"]["vital-recovery-medium-pure-healthkit-research"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}
data.raw["technology"]["vital-recovery-big-pure-healthkit-research"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}
data.raw["technology"]["vitalrecovery-health-boost-1"].unit.ingredients = {{"automation-science-pack", 1}}
data.raw["technology"]["vitalrecovery-health-boost-1"].prerequisites = {"automation"} --Change it to just Automation
data.raw["technology"]["vitalrecovery-health-boost-2"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}
data.raw["technology"]["vitalrecovery-health-boost-3"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}
data.raw["technology"]["vitalrecovery-health-boost-4"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1}}
data.raw["technology"]["vitalrecovery-health-boost-5"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack",1},{"utility-science-pack", 1}}
data.raw["technology"]["vitalrecovery-health-boost-6"].unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"production-science-pack", 1},{"utility-science-pack", 1},{"space-science-pack", 1}}
--data.raw["technology"][""].unit.ingredients = {}
data.raw["technology"]["medical-science-pack"].hidden = true --Hide Tech
data.raw["technology"]["medical-science-pack"].enabled = false --Disable Tech
data.raw["technology"]["medical-science-pack"] = nil --Just nil it
data.raw.recipe["medical-science-pack-recipe"] = nil --Just nil it
data.raw.tool["medical-science-pack"] = nil --Just nil it
end