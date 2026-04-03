-- SmoothSpatula

mods["LuaENVY-ENVY"].auto()
mods["ReturnsAPI-ReturnsAPI"].auto{
    namespace = "keepgambling",
    mp        = true
}

local set_shrines = function ()
    local shrines = Instance.find_all(gm.constants.pInteractableShrine)
    if shrines then
        for _, shrine in ipairs(shrines) do
            shrine.charges = 1000000
        end
    end
end

local initialize = function()
    Callback.add(Callback.ON_STAGE_START, set_shrines)
end
Initialize.add_hotloadable(initialize)