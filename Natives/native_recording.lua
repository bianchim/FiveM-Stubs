
--- @return boolean
function SaveRecordingClip() end

--- This will disable the ability to make camera changes in R* Editor.
--- RE*
--- @return void (Type not found)
function DisableRockstarEditorCameraChanges() end

--- Starts recording a replay.  
--- If mode is 0, turns on action replay.  
--- If mode is 1, starts recording.  
--- If already recording a replay, does nothing.  
--- @param mode number 
--- @return void (Type not found)
function StartRecording(mode) end

--- Stops recording and discards the recorded clip.  
--- @return void (Type not found)
function StopRecordingAndDiscardClip() end

--- Checks if you're recording, returns TRUE when you start recording (F1) or turn on action replay (F2)  
--- mov al, cs:g_bIsRecordingGameplay // byte_141DD0CD0 in b944  
--- retn  
--- @return boolean
function IsRecording() end

--- This disable the recording feature and has to be called every frame.
--- @return void (Type not found)
function StopRecordingThisFrame() end

--- Stops recording and saves the recorded clip.  
--- @return void (Type not found)
function StopRecordingAndSaveClip() end
