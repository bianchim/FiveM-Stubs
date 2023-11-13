
--- @name ADVANCE_CLOCK_TIME_TO
--- @param hour number 
--- @param minute number 
--- @param second number 
--- @return void (Type not found)
function AdvanceClockTimeTo(hour, minute, second) end

--- Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)  
--- @name GET_CLOCK_HOURS
--- @return number
function GetClockHours() end

--- @name ADD_TO_CLOCK_TIME
--- @param hours number 
--- @param minutes number 
--- @param seconds number 
--- @return void (Type not found)
function AddToClockTime(hours, minutes, seconds) end

--- @name GET_CLOCK_DAY_OF_MONTH
--- @return number
function GetClockDayOfMonth() end

--- Gets the current day of the week.  
--- 0: Sunday  
--- 1: Monday  
--- 2: Tuesday  
--- 3: Wednesday  
--- 4: Thursday  
--- 5: Friday  
--- 6: Saturday  
--- @name GET_CLOCK_DAY_OF_WEEK
--- @return number
function GetClockDayOfWeek() end

--- Gets system time as year, month, day, hour, minute and second.  
--- Example usage:  
--- 	int year;  
--- 	int month;  
--- 	int day;  
--- 	int hour;  
--- 	int minute;  
--- 	int second;  
--- 	TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);  
--- @name GET_POSIX_TIME
--- @param year number 
--- @param month number 
--- @param day number 
--- @param hour number 
--- @param minute number 
--- @param second number 
--- @return void (Type not found)
function GetPosixTime(year, month, day, hour, minute, second) end

--- @name GET_CLOCK_MONTH
--- @return number
function GetClockMonth() end

--- Gets the current ingame clock minute.  
--- @name GET_CLOCK_MINUTES
--- @return number
function GetClockMinutes() end

--- @name GET_CLOCK_YEAR
--- @return number
function GetClockYear() end

--- Gets local system time as year, month, day, hour, minute and second.  
--- Example usage:  
--- int year;  
--- int month;  
--- int day;  
--- int hour;  
--- int minute;  
--- int second;  
--- or use std::tm struct  
--- TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);  
--- @name GET_LOCAL_TIME
--- @param year number 
--- @param month number 
--- @param day number 
--- @param hour number 
--- @param minute number 
--- @param second number 
--- @return void (Type not found)
function GetLocalTime(year, month, day, hour, minute, second) end

--- Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.  
--- @name GET_CLOCK_SECONDS
--- @return number
function GetClockSeconds() end

--- Gets current UTC time
--- @name GET_UTC_TIME
--- @param year number 
--- @param month number 
--- @param day number 
--- @param hour number 
--- @param minute number 
--- @param second number 
--- @return void (Type not found)
function GetUtcTime(year, month, day, hour, minute, second) end

--- SET_CLOCK_TIME(12, 34, 56);  
--- @name SET_CLOCK_TIME
--- @param hour number 
--- @param minute number 
--- @param second number 
--- @return void (Type not found)
function SetClockTime(hour, minute, second) end

--- Returns how many real ms are equal to one game minute.
--- A getter for [`SetMillisecondsPerGameMinute`](#\_0x36CA2554).
--- @name GET_MILLISECONDS_PER_GAME_MINUTE
--- @return number
function GetMillisecondsPerGameMinute() end

--- @name SET_CLOCK_DATE
--- @param day number 
--- @param month number 
--- @param year number 
--- @return void (Type not found)
function SetClockDate(day, month, year) end

--- @name PAUSE_CLOCK
--- @param toggle boolean 
--- @return void (Type not found)
function PauseClock(toggle) end
