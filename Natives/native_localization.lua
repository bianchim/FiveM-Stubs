
--- Possible return values: 0, 1, 2
--- @return number
function LocalizationGetSystemDateFormat() end

--- Same return values as GET_CURRENT_LANGUAGE
--- @return number
function LocalizationGetSystemLanguage() end

--- 0 = american (en-US)
--- 1 = french (fr-FR)
--- 2 = german (de-DE)
--- 3 = italian (it-IT)
--- 4 = spanish (es-ES)
--- 5 = brazilian (pt-BR)
--- 6 = polish (pl-PL)
--- 7 = russian (ru-RU)
--- 8 = korean (ko-KR)
--- 9 = chinesetrad (zh-TW)
--- 10 = japanese (ja-JP)
--- 11 = mexican (es-MX)
--- 12 = chinesesimp (zh-CN)
--- @return number
function GetCurrentLanguage() end
