-- Keep Gambling v1.0.0
-- SmoothSpatula

log.info("Successfully loaded ".._ENV["!guid"]..".")
mods["RoRRModdingToolkit-RoRR_Modding_Toolkit"].auto(true) -- Loading the toolkit 

local set_shrines = function ()
    local shrines, exist = Instance.find_all(gm.constants.pInteractableShrine)
    if exist then
        for _, shrine in ipairs(shrines) do
            shrine.charges = 1000000
        end
    end
end

local initialize = function()
    Callback.add("onStageStart", "KeepGambling-onStageStart", set_shrines)
end
Initialize(initialize)
