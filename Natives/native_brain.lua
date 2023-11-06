
--- BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);
--- - Nacorpio
--- -----
--- Hardcoded to not work in Multiplayer.
--- @param name string 
--- @param model Hash 
--- @param p2 number 
--- @param p3 number 
--- @return void (Type not found)
function AddScriptToRandomPed(name, model, p2, p3) end

--- @param brainSet number 
--- @return void (Type not found)
function EnableScriptBrainSet(brainSet) end

--- @param object Object 
--- @return boolean
function IsObjectWithinBrainActivationRange(object) end

--- @param brainSet number 
--- @return void (Type not found)
function DisableScriptBrainSet(brainSet) end

--- Gets whether the world point the calling script is registered to is within desired range of the player.  
--- @return boolean
function IsWorldPointWithinBrainActivationRange() end

--- Registers a script for any object with a specific model hash.
--- BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);
--- @param scriptName string 
--- @param modelHash Hash 
--- @param p2 number 
--- @param activationRange number 
--- @param p4 number 
--- @param p5 number 
--- @return void (Type not found)
function RegisterObjectScriptBrain(scriptName, modelHash, p2, activationRange, p4, p5) end

--- @param scriptName string 
--- @param activationRange number 
--- @param p2 number 
--- @return void (Type not found)
function RegisterWorldPointScriptBrain(scriptName, activationRange, p2) end
