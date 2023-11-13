
--- Checks if you're recording, returns TRUE when you start recording (F1) or turn on action replay (F2)  
--- mov al, cs:g_bIsRecordingGameplay // byte_141DD0CD0 in b944  
--- retn  
--- @name _IS_RECORDING
--- @return boolean
function IsRecording() end

--- @name _SAVE_RECORDING_CLIP
--- @return boolean
function SaveRecordingClip() end

--- Stops recording and saves the recorded clip.  
--- @name _STOP_RECORDING_AND_SAVE_CLIP
--- @return void (Type not found)
function StopRecordingAndSaveClip() end

--- This disable the recording feature and has to be called every frame.
--- @name _STOP_RECORDING_THIS_FRAME
--- @return void (Type not found)
function StopRecordingThisFrame() end

--- Starts recording a replay.  
--- If mode is 0, turns on action replay.  
--- If mode is 1, starts recording.  
--- If already recording a replay, does nothing.  
--- @name _START_RECORDING
--- @param mode number 
--- @return void (Type not found)
function StartRecording(mode) end

--- Stops recording and discards the recorded clip.  
--- @name _STOP_RECORDING_AND_DISCARD_CLIP
--- @return void (Type not found)
function StopRecordingAndDiscardClip() end

--- This will disable the ability to make camera changes in R* Editor.
--- RE*
--- @name _DISABLE_ROCKSTAR_EDITOR_CAMERA_CHANGES
--- @return void (Type not found)
function DisableRockstarEditorCameraChanges() end
