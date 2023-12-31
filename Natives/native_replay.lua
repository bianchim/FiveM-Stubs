
--- Please note that you will need to call DO_SCREEN_FADE_IN after exiting the Rockstar Editor when you call this.
--- NativeDB Added Parameter 1: int p0
--- @name _ACTIVATE_ROCKSTAR_EDITOR
--- @return void (Type not found)
function ActivateRockstarEditor() end

--- Returns a bool if interior rendering is disabled, if yes, all "normal" rendered interiors are invisible  
--- @name _IS_INTERIOR_RENDERING_DISABLED
--- @return boolean
function IsInteriorRenderingDisabled() end

--- Sets (almost, not sure) all Rockstar Editor values (bIsRecording etc) to 0.  
--- @name _RESET_EDITOR_VALUES
--- @return void (Type not found)
function ResetEditorValues() end
