--[[
Gameguardian Lua Script
Author: Ethan (github.com/ethanlabs101 or on Instagram @_cpmgarage)
Purpose: Research & Educational exploration of lua scripting and memory modification.
Note: This script represents my early work and learning phase.
Disclaimer: Please use responsibly and at your own risk!
Enjoy! Much Love <3.
]]


-- Username
local username = "❄️CPMGARAGE❄️" -- Manually input name (11 characters)

function getDate()
    return os.date("%m/%d/%Y") -- Gets today's date (MM/DD/YYYY)
end

function getTime()
    return os.date("%H:%M:%S") -- Gets real-time clock (HH:MM:SS)
end

function waitForGG(returnTo)
    while true do
        local isVisible = gg.isVisible(true)

        -- Ensure -1 does not break the function
        if isVisible and isVisible ~= -1 then
            gg.setVisible(false)
            if returnTo then
                returnTo() -- Return to the correct menu
            else
                mainMenu() -- Default to Main Menu if nothing is passed
            end
            return -- Prevent infinite loop
        end
        gg.sleep(1000) -- Sleep to prevent excessive looping
    end
end

-- Get Game Version
function getGameVersion()
    local package = gg.getTargetPackage() -- Gets the package name of the target game
    local version = gg.getTargetInfo().versionName -- Gets the version name
    return version or "Unknown Version"
end

-- Get Game Name
local gameInfo = gg.getTargetInfo() or {}
local gameName = gameInfo.label

local scriptVersion = "4.9.4" -- Change this when updating
local expectedScriptVersion = "4.9.4" -- Define expected script version

-- Define the expected game versions
local expectedGameVersions = { "4.9.4" } -- Add multiple versions

-- Function to check for outdated script or game version
local function checkVersions()
    local gameVersion = getGameVersion()  -- Fetch current game version

    -- Check if the current game version is in the expected versions list
    local versionMatch = false
    for _, v in ipairs(expectedGameVersions) do
        if gameVersion == v then
            versionMatch = true
            break
        end
    end

    -- Alert if the game version is unsupported
    if not versionMatch then
        gg.alert("The game version is outdated or unsupported. Please update the game.")
        print("DOWNLOAD NEW CPM UPDATE")
        os.exit()  -- Exit if the game version is outdated
    end

    -- Compare script version with expected version
    if scriptVersion ~= expectedScriptVersion then
        gg.alert("This script is outdated. Please Contact Owner For Renewal.")
        os.exit()  -- Exit if the script version is outdated
    end

    return true  -- Both are up-to-date
end

-- Ensure the versions are checked before continuing
if not checkVersions() then
    return  -- Stop the script if versions don't match
end

-- Continue with the rest of the script if versions are correct
-- Place your remaining script code here

gg.setVisible(false)
gg.toast('_')
gg.sleep(500)
gg.toast('_₵')
gg.sleep(500)
gg.toast('_₵₱')
gg.sleep(500)
gg.toast('_₵₱₥')
gg.sleep(500)
gg.toast('_₵₱₥₲')
gg.sleep(500)
gg.toast('_₵₱₥₲₳')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ ₴')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ ₴₵')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ ₴₵Ɽ')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ ₴₵Ɽł')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ ₴₵Ɽł₱')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ ₴₵Ɽł₱₮')
gg.sleep(500)
gg.toast('_₵₱₥₲₳Ɽ₳₲Ɇ ₴₵Ɽł₱₮₴🔓')
gg.sleep(2000)
gg.toast('𝕀𝕟𝕚𝕥𝕚𝕒𝕝𝕚𝕫𝕚𝕟𝕘,𝕡𝕝𝕖𝕒𝕤𝕖 𝕨𝕒𝕚𝕥....')  -- Show the second toast
gg.sleep(3000)  -- Add a small sleep to give time for the second toast to show before the alert
gg.alert("𝕎𝔼𝕃ℂ𝕆𝕄𝔼 𝕋𝕆_ℂℙ𝕄𝔾𝔸ℝ𝔸𝔾𝔼\'𝕤 𝕌𝕃𝕋𝕀𝕄𝔸𝕋𝔼 𝕊ℂℝ𝕀ℙ𝕋")  -- Show the alert


function mainMenu()
    local menu = gg.choice({
        '⟦💰 ℂ𝕌ℝℝ𝔼ℕℂ𝕐 𝕄𝔼ℕ𝕌⟧',
        '⟦📐 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌⟧',
        '⟦🏎️ ℙ𝔼ℝ𝔽𝕆ℝ𝕄𝔸ℕℂ𝔼 𝕄𝔼ℕ𝕌⟧',
        '⟦🔧 ℂ𝔸ℝ 𝕄𝔸𝕀ℕ𝕋𝔼ℕ𝔸ℕℂ𝔼 𝕄𝔼ℕ𝕌⟧',
        '⟦🚗 𝔹𝕆𝔻𝕐 𝕂𝕀𝕋 𝕄𝔼ℕ𝕌⟧',
        '⟦💡 𝔾𝕃𝕆𝕎 𝕄𝔼ℕ𝕌⟧',
        '⟦👑 𝕌ℕ𝕃𝕆ℂ𝕂 ℂℝ𝕆𝕎ℕ ℂ𝔸ℝ⟧',
        '⟦🛠 𝕎𝕀ℕ𝔾𝕊&ℝ𝕆𝕆𝔽 𝔽𝕀ℕ𝔻𝔼ℝ⟧',
        '⟦🔓 𝕌ℕ𝕃𝕆ℂ𝕂 𝕄𝔼ℕ𝕌⟧',
        '⟦🎮 𝔼ℕ𝕋𝔼ℝ𝕋𝔸𝕀ℕ𝕄𝔼ℕ𝕋 𝕄𝔼ℕ𝕌⟧',
        '⟦🚘 𝕍𝕀ℙ 𝕃𝔸𝕄𝔹𝕆ℝ𝔾ℍ𝕀ℕ𝕀 𝕄𝔼ℕ𝕌⟧',
        '⟦✨️ 𝔸ℂℍ𝕀𝔼𝕍𝔼𝕄𝔼ℕ𝕋𝕊 𝕄𝔼ℕ𝕌 #𝟙⟧',
        '⟦✨️ 𝔸ℂℍ𝕀𝔼𝕍𝔼𝕄𝔼ℕ𝕋𝕊 𝕄𝔼ℕ𝕌 #𝟚⟧',
        '⟦🏁 ℝ𝔸ℂ𝔼 𝕄𝔼ℕ𝕌⟧',
        '⟦🕹 𝔼𝕏𝕋ℝ𝔸𝕊 𝕄𝔼ℕ𝕌⟧',
        '⟦❌ 𝔼𝕏𝕀𝕋⟧'
    }, nil, 
    "╔═══════⚔️ ₴₵Ɽł₱₮ ฿Ɏ _₵₱₥₲₳Ɽ₳₲Ɇ ⚔️══════╗\n".. 
    "║ ℹ️ Script Ver: " .. scriptVersion .. "    |         🎮 Game Ver.: " .. getGameVersion() .. " 🎮     ║\n" ..
    "║ 🕹 Game: " .. gameName .. "      |      📅Date: " .. getDate() .. "      ║\n" ..
    "║ 🆔️ Username: " .. username .. " |⌚ Time: " .. getTime() .. "  ║\n" ..
    "╚══════════════════════════════════╝"
)


    if menu == nil then
        gg.toast("𝕋𝔸ℙ 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕄𝔸𝕀ℕ 𝕄𝔼ℕ𝕌")
        waitForGG()
    elseif menu == 1 then
        currencyMenu()
    elseif menu == 2 then
        suspensionMenu()
    elseif menu == 3 then
        hpMenu()
    elseif menu == 4 then
       maintenanceMenu()
    elseif menu == 5 then
        bodyKitMenu()
    elseif menu == 6 then
        glowMenu()
    elseif menu == 7 then
       unlockCrown()
    elseif menu == 8 then
        wingsAndRoofsFinder()
   elseif menu == 9 then
      unlockMenu()
   elseif menu == 10 then
      funMenu()
    elseif menu == 11 then
        lamborghiniMenu()
    elseif menu == 12 then
      achievementMenu1()
    elseif menu == 13 then
      achievementMenu2()
    elseif menu == 14 then
      raceMenu()
    elseif menu == 15 then
     extrasMenu()
    elseif menu == 16 then

gg.alert([[
₴₵Ɽł₱₮ ฿Ɏ _₵₱₥₲₳Ɽ₳₲Ɇ    
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⠀⣀⣠⣴⣾⡿⠟⢛⡿⠟⠛⠿⣯⡛⠉⠉⠛⠒⠀⠀
⠀⠀⠀⣀⡤⠼⢛⣿⢿⣿⠟⠃⠀⠀⢸⡇⠀⠀⠀⠀⠻⡄⠀⠀⠀⠀⠀
⠀⣠⣾⣭⣶⣶⣿⢱⠟⠁⠀⠀⠀⠀⠈⠻⠿⠛⠉⠉⠳⣽⠀⠀⠀⠀⠀
⠞⠉⠀⠀⢠⡟⠃⠈⠀⠀⠀⠀⢀⣤⣶⣿⠇⠀⠀⠀⠀⡈⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣽⣷⣦⣠⣀⣤⠴⠿⠿⠟⠋⠀⠀⠀⠀⣼⡏⠙⢿⣿⠶⠄
⠀⠀⠀⠀⠀⢈⡿⠏⢹⢹⠀⠀⠀⠀⠀⠀⠀⠀⣀⣾⠏⠀⣰⡿⠁⠀⠀
⠀⠀⠀⠀⠀⣾⠁⢀⡾⠀⣷⠀⠀⣀⡴⣶⠞⠛⣿⡀⠀⣰⡏⠁⠀⠀⠀
⠀⠀⠀⠀⠀⢾⠀⠀⠀⠀⠀⣠⣞⠙⢁⣿⠀⠐⢿⡆⢠⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠈⢷⣴⡶⠶⢿⡅⠉⠀⢀⡿⠀⠐⢾⡇⢰⣟⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠙⠀⠀⠀⠁⠀⡄⢠⡇⢠⣤⣾⠃⠘⣷⠀⠀⠀⠀⠀
⠀     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⠛⠛⠛⠀⠀⢹⣦⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠶⠶⠶⠟⠛⠉⠀⠀⠀⠀
]])


print("     ")
print("         𝕋ℍ𝔸ℕ𝕂𝕊 𝔽𝕆ℝ 𝕌𝕊𝕀ℕ𝔾 _ℂℙ𝕄𝔾𝔸ℝ𝔸𝔾𝔼 𝕌𝕃𝕋𝕀𝕄𝔸𝕋𝔼  𝕊ℂℝ𝕀ℙ𝕋 ℍ𝔸𝕍𝔼 𝔸 𝔾𝕆𝕆𝔻 𝔻𝔸𝕐😎🚀")
print("   ")
print("                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀")
print("                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠁")
print("                             ⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀")
print("                             ⢸⡄⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⠀⠀⠀⣰⡏⠀")
print("                             ⠈⣿⣄⠀⠀⠀⠈⠳⣦⣄⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⣠⣴⠟⠁⠀⠀⠀⣠⣿⠁⠀")
print("                                ⠀⠹⣿⣷⣄⠀⢤⡀⠘⢿⣷⣦⣀⠀⠀⣷⡀⠄⠀⠀⣤⠄⢸⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⣰⡇⠀⢀⣠⣾⡿⠋⢀⠄⠀⢀⣴⣿⠏⠀⠀")
print("                             ⠀⠀⠀⠻⣿⣿⣷⣴⣿⣶⡈⢻⣿⡿⣿⣾⢿⣧⠸⣶⣄⠈⠀⠘⣿⣿⣦⠀⠀⠀⠀⠀⠀⣴⣿⣿⠃⠀⠁⣠⣴⡏⢸⣿⣿⣿⣿⠟⠛⢁⣾⠋⠀⢀⣼⣿⠟⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠆⢹⣿⠁⠈⠹⣿⡎⢿⣿⡀⠀⠀⣿⡆⢿⡈⢿⣶⡀⢸⠉⣿⣷⠀⠀⠀⠀⣾⣿⠉⡏⢀⣶⣿⣿⣿⢁⣿⠏⢰⣿⡏⠀⢰⣿⣿⡀⣀⣾⡏⠀⠀⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠐⢄⣿⡀⠐⣤⣈⠡⠘⠙⣿⡀⣸⡟⠃⠸⣧⡀⢈⣿⡆⠀⢸⣿⣧⠀⠀⣸⣿⡇⠀⠰⣿⣿⠟⠙⢁⡼⠋⢀⣿⡟⠀⡼⠛⠛⠛⠻⣿⣯⡤⠂⠀⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠀⠈⢿⣷⣄⠘⣿⣷⢄⠀⢹⣿⠿⣇⠀⡄⢹⣿⠋⢻⡇⢲⣿⣿⠀⠀⠀⠀⣿⣿⡖⢸⣿⡇⠀⠐⢡⠀⢠⣾⡟⠀⠈⢀⡆⠀⠀⣠⣿⡿⠁⠀⠀⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣿⣿⣆⠁⢀⣿⠀⠹⣿⡇⠸⣿⣄⢺⣷⡀⢻⣿⣦⡀⠀⣴⣿⡿⢀⣾⣿⡤⠀⠀⢸⣿⣿⣿⠀⠀⢀⣾⣇⣤⣾⠿⠋⠀⠀⠀⠀⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠀⠀⠀⠀⣤⠈⠛⠿⣿⣷⣀⠻⡄⠀⣽⣅⣀⡀⠙⠣⠹⣷⡀⠙⣿⣷⣾⣿⠋⢀⣾⡿⠋⠀⢀⣀⣸⣿⡟⠁⠀⣠⣿⣿⠟⠋⠁⣤⠀⠀⠀⠀⠀⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠀⠀⠀⠘⠁⠀⠀⠀⠀⠈⠉⠓⠀⢸⣿⣿⠟⠀⠀⠀⠀⠈⠛⢄⠈⢿⡿⠁⡠⠟⠉⠀⠀⠀⠀⠻⣿⣿⣇⠀⠚⠉⠁⠀⠀⠀⠀⠈⠑⠀⠀⠀⠀⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⠁⠈⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
print("                             ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠒⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
print("⠀⠀⠀⠀         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⢤⣶⣶⣶⣶⣶⣒⣒⣀⣺⣿⣿⠿⢶⣶⣶⣶⣦⣤⣤⣤⣄⣀⣀⣀⣀⡀⠀⠀")
print("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠲⠦⢤⣉⠙⣿⣿⣿⣟⢿⣿⠿⠿⠿⢿⣿")
print("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣷⡦⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡇⠀⠈⠛⢿⣿⡀⠀⠀⠀⠻")
print("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣤⠤⢴⣿⣉⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⠀⠙⣿⣄⡀⠀⠀")
print("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⡶⠞⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠓⠒⠒⠢⠤⠤⣄⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠀⢠⠤⠤⠤⣤⣾⠀⠙⢦⡀")
print("⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⣾⣛⣩⢴⣿⠿⠶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠒⠒⠒⠤⠤⢤⣤⣾⢿⣴⢏⣀⣀⣤⡼⠻⡆⠀⠈⢷")
print("⠀⠀⠀⠀⠀⢀⣴⠋⠁⠀⠀⠀⠀⠙⠓⠲⠤⠬⠷⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠤⡞⠉⠀⠀⠹⡟⠀⠀⠀⠀⠀⢱⠀⢠⣼")
print("⠀⠀⠀⣀⡴⠋⠈⢙⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠢⠤⢄⣀⣠⠴⠛⣋⣠⠴⠒⠉⠉⢉⣲⠶⠀⣀⡠⠤⠒⠊⠉⠁⠀⠀⠀⠠⠀⡂⠐⢹⠂⠀⠀⠀⠀⣼⢰⣿⣿")
print("⡀⣠⣼⠏⠀⠀⣰⠟⠦⢤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠓⠒⠒⠒⠋⣉⠤⠒⠋⠁⠀⠀⠀⠀⡀⠠⠀⠈⠀⠁⠀⠀⠀⢸⠀⠀⠀⠀⢀⣯⣼⣿⣿")
print("⡟⠋⠹⢤⣠⠞⠁⠀⠀⠀⠀⠈⠉⠐⠲⠤⢄⣀⡀⠀⠀⠀⠀⣀⠤⠤⠤⠤⠤⣄⣀⣀⠀⢀⡠⠖⠋⠀⠀⠀⠄⡠⢐⠤⠀⠂⠀⣀⣀⡀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⢸⣿⣿⣿⣿")
print("⢻⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⢒⡶⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⢦⠀⠀⠀⠈⠈⠀⠀⠀⠀⢀⣴⣿⡿⣿⡝⣆⠀⠀⠀⠴⣽⠤⠞⣠⣵⠿⣻⣿⣿⠈")
print("⢿⣿⣿⠶⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⠇⠀⠀⠀⠀⣀⣀⣤⣤⣾⣿⢿⡆⢸⣧⢹⠀⠄⣪⣶⣿⣴⠟⢋⣥⠴⢻⣿⠏⠀")
print("⢸⣿⣿⡇⠀⠘⣿⣶⣦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠈⠑⠲⠤⢤⣀⣀⡀⠀⠀⠀⠀⠀⠀⣀⣀⣞⣀⣠⣤⣾⣿⣿⣿⣿⣿⣿⢻⢸⣿⣾⣿⣾⣤⣾⣿⠿⢋⡡⠞⠉⠉⠉⠉⠀⠀⠀")
print("⣼⡟⣿⡇⠀⠀⢹⣄⠈⠙⠒⠯⣽⣶⢶⣤⣤⣄⣀⣀⠀⠀⠀⠀⠈⠙⠻⠿⠿⠿⠿⠿⠿⠛⠛⠛⢉⣉⣽⠶⣿⠟⣿⣿⣧⣿⣾⣿⣿⡇⢹⡿⠋⣡⠖⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀")
print("⣇⠳⣼⣧⠴⠛⠉⠉⠉⠒⣦⣤⣀⡀⠀⠀⠉⠙⢦⠀⠉⠉⢙⣷⣶⠒⠒⠒⠶⡶⠶⠶⢶⣤⠖⠚⠉⠁⠀⣰⣷⠾⣿⢿⢥⣼⣾⣿⣿⠃⣸⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
print("⠈⠳⣌⣿⢦⣄⠀⢀⣴⣿⣿⣷⣿⡯⣗⠲⠤⣀⡈⣇⠀⠀⠻⡄⠈⣷⠀⠀⠀⡿⠒⠶⠾⢿⠀⠀⠀⢠⣾⡏⠁⣸⡇⢸⡸⢠⡌⢡⣿⠴⠿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
print("⠀⠀⠈⠙⠳⢿⣙⠺⢽⣿⣮⣿⣿⠗⠋⠀⠀⠀⠉⡿⠀⠀⣀⣹⣿⣯⣤⣶⣚⣛⣒⣛⣓⣿⠀⠀⠀⢽⣿⣶⣶⡏⢧⣼⣷⡿⢁⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
print("⠀⠀⠀⠀⠀⠀⠈⠙⠢⢬⣙⠛⠧⢤⣀⣀⠀⢀⣴⠃⠀⢀⣹⢦⣤⣉⣉⣯⣍⣹⣿⣿⣿⡃⣀⡤⠴⠛⠋⠁⠀⡇⠘⣜⣏⣠⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
print("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠓⠦⢤⣈⡉⠉⠙⠛⠛⠛⠲⠤⠤⠤⠴⣶⣶⣿⣿⢿⡿⣯⠀⠀⠀⠀⠀⢀⣠⡟⠤⠿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀")
print("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠒⠲⠤⢤⣄⣀⣀⣀⣤⣈⣤⣤⠤⣴⣿⣥⠤⠴⠒⠚⠋⠉⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
os.exit() -- Ends the script after showing the signature
    end
end
function currencyMenu()
    local choice = gg.choice({
        "⟦💵 𝕄𝕆ℕ𝔼𝕐 𝕄𝔼ℕ𝕌⟧",
        "⟦🪙 ℂ𝕆𝕀ℕ 𝕄𝔼ℕ𝕌⟧",
        "⟦❌️ 𝔹𝔸ℂ𝕂⟧"
    }, nil, "💰 ℂ𝕌ℝℝ𝔼ℕℂ𝕐 𝕄𝔼ℕ𝕌💰")

    if choice == nil then
        gg.toast("𝕋𝔸ℙ 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕄𝔸𝕀ℕ 𝕄𝔼ℕ𝕌")
        waitForGG()
    elseif choice == 1 then
        moneyMenu()
    elseif choice == 2 then
        coinMenu()
    elseif choice == 3 then
        mainMenu()
    end
end

function moneyMenu()
    gg.alert('💰𝕎𝔼𝕃ℂ𝕆𝕄𝔼 𝕋𝕆 𝕄𝕆ℕ𝔼𝕐 𝕄𝔼ℕ𝕌💰\n ℝ𝔼𝕊𝔼𝕋 𝔾𝔾 + 𝔾𝔸𝕄𝔼 𝔸𝔽𝕋𝔼ℝ 𝔼𝔸ℂℍ 𝕄𝕆ℕ𝔼𝕐 ℍ𝔸ℂ𝕂')
 while true do 
 local choice=gg.choice({'⟦❌️ℝ𝔼𝕊𝔼𝕋 ℂ𝔸𝕊ℍ⟧','⟦⚜️𝔹𝕀𝕃𝕃𝕀𝕆ℕ𝔸𝕀ℝ𝔼⟧','⟦👑𝟝𝟘𝕄 ℂ𝔸𝕊ℍ⟧','⟦💰𝟜𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦💸𝟜𝟘𝕄 ℂ𝔸𝕊ℍ⟧','⟦💵𝟛𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦💶𝟛𝟘𝕄 ℂ𝔸𝕊ℍ⟧','⟦💷𝟚𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦💴𝟚𝟘𝕄 ℂ𝔸𝕊ℍ⟧','⟦🎫𝟙𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦💲𝟙𝟘𝕄 ℂ𝔸𝕊ℍ⟧','⟦😎𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦🎁𝟜.𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦🎉𝟜𝕄 ℂ𝔸𝕊ℍ⟧','⟦✨️𝟛.𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦🏧𝟛𝕄 ℂ𝔸𝕊ℍ⟧','⟦💲𝟚.𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦💱𝟚𝕄 ℂ𝔸𝕊ℍ⟧','⟦✔️𝟙.𝟝𝕄 ℂ𝔸𝕊ℍ⟧','⟦🥇𝟙𝕄 ℂ𝔸𝕊ℍ⟧','⟦🎟𝟝𝟘𝟘𝕂 ℂ𝔸𝕊ℍ⟧','⟦✨️𝟚𝟝𝟘𝕂 ℂ𝔸𝕊ℍ⟧','⟦🧨𝟙𝟘𝟘𝕂 ℂ𝔸𝕊ℍ⟧','⟦🚮𝟝𝟘𝕂 ℂ𝔸𝕊ℍ⟧','⟦❌️𝔼𝕏𝕀𝕋⟧'},nil,'💰 𝕄𝕆ℕ𝔼𝕐 𝕄𝔼ℕ𝕌 💰')
if choice == nil or choice == 25 then 
gg.toast('ℝ𝔼𝕋𝕌ℝℕ𝕀ℕ𝔾 𝕋𝕆 ℂ𝕌ℝℝ𝔼ℕℂ𝕐 𝕄𝔼ℕ𝕌')
return currencyMenu()
end

if choice == 1 then
resetMoney()
elseif choice == 2 then
twoBillion()
elseif choice == 3 then
 fiftyMil()
elseif choice == 4 then
fourFive()
elseif choice == 5 then 
fourtyMil()
elseif choice == 6 then
threeFive()
elseif choice == 7 then
thirtyMil()
elseif choice == 8 then
twoFive()
elseif choice == 9 then
twentyMil()
elseif choice == 10 then
oneFive()
elseif choice == 11 then
tenMil()
elseif choice == 12 then
fiveMil()
elseif choice == 13 then
fourtyFivem()
elseif choice == 14 then
fourMil()
elseif choice == 15 then
thirtyFive()
elseif choice == 16 then
threeMil()
elseif choice == 17 then
twentyFive()
elseif choice == 18 then
twoMil()
elseif choice == 19 then
oneFiveMil()
elseif choice == 20 then
oneMil()
elseif choice == 21 then
fiveHundredk()
elseif choice == 22 then
twoFiftyk()
elseif choice == 23 then
oneHundredk()
elseif choice == 24 then
fiftyK()
   end
  end
end

function resetMoney()
    gg.alert("𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ 𝔹𝕌𝕐 𝕃𝕀𝕊𝕋 𝔸ℕ𝔻 𝔽𝕀ℕ𝔻 ℂ𝔸ℝ 𝕎𝕀𝕋ℍ 𝕌ℕ𝔹𝕆𝕌𝔾ℍ𝕋 𝔹𝕆𝔻𝕐 𝕂𝕀𝕋 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") --wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)

    -- Step 1: Search first body kit price ($5,000)
    gg.alert('𝔽𝕀ℕ𝔻 𝔹𝕆𝔻𝕐 𝕂𝕀𝕋 𝕎𝕆ℝ𝕋ℍ = $𝟝,𝟘𝟘𝟘')
    gg.sleep(6000)
    gg.searchNumber('5000', gg.TYPE_DWORD)
    gg.getResults(100)
    gg.sleep(4000)

    -- Step 2: Search second body kit price ($10,000)
    gg.alert('ℕ𝕆𝕎 𝔸𝔻𝔻 𝔸ℕ𝕆𝕋ℍ𝔼ℝ ℙ𝔸ℝ𝕋 𝕊𝕆 = $𝟙𝟘,𝟘𝟘𝟘')
    gg.sleep(4000)
    gg.searchNumber('10000', gg.TYPE_DWORD)
    local results = gg.getResults(1) -- Get the last searched value
    gg.sleep(3000)

    -- Prompt for money and car price input
    local input = gg.prompt(
        {'Enter Current Money Value', 'Enter Car Price'},
        {nil, nil},
        {'number', 'number'}
    )

    if input and input[1] and input[2] then
        local moneyValue = tonumber(input[1]) -- Convert money input to number
        local carPrice = tonumber(input[2]) -- Convert car price input to number

        -- Step 3: Subtract car price and add -15,000 to adjust balance to 0
        if results and #results > 0 then
            local editedValue = (moneyValue - carPrice) + (-5000)
            results[1].value = editedValue  -- Apply the edited value directly
            gg.setValues(results)
        end

        gg.sleep(2000)
        gg.alert('ℕ𝕆𝕎 𝔽𝕀ℕ𝔻 𝔹𝕆𝔻𝕐 𝕂𝕀𝕋 ℙ𝔸ℝ𝕋 𝕎𝕀𝕋ℍ ℕ𝔼𝕎 ℙℝ𝕀ℂ𝔼 𝔸ℕ𝔻 𝔹𝕌𝕐 ℂ𝔸ℝ')
        gg.sleep(5000)
        gg.clearResults()
        gg.toast('𝕄𝕠𝕟𝕖𝕪 𝕊𝕦𝕔𝕔𝕖𝕤𝕤𝕗𝕦𝕝𝕝𝕪 ℝ𝕖𝕤𝕖𝕥')
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
        waitForGG(currencyMenu)
    else
        gg.alert('Invalid input. Please enter valid numbers.')
    end
end

function twoBillion()
    
    gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('60', gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.sleep(4000)
    gg.editAll('9999999', gg.TYPE_FLOAT)
    gg.sleep(4000)
    
    gg.alert('ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖')
    gg.sleep(10000)
    
    gg.clearResults()
    gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')

    -- Wait for GG tap before returning to currency menu
    waitForGG(currencyMenu)
end

function fiftyMil()
    
    gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('60', gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.sleep(4000)
    gg.editAll('1666666', gg.TYPE_FLOAT)
    gg.sleep(4000)
    
    gg.alert('ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖')
    gg.sleep(10000)
    
    gg.clearResults()
    gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')

    -- Wait for GG tap before returning to currency menu
    waitForGG(currencyMenu)
end

function fourFive()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 1500000 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( ' ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function fourtyMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 1333333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('??𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function threeFive()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 1166667 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( ' ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖' )
gg.sleep(10000)
gg. clearResults ()
gg.toast(' 𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function thirtyMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 1000000 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( ' ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function twoFive()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 833333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu
) -- Ensures script returns to menu instead of restarting
end

function twentyMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 666667 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function oneFive()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 500000' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( ' ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function tenMil()


gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 333333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( '𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function fiveMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 166667 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function fourFivem()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 150000' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function fourMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 133333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function thirtyFive()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 116667 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function threeMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 100000 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function twentyFive()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 83333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function twoMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 66667 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function oneFiveMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 50000 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function oneMil()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 33333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function fiveHundredk()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 16667 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function twoFiftyk()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 300)
gg.sleep(4000)
gg. editAll ( ' 8333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function oneHundredk()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 3333 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function fiftyK()

gg.alert('𝔾𝕆 𝕋𝕆 ℙ𝔸ℝ𝕂𝕀ℕ𝔾 𝕃𝔼𝕍𝔼𝕃 #𝟚 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( '60 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.sleep(4000)
gg. editAll ( ' 1667 ' ,gg. TYPE_FLOAT )
gg.sleep(4000)
gg.alert ( 'ℂ𝕝𝕚𝕔𝕜 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝕃𝕖𝕧𝕖𝕝 #𝟚, 𝕋𝕙𝕖𝕟 𝔹𝕒𝕔𝕜 𝕥𝕠 𝕆𝕥𝕙𝕖𝕣 𝕃𝕖𝕧𝕖𝕝𝕤, 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝕃𝕖𝕧𝕖𝕝 #𝟛 𝕒𝕟𝕕 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 ' )
gg.sleep(10000)
gg. clearResults ()
gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕦𝕣𝕣𝕖𝕟𝕔𝕪 𝕄𝕖𝕟𝕦')
    waitForGG(currencyMenu) -- Ensures script returns to menu instead of restarting
end

function coinMenu()
    gg.alert('🏆𝕎𝔼𝕃ℂ𝕆𝕄𝔼 𝕋𝕆 ℂ𝕆𝕀ℕ 𝕄𝔼ℕ𝕌🏆\n ℝ𝕖𝕤𝕖𝕥 𝔾𝕒𝕞𝕖 +𝔾𝔾 𝔸𝕗𝕥𝕖𝕣 𝔼𝕒𝕔𝕙 ℂ𝕠𝕚𝕟 𝕄𝕠𝕕')
 while true do 
 local choice=gg.choice({'⟦❌️ℝ𝕖𝕤𝕖𝕥 ℂ𝕠𝕚𝕟𝕤⟧','⟦🪦ℂ𝕠𝕚𝕟 ℝ𝕖𝕧𝕚𝕧𝕖⟧','⟦♻️ℂ𝕠𝕚𝕟 ℝ𝕖𝕔𝕠𝕧𝕖𝕣𝕪⟧','⟦🪙𝟝𝟘𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🎫𝟜𝟝𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🚀𝟜𝟘𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🎁𝟛𝟝𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦✨️𝟛𝟘𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦👑𝟚𝟝𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🧨𝟚𝟘𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🎟𝟙𝟝𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🥇𝟙𝟘𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💳𝟡𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💶𝟠𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💴𝟟𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💷𝟞𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🎉𝟝𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💱𝟜𝟝𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🏧𝟜𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💰𝟛𝟝𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🏆𝟛𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💸𝟚𝟝𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦💲𝟚𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦✔️𝟙𝟝𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🎆𝟙𝟘𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🎖𝟝𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦😎𝟜𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🤑𝟛𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦✅️𝟚𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦🚮𝟙𝕂 ℂ𝕠𝕚𝕟𝕤⟧','⟦??ℂ𝕠𝕚?? 𝕀𝕟𝕗𝕠⟧','⟦❌️??𝕩𝕚𝕥⟧'},nil,'🪙 ℂ𝕆𝕀ℕ 𝕄𝔼ℕ𝕌 🪙')
if choice == nil or choice == 32 then 
gg.toast('ℝ𝔼𝕋𝕌ℝℕ𝕀ℕ𝔾 𝕋𝕆 ℂ𝕌ℝℝ𝔼ℕℂ𝕐 𝕄𝔼ℕ𝕌')
return currencyMenu()
end

if choice == 1 then
 resetCoins()
elseif choice == 2 then
coinRevive()
 elseif choice == 3 then
 coinRecovery()
elseif choice == 4 then
fiveHundred()
elseif choice == 5 then
fourFifty()
elseif choice == 6 then 
fourHundred()
elseif choice == 7 then
threeFifty()
elseif choice == 8 then
threeHundred()
elseif choice == 9 then
twoFifty()
elseif choice == 10 then
twoHundred()
elseif choice == 11 then
oneFifty()
elseif choice == 12 then
oneHundred()
elseif choice == 13 then
ninetyCoins()
elseif choice == 14 then
eightyCoins()
elseif choice == 15 then
seventyCoins()
elseif choice == 16 then
sixtyCoins()
elseif choice == 17 then
fiftyCoins()
elseif choice == 18 then
fourtyFive()
elseif choice == 19 then
fourtyCoins()
elseif choice == 20 then
thirtyFive()
elseif choice == 21 then
thirtyCoins()
elseif choice == 22 then
twentyFive()
elseif choice == 23 then
twentyCoins()
elseif choice == 24 then
fifteenCoins()
elseif choice == 25 then
tenCoins()
elseif choice == 26 then
fiveCoins()
elseif choice == 27 then
fourCoins()
elseif choice == 28 then
threeCoins()
elseif choice == 29 then
twoCoins()
elseif choice == 30 then
oneCoins()
elseif choice == 31 then
coinsInfo()
   end
  end
end

function resetCoins()
    local input = gg.prompt({'Enter Current Coin Value'}, {0}, {'number'})
    
    if input and input[1] then
        local coinValue = tonumber(input[1]) -- Convert input to number
        
        -- Calculate the edit value using the ratio 100k = -294,867,296
        local editValue = (coinValue * (294867296 / 100000)) + 2949 --1 coin

        gg.alert('𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋') --wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

        -- Search for the entered coin value
        gg. setRanges (gg. REGION_ANONYMOUS)
        gg.sleep(1000)
        gg.searchNumber('500;100',gg.TYPE_DWORD)
        local results = gg.getResults(50)

        if #results > 0 then
            -- Apply the calculated edit value to reset coins to 0
            gg.editAll(tostring(coinValue), gg.TYPE_DWORD)

            gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟙")
            gg.sleep(9000)
            gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
            gg.clearResults()
        else
            gg.alert("❌ ℕ𝕠 𝕧𝕒𝕝𝕦𝕖𝕤 𝕗𝕠𝕦𝕟𝕕! 𝕄𝕒𝕜𝕖 𝕤𝕦𝕣𝕖 𝕪𝕠𝕦'𝕣𝕖 𝕚𝕟 𝕥𝕙𝕖 𝕔𝕠𝕣𝕣𝕖𝕔𝕥 𝕞𝕖𝕟𝕦 𝕓𝕖𝕗𝕠𝕣𝕖 𝕒𝕡𝕡𝕝𝕪𝕚𝕟𝕘.")
        end
    else
        gg.alert("Invalid coin input. Try again.")
    end

    gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function coinRevive()
    -- Prompt user for current coin value
    local input = gg.prompt({'Enter Current Coin Value'}, {0}, {'number'})

    if input and input[1] then
        local coinValue = tonumber(input[1]) -- Convert input to number

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

        gg.setRanges(gg.REGION_ANONYMOUS)

        -- Search for negative coin value range (e.g., large number or range around the negative value)
        gg.searchNumber("500;100", gg.TYPE_DWORD)
        gg.sleep(2000)
        local results = gg.getResults(100)

        if #results > 0 then
            -- Go to first result
            gg.gotoAddress(results[1].address)

            -- Modify value to a large positive number (wrap around the negative value)
            local largePositiveValue = 2147483647 -- Max 32-bit unsigned value (2,147,483,647)
            local floatResults = gg.getResults(1) -- Get float value at address
            floatResults[1].value = largePositiveValue
            floatResults[1].flags = gg.TYPE_DWORD
            gg.setValues(floatResults)
            gg.sleep(1000)

            -- Apply final edit and reset coin value
            gg.editAll(tostring(largePositiveValue), gg.TYPE_DWORD)

            gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟙")
            gg.sleep(9000)
            gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")

            gg.clearResults()
        else
            gg.alert("❌ ℕ𝕠 𝕧𝕒𝕝𝕦𝕖𝕤 𝕗𝕠𝕦𝕟𝕕! 𝕄𝕒𝕜𝕖 𝕤𝕦𝕣𝕖 𝕪𝕠𝕦'𝕣𝕖 𝕚𝕟 𝕥𝕙𝕖 𝕔𝕠𝕣𝕣𝕖𝕔𝕥 𝕞𝕖𝕟𝕦 𝕓𝕖𝕗𝕠𝕣𝕖 𝕒𝕡𝕡𝕝𝕪𝕚𝕟𝕘.")
        end
    else
        gg.alert("❌ 𝕀𝕟𝕧𝕒𝕝𝕚𝕕 𝕀𝕟𝕡𝕦𝕥! 𝔼𝕟𝕥𝕖𝕣 𝕪𝕠𝕦𝕣 𝕔𝕠𝕚𝕟 𝕧𝕒𝕝𝕦𝕖.")
    end

    gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu)
end

function coinRecovery()
gg.alert('ℂ𝕠𝕞𝕚𝕟𝕘 𝕊𝕠𝕠𝕟.....')
    end

function fiveHundred()
    
    gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.sleep(15000) -- Increased sleep time for stability

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅  ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294467296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ ℕ𝕠 𝕧𝕒𝕝𝕦𝕖𝕤 𝕗𝕠𝕦𝕟𝕕! 𝕄𝕒𝕜𝕖 𝕤𝕦𝕣𝕖 𝕪𝕠𝕦'𝕣𝕖 𝕚𝕟 𝕥𝕙𝕖 𝕔𝕠𝕣𝕣𝕖𝕔𝕥 𝕞𝕖𝕟𝕦 𝕓𝕖𝕗𝕠𝕣𝕖 𝕒𝕡𝕡𝕝𝕪𝕚𝕟𝕘.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fourFifty()

gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294507296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fourHundred()
    gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294567296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end
    function threeFifty()

          gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294607296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function threeHundred()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294667296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end
function twoFifty()

       gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294707296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function twoHundred()

       gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
 

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294767296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function oneFifty()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
   

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ")
        gg.sleep(6000)
        gg.toast("✅  ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294807296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function oneHundred()

gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    
    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294867296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end
function ninetyCoins()

gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
  
    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294877296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function eightyCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
  
    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294887296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function seventyCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294897296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function sixtyCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
 
    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep (6000)
        gg.toast("✅  ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294907296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fiftyCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294917296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fourtyFive()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 ??𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294922296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fourtyCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294927296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function thirtyFive()

     gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)
    

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294932296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function thirtyCoins()

       gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function twentyFive()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294942296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function twentyCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294947296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟??')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fifteenCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294952296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function tenCoins()

     gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")-- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294957296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fiveCoins()

      gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294962296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function fourCoins()

       gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294963296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function threeCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294964296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function twoCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294965296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒?? ??𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function oneCoins()

        gg.alert("𝔾𝕆 𝕋𝕆 𝔻ℝ𝕀𝕍𝔼ℝ 𝔼𝔻𝕀𝕋 𝕄𝔼ℕ𝕌 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋") -- Wait for user to open GG before continuing
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("500;100", gg.TYPE_DWORD)
    gg.sleep(2000) -- Added delay before getting results
    local results = gg.getResults(50) -- Reduced batch size to prevent crashes

    if #results > 0 then
        gg.editAll("-2000000000", gg.TYPE_DWORD)
        gg.sleep(2000) -- Added delay to ensure values apply properly
        gg.alert("ℕ𝕠𝕨 𝕘𝕠 𝕥𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝕒𝕟𝕕 𝕓𝕦𝕪 𝟚 𝕨𝕚𝕥𝕙 -$ ")
        gg.sleep(6000)
        gg.toast("✅ ℂ𝕠𝕚𝕟 ℍ𝕒𝕔𝕜 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!")
        gg.alert('𝔸𝕗𝕥𝕖𝕣 𝔹𝕦𝕪𝕚𝕟𝕘 𝔹𝕠𝕥𝕙 -$ 𝕎𝕒𝕚𝕥 𝕀𝕟 𝔻𝕣𝕚𝕧𝕖𝕣 𝕄𝕖𝕟𝕦 𝔽𝕠𝕣 𝔽𝕚𝕟𝕒𝕝 𝔼𝕕𝕚𝕥')
        gg.editAll("-294966296",gg.TYPE_DWORD)
        gg.sleep(3000)
        gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕟𝕕 𝔹𝕦𝕪 𝟙 ℂ𝕙𝕒𝕟𝕘𝕖𝕕 ℙ𝕣𝕚𝕔𝕖 ✅️')
        gg.sleep(5000)
        gg.clearResults()
    else
        gg.alert("❌ No values found! Make sure you're in the correct menu before applying.")
    end
        gg.toast('𝕋𝕒𝕡 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℂ𝕠𝕚𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(coinMenu) -- Ensures script returns to menu instead of restarting
end

function coinsInfo()
    gg.alert('𝕋𝕠 𝕊𝕖𝕥 ℂ𝕠𝕚𝕟𝕤 𝕋𝕠 𝟘 𝕌𝕤𝕖 ℝ𝕖𝕤𝕖𝕥 ℂ𝕠𝕚𝕟𝕤 \n 𝕀𝕗 𝔸𝕝𝕝 𝔸𝕟𝕚𝕞𝕒𝕥𝕚𝕠𝕟𝕤 𝔸𝕣𝕖 𝔹𝕠𝕦𝕘𝕙𝕥 𝕌𝕤𝕖 ℂ𝕠𝕚𝕟 ℝ𝕖𝕔𝕠𝕧𝕖𝕣𝕪 \n 𝕀𝕗 ℂ𝕠𝕚𝕟 𝕍𝕒𝕝𝕦𝕖 𝕀𝕤 𝕊𝕥𝕦𝕔𝕜 ℕ𝕖𝕘𝕒𝕥𝕚𝕧𝕖 𝕌𝕤𝕖 ℂ𝕠𝕚𝕟 ℝ𝕖𝕧𝕚𝕧𝕖')
    gg.toast('Returning To Coin Menu')
    return coinMenu()
    end
-- Wait for GG to proceed
function waitForGG()
    gg.toast("Tap GG to continue...")
    while true do
        if gg.isVisible() then
            gg.sleep(1000)
            break
        end
        gg.sleep(100)
    end
end

-- Suspension Menu
function suspensionMenu()
    while true do
        local choice = gg.choice({
            '⟦ℂ𝕒𝕞𝕓𝕖𝕣 𝕄𝕖𝕟𝕦 📏⟧', 
            '⟦𝕀𝕟𝕧𝕖𝕣𝕥𝕖𝕕 ℂ𝕒𝕞𝕓𝕖𝕣 🤯⟧', 
            '⟦ℙ𝕠𝕤𝕚𝕥𝕚𝕧𝕖 ℂ𝕒𝕞𝕓𝕖𝕣 ⛔️⟧',
            '⟦ℂ𝕦𝕤𝕥𝕠𝕞 ℂ𝕒𝕞𝕓𝕖𝕣 ⬆️⟧', 
            '⟦𝕌𝔽𝕆 𝕄𝕖𝕟𝕦 🛸⟧', 
            '⟦𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝕄𝕖𝕟𝕦 🏎⟧', 
            '⟦𝕄𝕠𝕟𝕤𝕥𝕖𝕣 𝕋𝕣𝕦𝕔𝕜 𝕃𝕚𝕗𝕥 🛻⟧',
            '⟦❌️𝔹𝕒𝕔𝕜⟧'
        }, nil, '🔧𝕊𝕦𝕤𝕡𝕖𝕟𝕤𝕚𝕠𝕟 𝕄𝕖𝕟𝕦🔧')

        if choice == nil or choice == 8 then
            gg.toast("ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕄𝕒𝕚𝕟 𝕄𝕖𝕟𝕦")
            return mainMenu() -- Returns to main menu when back is pressed
        end

        if choice == 1 then
            camberMenu()
        elseif choice == 2 then
           invertedCamber()
        elseif choice == 3 then
            positiveCamber()
        elseif choice == 4 then
            customCamber()
        elseif choice == 5 then
            ufoMode()
        elseif choice == 6 then
            steeringAngleMenu()
        elseif choice == 7 then
           monsterTruck()
        end
    end
end

-- Camber function
function camberMenu()
    while true do
        local choice = gg.choice({'⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟙(-𝟞𝟘°)⬆️⟧', '⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟚(-𝟝𝟘°)↗️⟧', '⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟛(-𝟜𝟘°)➡️⟧','⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟜(-𝟛𝟞°)↘️⟧','⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟝(-𝟛𝟘°)⬇️⟧','⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟞(-𝟚𝟝°)↙️⟧','⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟟(-𝟚𝟘°)⬅️⟧','⟦ℂ𝕒𝕞𝕓𝕖𝕣 #𝟠(-𝟙𝟝°)↖️⟧', '⟦❌️𝔹𝕒𝕔𝕜⟧'}, nil, '📐ℂ𝕒𝕞𝕓𝕖𝕣 𝕄𝕖𝕟𝕦📐')
        if choice == nil or choice == 9 then
           gg.toast("ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕊𝕦𝕤𝕡𝕖𝕟𝕤𝕚𝕠𝕟 𝕄𝕖𝕟𝕦...")
            return suspensionMenu() -- Returns to suspension menu when back is pressed
        end

if choice == 1 then
camber1()
elseif choice == 2 then
camber2()
elseif choice == 3 then
camber3()
elseif choice == 4 then
camber4()
elseif choice == 5 then
camber5()
elseif choice == 6 then
camber6()
elseif choice == 7 then
camber7()
elseif choice == 8 then
camber8()
   end
  end
end


function camber1()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -60 ' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

function camber2()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -50 ' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

function camber3()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -40 ' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

function camber4()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -36 ' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

function camber5()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -30 ' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

function camber6()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -25' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

function camber7()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -20 ' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end


function camber8()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -15 ' ,gg. TYPE_FLOAT )
gg.alert ( ' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

-- Inverted Camber Function
function invertedCamber()

gg.setRanges(gg. REGION_ANONYMOUS)
gg.searchNumber('-1',gg.TYPE_FLOAT) -- Presearch
gg.getResults(100)
gg.sleep(2000)
gg.editAll('1',gg.TYPE_FLOAT)
gg.sleep(500)
gg.clearResults()

gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' -225 ' ,gg. TYPE_FLOAT )
gg.alert ( '  ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕 ✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

-- Positive Camber function
function positiveCamber()
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
gg. setRanges (gg. REGION_ANONYMOUS)
gg. searchNumber ( ' -10 ' , gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' 0 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg.alert ( ' 𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘 ' )
gg.sleep ( 5000 )
gg. searchNumber ( ' -10 ' ,gg. TYPE_FLOAT )
gg. getResults ( 100 )
gg. editAll ( ' 30 ' ,gg. TYPE_FLOAT )
gg.alert ( '  ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕 ✅️ ' )
gg. clearResults ()
gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
waitForGG(suspensionMenu)
end

-- Custom Camber function
function customCamber()
    -- Pre-search step: Search -10 and edit -10 (before the prompt and main sequence)
    gg.searchNumber('-10', gg.TYPE_FLOAT)  -- Pre-search for -10
    local results = gg.getResults(100)  -- Fetch results to prepare for editing

    if #results > 0 then
        gg.editAll('-10', gg.TYPE_FLOAT)  -- Edit -10 (reset)
        gg.clearResults()  -- Clear results after pre-search
    else
        gg.toast("❌ Pre-search for -10 failed! No results found.")
        return
    end

    -- Prompt for custom camber input after pre-search
    local input = gg.prompt({'Enter Custom Camber Value'}, {nil}, {'number'})
    if input and input[1] then
        local value = input[1]

        -- Main sequence
gg.alert ( ' 𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋' )
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
        gg.searchNumber('-10', gg.TYPE_FLOAT)  -- Search for -10
        gg.getResults(100)  -- Fetch results for -10

        gg.alert('𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘')
        gg.sleep(5000)  -- Wait for user to set incline to 0
        gg.searchNumber('0', gg.TYPE_FLOAT)  -- Search for -10
        gg.getResults(100)  -- Fetch results for -10

        gg.alert('𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘')
        gg.sleep(5000)  -- Wait for incline to go back to 10
        gg.searchNumber('-10', gg.TYPE_FLOAT)  -- Search for -10
        local results = gg.getResults(100)

        if #results > 0 then
            -- Apply the custom camber value based on input
            gg.editAll(tostring(value), gg.TYPE_FLOAT)  -- Edit to custom camber value
            gg.toast(' ℂ𝕒𝕞𝕓𝕖𝕣 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕 ✅️')
            gg.sleep(5000)
            gg.clearResults()  -- Clear after edit
            gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
            waitForGG(suspensionMenu)
      
        end
    end
end

-- UFO Menu
function ufoMode()
    while true do
        local choice = gg.choice({'⟦𝕌𝔽𝕆 𝕄𝕠𝕕𝕖 𝟙 👽⟧', '⟦𝕌𝔽𝕆 𝕄𝕠𝕕𝕖 𝟚 👾⟧', '⟦𝕌𝔽𝕆 𝕄𝕠𝕕𝕖 𝟛 🛸⟧', '⟦❌️𝔹𝕒𝕔𝕜⟧'}, nil, '👽𝕌𝔽𝕆 𝕄𝕖𝕟𝕦👽')
        if choice == nil or choice == 4 then
           gg.toast("ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕊𝕦𝕤𝕡𝕖𝕟𝕤𝕚𝕠𝕟 𝕄𝕖𝕟𝕦...")
            return suspensionMenu() -- Returns to suspension menu when back is pressed
        end

        local ufoValues = {-90, -120, -180}
        applyUfoPreset(ufoValues[choice])
    end
end

function applyUfoPreset(value)
    -- Pre-search step for UFO mode before applying
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('-10', gg.TYPE_FLOAT)
    gg.getResults(100)  -- Just searching, not editing yet
    gg.sleep(1000)
    gg.clearResults()  -- Clear after the pre-search
    
    -- UFO Mode application steps
    gg.alert('𝕊𝔼𝕋 𝕀ℕℂ𝕃𝕀ℕ𝔼 𝕋𝕆 𝟙𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.alert('𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟘')
    gg.sleep(5000)
    gg.alert('𝕊𝕖𝕥 𝕀𝕟𝕔𝕝𝕚𝕟𝕖 𝕋𝕠 𝟙𝟘')
    gg.sleep(5000)

    gg.toast('𝔸𝕡𝕡𝕝𝕪𝕚𝕟𝕘 𝕌𝔽𝕆 𝕄𝕠𝕕𝕖...')
    
    -- Main Search after Pre-search (searching the region)
    gg.searchNumber('-10', gg.TYPE_FLOAT)  -- Main search after pre-search
    local results = gg.getResults(100)

    -- Ensure that there are results before applying the changes
    if #results > 0 then
        gg.editAll(tostring(value), gg.TYPE_FLOAT)
        gg.sleep(4000)
        gg.toast('𝕌𝔽𝕆 𝔸𝕡𝕡𝕝𝕚𝕖𝕕 𝕊𝕦𝕔𝕔𝕖𝕤𝕤𝕗𝕦𝕝𝕝𝕪👽✅️')
        gg.toast('ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 ℝ𝔼𝕋𝕌ℝℕ 𝕋𝕆 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕄𝔼ℕ𝕌')
        waitForGG(suspensionMenu)
    else
        gg.alert('❌ UFO values not found! Try again.')
    end

    gg.sleep(5000)
    gg.clearResults()
end

-- Steering Angle Menu
function steeringAngleMenu()
    while true do
        local choice = gg.choice({
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙 (70°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚 (80°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟛 (90°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟜 (100°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟝 (110°)⟧', 
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 ??????𝕝𝕖 𝟞 (120°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟟 (130°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟠 (140°)⟧', 
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟡 (150°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟘 (160°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟙 (170°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟚 (180°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟛 (190°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟜 (200°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟝 (210°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟞 (220°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟟 (230°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟠 (240°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟙𝟡 (250°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟘 (260°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟙 (270°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟚 (280°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟛 (290°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟜 (300°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟝 (310°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟞 (320°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟟 (330°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟠 (340°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟚𝟡 (350°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟛𝟘 (360°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟛𝟙 (720°)⟧',
            '⟦🛠 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝟛𝟚 (1080°)⟧', 
            '⟦❌️𝔹𝕒𝕔𝕜⟧'
        }, nil, '↪️𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝕄𝕖𝕟𝕦↩️')

        if choice == nil or choice == 33 then
            gg.toast("ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕊𝕦𝕤𝕡𝕖𝕟𝕤𝕚𝕠𝕟 𝕄𝕖𝕟𝕦.....")
            return suspensionMenu() -- Returns to suspension menu when back is pressed
        end

        local angles = {70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350, 360, 720, 1080}
        applySteeringAngle(angles[choice])
    end
end

function applySteeringAngle(value)
    gg.alert('𝕄𝕠𝕧𝕖 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝕋𝕠 𝟞𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.searchNumber('60', gg.TYPE_FLOAT)
    gg.getResults(100)

    gg.alert('𝕄𝕠𝕧𝕖 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝕋𝕠 𝟛𝟘')
    gg.sleep(5000)
    gg.searchNumber('30', gg.TYPE_FLOAT)
    local results = gg.getResults(100)

    if #results > 0 then
        gg.editAll(tostring(value), gg.TYPE_FLOAT)
        gg.toast('✅ 𝕊𝕥𝕖𝕖𝕣𝕚𝕟𝕘 𝔸𝕟𝕘𝕝𝕖 𝔸𝕕𝕛𝕦𝕤𝕥𝕖𝕕!')
    else
        gg.alert('❌ Steering values not found! Try again.')
    end

    gg.sleep(5000)
    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝕊𝕦𝕤𝕡𝕖𝕟𝕤𝕚𝕠𝕟 𝕄𝕖𝕟𝕦')
    waitForGG(suspensionMenu)
end

function monsterTruck()
gg.alert('𝕊𝕖𝕥 𝕊𝕦𝕤𝕡𝕖𝕟𝕤𝕚𝕠𝕟 𝕋𝕠 𝟘.𝟘𝟛 𝕋ℍ𝔼ℕ 𝔼𝕏𝕀𝕋 𝕊𝕌𝕊ℙ𝔼ℕ𝕊𝕀𝕆ℕ 𝕊𝔼𝕋𝕋𝕀ℕ𝔾𝕊 𝔸ℕ𝔻 ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('0.03',gg.TYPE_FLOAT)
gg.getResults(100)
gg.sleep(1000)
gg.editAll('3',gg.TYPE_FLOAT)
gg.sleep(1000)
gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 𝕊𝕦𝕤𝕡𝕖𝕤𝕚𝕠𝕟 𝔸𝕟𝕕 ℂ𝕝𝕚𝕔𝕜 ℝ𝕖𝕤𝕖𝕥 𝕋𝕙𝕖𝕟 𝕊𝕒𝕧𝕖 𝔸𝕟𝕕 ℝ𝕖𝕤𝕥𝕒𝕣𝕥 𝔾𝕒𝕞𝕖')
gg.sleep(3000)
gg.toast('𝔻𝕆ℕ𝔼✅️')
gg.clearResults()
gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝕊𝕦𝕤𝕡𝕖𝕟𝕤𝕚𝕠𝕟 𝕄𝕖𝕟𝕦 ')
waitForGG(suspensionMenu)
end


function hpMenu()
    while true do
        local choice = gg.choice({
            '⟦ℍℙ ℙ𝕣𝕖𝕤𝕖𝕥𝕤🔥⟧', 
            '⟦ℂ𝕦𝕤𝕥𝕠𝕞 𝔼𝕟𝕘𝕚𝕟𝕖 𝕋𝕦𝕟𝕚𝕟𝕘 🛠⟧', 
            '⟦𝔾𝕝𝕚𝕥𝕔𝕙 𝕊𝕡𝕖𝕖𝕕 𝕆𝕡𝕥𝕚𝕠𝕟𝕤⚡⟧', 
            '⟦𝕊𝕙𝕚𝕗𝕥 𝕊𝕡𝕖𝕖𝕕 𝕆𝕡𝕥𝕚𝕠𝕟𝕤🏁⟧', 
            '⟦❌️𝔹𝕒𝕔𝕜⟧'
        }, nil, '🏎ℙ𝔼ℝ𝔽𝕆ℝ𝕄𝔸ℕℂ𝔼 𝕄𝔼ℕ𝕌🏎')

        if choice == nil or choice == 5 then
         gg.toast('ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕄𝕒𝕚𝕟 𝕄𝕖𝕟𝕦.....')
         return mainMenu()
    end

        local actions = {hpPresetsMenu, customHPInput, glitchSpeed, shiftSpeedMenu}
        if actions[choice] then actions[choice]() end

    end
end

local hpPresets = {
    -- Positive Values
    {2400, 2300, 8000, 7998}, {2300, 2300, 8000, 7998},
    {2299, 2300, 8000, 7998}, {2250, 2300, 8000, 7998}, {2200, 2300, 8000, 7998},
    {2199, 2300, 8000, 7998}, {2150, 2300, 8000, 7998}, {2100, 2300, 8000, 7998},
    {2099, 2300, 8000, 7998}, {2050, 2300, 8000, 7998}, {2000, 2300, 8000, 7998},
    {1999, 2300, 8000, 7998}, {1950, 2300, 8000, 7998}, {1900, 2300, 8000, 7998},
    {1899, 2300, 8000, 7998}, {1850, 2300, 8000, 7998}, {1800, 2300, 8000, 7998},
    {1799, 2300, 8000, 7998}, {1750, 2300, 8000, 7998}, {1700, 2300, 8000, 7998},
    {1699, 2300, 8000, 7998}, {1695, 2300, 8000, 7998}, {1650, 2300, 8000, 7998},
    {1600, 2300, 8000, 7998}, {1599, 2300, 8000, 7998}, {1550, 2300, 8000, 7998},
    {1500, 2300, 8000, 7998}, {1499, 2300, 8000, 7998}, {1450, 2300, 8000, 7998},
    {1400, 2300, 8000, 7998}, {1399, 2300, 8000, 7998}, {1350, 2300, 8000, 7998},
    {1300, 2300, 8000, 7998}, {1250, 2300, 8000, 7998}, {1200, 2300, 8000, 7998},
    {1150, 2300, 8000, 7998}, {1125, 2300, 8000, 7998}, {1100, 2300, 8000, 7998},
    {1099, 2300, 8000, 7998}, {1050, 2300, 8000, 7998}, {1025, 2300, 8000, 7998},
    {1000, 2300, 8000, 7998}, {999, 2300, 8000, 7998}, {950, 2300, 8000, 7998},
    {925, 2300, 8000, 7998}, {919, 2300, 8000, 7998}, {900, 2300, 8000, 7998},
    {899, 2300, 8000, 7998}, {875, 2300, 8000, 7998}, {850, 2300, 8000, 7998}, 
    {825, 2300, 8000, 7998}, {818, 2300, 8000, 7998}, {800, 2300, 8000, 7998},
    {799, 2300, 8000, 7998}, {775, 2300, 8000, 7998}, {750, 2300, 8000, 7998},
    {725, 2300, 8000, 7998}, {717, 2300, 8000, 7998}, {700, 2300, 8000, 7998},
    {699, 2300, 8000, 7998}, {675, 2300, 8000, 7998}, {650, 2300, 8000, 7998},
    {625, 2300, 8000, 7998}, {616, 2300, 8000, 7998}, {600, 2300, 8000, 7998},
    {599, 2300, 8000, 7998}, {550, 2300, 8000, 7998}, {525, 2300, 8000, 7998},
    {500, 2300, 8000, 7998}, {499, 2300, 8000, 7998}, {475, 2300, 8000, 7998},
    {450, 2300, 8000, 7998}, {425, 2300, 8000, 7998}, {414, 2300, 8000, 7998}, 
    {400, 2300, 8000, 7998}, {399, 2300, 8000, 7998}, {375, 2300, 8000, 7998},
    {350, 2300, 8000, 7998}, {325, 2300, 8000, 7998}, {313, 2300, 8000, 7998},
    {300, 2300, 8000, 7998}, {299, 2299, 8000, 7998}, {275, 2300, 8000, 7998},
    {250, 2300, 8000, 7998}, {225, 2300, 8000, 7998}, {212, 2300, 8000, 7998}, 
    {200, 2300, 8000, 7998}, {199, 2300, 8000, 7998}, {175, 2300, 8000, 7998},
    {150, 2300, 8000, 7998}, {125, 2300, 8000, 7998}, {101, 2300, 8000, 7998},
    {100, 2300, 8000, 7998}, {99, 2300, 8000, 7998}, {98, 2300, 8000, 7998},
    {95, 2300, 8000, 7998}, {90, 2300, 8000, 7998}, {89, 2300, 8000, 7998},
    {85, 2300, 8000, 7998}, {80, 2300, 8000, 7998}, {79, 2300, 8000, 7998},
    {75, 2300, 8000, 7998}, {70, 2300, 8000, 7998}, {69, 2300, 8000, 7998},
    {65, 2300, 8000, 7998}, {60, 2300, 8000, 7998}, {59, 2300, 8000, 7998}, 
    {55, 2300, 8000, 7998}, {50, 2300, 8000, 7998}, {49, 2300, 8000, 7998},
    {45, 2300, 8000, 7998}, {40, 2300, 8000, 7998}, {39, 2300, 8000, 7998},
    {35, 2300, 8000, 7998}, {30, 2300, 8000, 7998}, {29, 2300, 8000, 7998}, 
    {25, 2300, 8000, 7998}, {20, 2300, 8000, 7998}, {19, 2300, 8000, 7998}, 
    {15, 2300, 8000, 7998}, {10, 2300, 8000, 7998}, {9, 2300, 8000, 7998}, 
    {8, 2300, 8000, 7998}, {7, 2300, 8000, 7998}, {6, 2300, 8000, 7998},  
    {5, 2300, 8000, 7998}, {4, 2300, 8000, 7998}, {3, 2300, 8000, 7998},
    {2, 2300, 8000, 7998}, {1, 2300, 8000, 7998}, {0.1, 2300, 8000, 7998},
    {0.01, 2300, 8000, 7998}, {0.001, 2300, 8000, 7998}, {0.123, 2300, 8000, 7998},
    {0.321, 2300, 8000, 7998}, {0.999, 2300, 8000, 7998}, 

    -- Negative Values
    {-0.1, 2300, 8000, 7998}, {-1, 2300, 8000, 7998}, {-2, 2300, 8000, 7998},
    {-3, 2300, 8000, 7998}, {-4, 2300, 8000, 7998}, {-5, 2300, 8000, 7998},
    {-6, 2300, 8000, 7998}, {-7, 2300, 8000, 7998}, {-8, 2300, 8000, 7998},
    {-9, 2300, 8000, 7998}, {-10, 2300, 8000, 7998}, {-100, 2300, 8000, 7998},
    {-199, 2300, 8000, 7998}, {-200, 2300, 8000, 7998}, {-299, 2300, 8000, 7998},
    {-300, 2300, 8000, 7998}, {-414, 2300, 8000, 7998}, {-999, 2300, 8000, 7998}, 
    {-1000, 2300, 8000, 7998}, {-1695, 2300, 8000, 7998}, {-2000, 2300, 8000, 7998},
    {-3000, 2300, 8000, 7998}, {-5000, 2300, 8000, 7998}, {-10000, 2300, 8000, 7998},
    {-25000, 2300, 8000, 7998}, {-50000, 2300, 8000, 7998}, {-100000, 2300, 8000, 7998},
    {-150000, 2300, 8000, 7998}, {-200000, 2300, 8000, 7998}, {-250000, 2300, 8000, 7998},
    {-500000, 2300, 8000, 7998}, {-1000000, 2300, 8000, 7998}, {-2000000, 2300, 8000, 7998}, 
    {-2500000, 2300, 8000, 7998}, {-3000000, 2300, 8000, 7998}, {-4000000, 2300, 8000, 7998},
    {-5000000, 2300, 8000, 7998}, {-6000000, 2300, 8000, 7998}, {-7000000, 2300, 8000, 7998},
    {-8000000, 2300, 8000, 7998}, {-9000000, 2300, 8000, 7998}, {-9999999, 2300, 8000, 7998}
}

function hpPresetsMenu()
    local menuOptions = {}
    -- Ensure we are correctly displaying HP presets
    for i, preset in ipairs(hpPresets) do
        table.insert(menuOptions, tostring(preset[1]) .. "ℍℙ🚀") -- Display the preset value (e.g., HP value)
    end
    table.insert(menuOptions, "❌️𝔹𝕒𝕔𝕜")

    local choice = gg.choice(menuOptions, nil, "🚀ℍℙ ℙ𝕣𝕖𝕤𝕖𝕥 𝕄𝕖𝕟𝕦🚀")

    if choice == nil or choice == #menuOptions then
        gg.toast("ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦.....")
        return hpMenu()  -- Return to HP menu if the user presses "Back"
    end

    applyHP(hpPresets[choice])  -- Apply selected preset
    waitForGG()  -- Wait for GG to be clicked before returning
end

function applyHP(preset)
    gg.alert('𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.toast('𝔸𝕡𝕡𝕝𝕪𝕚𝕟𝕘 ℍℙ 𝕄𝕠𝕕𝕚𝕗𝕚𝕔𝕒𝕥𝕚𝕠𝕟...')

    local searchValues = {240, 310, 6800, 4500}
    local valueNames = {'HP', 'Torque', 'Inner HP', 'Inner Torque'}

    -- Loop through each of the 4 parameters: HP, Torque, Inner HP, Inner Torque
    for i = 1, 4 do
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(searchValues[i], gg.TYPE_FLOAT)  -- Search for the corresponding value

        local results = gg.getResults(50)  -- Get search results

        if #results > 0 then
            gg.editAll(preset[i], gg.TYPE_FLOAT)  -- Edit the value in the preset for this index
        else
            gg.alert(valueNames[i] .. ' values not found! Try again.')
        end
        
        gg.clearResults()  -- Clear the search results after applying the edit
    end

    gg.alert('ℂ𝕝𝕚𝕔𝕜 𝕠𝕟 𝔼𝕟𝕘𝕚𝕟𝕖 𝕍𝟞 𝟛.𝟘 𝕋𝕙𝕖𝕟 𝔹𝕦𝕪 & 𝕊𝕖𝕥 𝔸𝕟𝕪 𝕋𝕚𝕣𝕖𝕤')
    gg.sleep(6000)
    gg.alert('ℍℙ 𝔸𝕕𝕛𝕦𝕤𝕥𝕞𝕖𝕟𝕥 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖!')

    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end


function customHPInput()
    gg.alert("𝔹𝕦𝕪 𝔸𝕟 𝔼𝕟𝕘𝕚𝕟𝕖 𝔸𝕟𝕕 ℝ𝕖𝕞𝕖𝕞𝕓𝕖𝕣 𝕋𝕠𝕣𝕢𝕦𝕖 𝔸𝕟𝕕 ℍℙ (𝕋𝕠 𝕋𝕦𝕟𝕖 𝕎𝕚𝕥𝕙 ℕ𝕠 𝔼𝕟𝕘𝕚𝕟𝕖 ℝ𝕖𝕞𝕖𝕞𝕓𝕖𝕣 ℝ𝕖𝕤𝕖𝕥 𝔼𝕟𝕘𝕚𝕟𝕖 𝔸𝕟𝕕 𝕌𝕤𝕖 𝕊𝕥𝕠𝕔𝕜 ℍℙ. 𝔸𝕕𝕕 𝕋𝕦𝕣𝕓𝕠 𝔽𝕠𝕣 𝕋𝕦𝕣𝕓𝕠 𝕊𝕠𝕦𝕟𝕕/ℙ𝕠𝕡𝕤")
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟙𝟝 𝕊𝕖𝕔𝕠𝕟𝕕𝕤...')
    gg.sleep(10000)

    local input = gg.prompt({
        'Current HP:', 'New HP:', 
        'Current Torque:', 'New Torque:', 
        'Current Inner HP:', 'New Inner HP:', 
        'Current Inner Torque:', 'New Inner Torque:'
    }, {}, {'number', 'number', 'number', 'number', 'number', 'number', 'number', 'number'})

    if not input then return end

    local values = {
        {input[1], input[2]}, 
        {input[3], input[4]}, 
        {input[5], input[6]}, 
        {input[7], input[8]}  
    }

    for i, v in ipairs(values) do
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(v[1], gg.TYPE_FLOAT)
        local results = gg.getResults(100)

        if #results > 0 then
            gg.editAll(v[2], gg.TYPE_FLOAT)
        else
            gg.alert("Value not found! Try again.")
        end
        gg.clearResults()
    end

    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕠𝕟 𝔹𝕠𝕦𝕘𝕙𝕥 𝔼𝕟𝕘𝕚𝕟𝕖 𝕆𝕣 𝔹𝕦𝕪 𝕋𝕚𝕣𝕖𝕤 𝕆𝕣 𝔹𝕣𝕒𝕜𝕖𝕤 𝕀𝕗 𝕋𝕦𝕟𝕖𝕕 𝕎𝕚𝕥𝕙 𝕊𝕥𝕠𝕔𝕜 𝔼𝕟𝕘𝕚𝕟𝕖")
    gg.sleep(6000)
    gg.alert("ℍℙ 𝔸𝕕𝕛𝕦𝕤𝕥𝕞𝕖𝕟𝕥 ℂ𝕠𝕞𝕡𝕝𝕖𝕥𝕖 !")

    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

-- GLITCH SPEED MENU
off = " 🔴⃢  "
on = "      ⃢🔵"
GLITCH1 = off
GLITCH2 = off
GLITCH3 = off
GLITCH4 = off
GLITCH4 = off
GLITCH5 = off
GLITCH6 = off 
GLITCH7 = off
GLITCH8 = off
GLITCH9 = off
GLITCH10 = off

function glitchSpeed()
    local choice = gg.choice({
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟙𝟙𝟚𝟝𝕙𝕡⟧" .. GLITCH1,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟚𝟘𝟘𝟘𝕙𝕡⟧" .. GLITCH2,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟙𝟞𝟡𝟝𝕙𝕡⟧" .. GLITCH3,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟙𝟚𝟛𝟜𝕙𝕡⟧" .. GLITCH4,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟙𝟘𝟘𝟘𝕙𝕡⟧" .. GLITCH5,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟡𝟡𝟡𝕙𝕡⟧" .. GLITCH6,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟠𝟘𝟘𝕙𝕡⟧" .. GLITCH7,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟜𝟙𝟜𝕙𝕡⟧" .. GLITCH8,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟛𝟘𝟘𝕙𝕡⟧" .. GLITCH9,
        "⟦⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝟚𝟡𝟡𝕙𝕡⟧" .. GLITCH10,
        "⟦❌️𝔹𝕒𝕔𝕜⟧"
    }, nil, "⚡️𝔾𝕝𝕚𝕥𝕔𝕙 𝕄𝕖𝕟𝕦⚡️")

    if choice == nil or choice == 11 then
        gg.toast('Returning To HP Menu...')
        return hpMenu()
    end

    -- Toggle logic for glitch selections
    if choice == 1 then
        if GLITCH1 == on then
            GL1()
            GLITCH1 = off
        else
            GL2()
            GLITCH1 = on
        end
    elseif choice == 2 then
        if GLITCH2 == on then
            GL3()
            GLITCH2 = off
        else
            GL4()
            GLITCH2 = on
        end
    elseif choice == 3 then
        if GLITCH3 == on then
            GL5()
            GLITCH3 = off
        else
            GL6()
            GLITCH3 = on
        end
    elseif choice == 4 then
        if GLITCH4 == on then
            GL7()
            GLITCH4 = off
        else
            GL8()
            GLITCH4 = on
        end
     elseif choice == 5 then
        if GLITCH5 == on then
            GL9()
            GLITCH5 = off
        else
            GL10()
            GLITCH5 = on
         end
     elseif choice == 6 then
        if GLITCH6 == on then
            GL11()
            GLITCH6 = off
        else
            GL12()
            GLITCH6 = on
        end
     elseif choice == 7 then
        if GLITCH7 == on then
            GL13()
            GLITCH7 = off
        else
            GL14()
            GLITCH7 = on
         end
      elseif choice == 8 then
        if GLITCH8 == on then
            GL15()
            GLITCH8 = off
        else
            GL16()
            GLITCH8 = on
         end
      elseif choice == 9 then
        if GLITCH9 == on then
            GL17()
            GLITCH9 = off
        else
            GL18()
            GLITCH9 = on
         end
      elseif choice == 10 then
        if GLITCH10 == on then
            GL19()
            GLITCH10 = off
        else
            GL20()
            GLITCH10 = on
        end
    end

gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔾𝕝𝕚𝕥𝕔𝕙 𝕊𝕡𝕖𝕖𝕕 𝕄𝕖𝕟𝕦')
waitForGG(glitchSpeed)
end

function GL1()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()
    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1125", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2225", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL2()
    gg.setVisible(true)
end

function GL3()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞.𝟛.𝟝 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕃𝕆𝔾𝕆 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()
    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("280", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2000", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("6300", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("350", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("3000", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4700", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-42", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL4()
    gg.setVisible(true)
end

function GL5()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟠.𝟜.𝟝 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕃𝕆𝔾𝕆 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()
    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("7000", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("4000", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("415", gg.TYPE_FLOAT)

gg.getResults(1000)
    gg.editAll("1695", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("430", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2254", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-44", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL6()
    gg.setVisible(true)
end

function GL7()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()

    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1234", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2245", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL8()
    gg.setVisible(true)
end

function GL9()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()

    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2245", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL10()
    gg.setVisible(true)
end

function GL11()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()

    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("999", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2245", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL12()
    gg.setVisible(true)
end

function GL13()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()

    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("800", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2245", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL14()
    gg.setVisible(true)
end

function GL15()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()

    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("414", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2245", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL16()
    gg.setVisible(true)
end

function GL17()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()

    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("300", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2245", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL18()
    gg.setVisible(true)
end

function GL19()
    gg.setVisible(false)
    gg.alert("𝔹𝕌𝕐 𝔼ℕ𝔾𝕀ℕ𝔼 𝕍𝟞 𝟛.𝟘 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()

    
    while not gg.isVisible() do end
    gg.setVisible(false)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("6800", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1001", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("240", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("299", gg.TYPE_FLOAT)
    
    gg.clearResults()
    gg.searchNumber("310", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("2245", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.searchNumber("4500", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1000", gg.TYPE_FLOAT)

    gg.setRanges(gg.REGION_CODE_APP)
    gg.clearResults()
    gg.searchNumber("0.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1E-12", gg.TYPE_FLOAT)

    gg.clearResults()
    gg.alert("ℂ𝕝𝕚𝕔𝕜 𝕊𝕖𝕥 𝕋𝕦𝕟𝕚𝕟𝕘 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔽𝕒𝕤𝕥 𝔾𝕖𝕒𝕣𝕓𝕠𝕩")
    gg.toast("𝔻𝕆ℕ𝔼 ✅")
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function GL20()
    gg.setVisible(true)
end

function shiftSpeedMenu()
    local choice = gg.choice({'⟦𝟙𝔼-𝟚𝟝💣⟧','⟦𝟙𝔼-𝟚𝟞💢⟧','⟦𝟙𝔼-𝟚𝟟💥⟧','⟦𝟙𝔼-𝟚𝟠🚀⟧','⟦𝟙𝔼-𝟚𝟡🥇⟧','⟦𝟙𝔼-𝟛𝟘🔥⟧' ,'⟦𝟙𝔼-𝟛𝟙🏁⟧','⟦𝟙𝔼-𝟛𝟚🏆⟧','⟦𝟙𝔼-𝟛𝟛🏴‍☠️⟧','⟦𝟙𝔼-𝟛𝟜⚡️⟧','⟦❌️𝔹𝕒𝕔𝕜⟧'}, nil, '🏆𝕊𝕙𝕚𝕗𝕥 𝕊𝕡𝕖𝕖𝕕 𝕄𝕖𝕟𝕦🏆')

    if choice == nil or choice == 11 then 
    gg.toast('ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦.....')
    return hpMenu()
 end

   if choice == 1 then
shiftSpeed1()
  elseif choice == 2 then
 shiftSpeed2()
elseif choice == 3 then
shiftSpeed3()
elseif choice == 4 then
shiftSpeed4()
elseif choice == 5 then
shiftSpeed5()
elseif choice == 6 then
shiftSpeed6()
elseif choice == 7 then
shiftSpeed7()
elseif choice == 8 then
shiftSpeed8()
elseif choice == 9 then
shiftSpeed9()
elseif choice == 10 then
shiftSpeed10()
  end
end



function shiftSpeed1()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    
    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-25', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed2()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    
    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-26', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed3()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    
    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-27', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed4()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    
    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-28', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed5()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-29', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed6()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-30', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed7()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-31', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed8()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-32', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed9()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)

    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-33', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

function shiftSpeed10()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.alert('𝔹𝕌𝕐 𝔽𝔸𝕊𝕋 𝔾𝔼𝔸ℝ𝔹𝕆𝕏 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋')
    while not gg.isVisible(true) do
        gg.sleep(100)
    end
    gg.setVisible(false)
    
    gg.searchNumber('0.1', gg.TYPE_FLOAT)
    local results = gg.getResults(250)

    if #results > 0 then
        gg.sleep(2000)
        gg.editAll('1E-34', gg.TYPE_FLOAT)
        gg.alert('𝔹𝕦𝕪 𝕗𝕒𝕤𝕥 𝕘𝕖𝕒𝕣𝕓𝕠𝕩')
        gg.sleep(4000) --Time to buy shift speed
    else
        gg.alert('Shift Speed values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 ℙ𝕖𝕣𝕗𝕠𝕣𝕞𝕒𝕟𝕔𝕖 𝕄𝕖𝕟𝕦')
    waitForGG(hpMenu)
end

    

-- Maintenance Menu with On/Off Toggle

on = "      ⃢🔵"
off = " 🔴⃢  "


toggle_Y10 = false  -- Initially, Y10 is off (red)
toggle_Y12 = false  -- Initially, Y12 is off (red)
revert_Y10 = nil
revert_Y12 = nil

function maintenanceMenu()
    local menu = gg.choice({
        "⟦𝔸ℕ𝕋𝕀 𝔻𝔸𝕄𝔸𝔾𝔼💥⟧" .. (toggle_Y10 and off or on),  -- Display red (off) if 'false', blue (on) if 'true'
        "⟦𝔸ℕ𝕋𝕀 ℂℝ𝔸𝕊ℍ💣⟧" .. (toggle_Y12 and off or on),  -- Display red (off) if 'false', blue (on) if 'true'
        "⟦❌️𝔹𝕒𝕔𝕜⟧"
    }, nil, "🛠ℂ𝕒𝕣 𝕄𝕒𝕚𝕟𝕥𝕖𝕟𝕒𝕔𝕖 𝕄𝕖𝕟𝕦🛠")

    if menu == nil or menu == 3 then
        return mainMenu()  -- Go back to the main menu if no valid selection or if "Back" is selected
    end

    if menu == 1 then toggleY10() end
    if menu == 2 then toggleY12() end
end

function toggleY10()
    if toggle_Y10 then
        if revert_Y10 ~= nil then gg.setValues(revert_Y10) end
        gg.toast("𝔸ℕ𝕋𝕀 𝔻𝔸𝕄𝔸𝔾𝔼 𝕆𝔽𝔽❌")
        toggle_Y10 = false  -- Toggle to 'off' (red)
    else
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber("0.40000000596F;5;0.10000000149F;1:13", gg.TYPE_FLOAT)
        gg.refineNumber("5", gg.TYPE_FLOAT)
        revert_Y10 = gg.getResults(9999)
        gg.editAll("1999", gg.TYPE_FLOAT)
        toggle_Y10 = true  -- Toggle to 'on' (blue)
        gg.toast("𝔸ℕ𝕋𝕀 𝔻𝔸𝕄𝔸𝔾𝔼 𝕆ℕ✅")
    end
    waitForGG(maintenanceMenu)  -- Call waitForGG to avoid menu popping up
end

function toggleY12()
    if toggle_Y12 then
        if revert_Y12 ~= nil then gg.setValues(revert_Y12) end
        gg.processResume()
        gg.clearResults()
        toggle_Y12 = false  -- Toggle to 'off' (red)
        gg.toast("𝔸ℕ𝕋𝕀 ℂℝ𝔸𝕊ℍ 𝕆𝔽𝔼❌")
    else
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("10000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
        revert_Y12 = gg.getResults(100)
        gg.editAll("3E-4", gg.TYPE_FLOAT)
        gg.processResume()
        toggle_Y12 = true  -- Toggle to 'on' (blue)
        gg.toast("𝔸ℕ𝕋𝕀 ℂℝ𝔸𝕊ℍ 𝕆ℕ✅")
    end
    waitForGG(maintenanceMenu)  -- Call waitForGG to avoid menu popping up
end

function waitForGG(callback)
    while not gg.isVisible() do
        gg.sleep(100)
    end
    gg.setVisible(false)  -- Hide GG UI
    callback()  -- Return to the main maintenance menu
end


function bodyKitMenu()
    while true do
        local choice = gg.choice({
            '⟦ℕ𝕠 𝔹𝕦𝕞𝕡𝕖𝕣 𝕄𝕖𝕟𝕦 🚗⟧',
            '⟦ℂ𝕦𝕤𝕥𝕠𝕞 𝕊𝕡𝕠𝕚𝕝𝕖𝕣 𝕂𝕚𝕥🏁⟧',
            '⟦ℂ𝕦𝕤𝕥𝕠𝕞 ℝ𝕠𝕠𝕗 𝕊𝕖𝕝𝕖𝕔𝕥𝕚𝕠𝕟 🏠⟧',
            '⟦ℝ𝕠𝕠𝕗/𝕆𝕥𝕙𝕖𝕣 ℙ𝕒𝕣𝕥𝕤⛩️⟧',
            '⟦𝕎𝕚𝕟𝕘𝕤 𝔸𝕟𝕕 𝕊𝕡𝕠𝕚𝕝𝕖𝕣𝕤✈️⟧',
            '⟦❌️𝔹𝕒𝕔𝕜⟧'
        }, nil, '🚘𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕄𝕖𝕟𝕦🚘')

        if choice == nil or choice == 6 then
            gg.toast('ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕄𝕒𝕚𝕟 𝕄𝕖𝕟𝕦')
            return mainMenu()
        end

        local actions = {
            noBumper, customSpoilerKit, customRoofSelection, roofMenu, wingsMenu
        }

        if actions[choice] then
            actions[choice]()
        end

        waitForGG(bodyKitMenu)
    end
end

function noBumper()
    gg.alert('𝔹𝕦𝕪 𝔸𝕝𝕝 𝔹𝕦𝕞𝕡𝕖𝕣𝕤 𝕋𝕙𝕖𝕟 𝔹𝕦𝕪 #𝟙')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤....')
    gg.sleep(20000)

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('0', gg.TYPE_DWORD)
    gg.getResults(100)

    gg.alert('Buy #2')
    gg.sleep(5000)
    gg.searchNumber('1', gg.TYPE_DWORD)
    gg.getResults(100)

    gg.alert('Buy #3')
    gg.sleep(5000)
    gg.searchNumber('2', gg.TYPE_DWORD)
    gg.getResults(100)

    gg.alert('Buy #4')
    gg.sleep(5000)
    gg.searchNumber('3', gg.TYPE_DWORD)
    gg.getResults(100)

    gg.editAll('-1', gg.TYPE_DWORD)

    gg.alert('𝔾𝕠 𝕋𝕠 𝔸𝕟𝕠𝕥𝕙𝕖𝕣 ℂ𝕒𝕣 𝔸𝕟𝕕 ℂ𝕠𝕞𝕖 𝔹𝕒𝕔𝕜')
    gg.sleep(5000)
    gg.toast('ℕ𝕠 𝔹𝕦𝕞𝕡𝕖𝕣 𝔸𝕡𝕡𝕝𝕚𝕖𝕕💯')

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕄𝕖𝕟𝕦')
    waitForGG(bodyKitMenu)
end

function customSpoilerKit()
    applyCustomBodyKitPart("ℂ𝕦𝕤𝕥𝕠𝕞 𝕊𝕡𝕠𝕚𝕝𝕖𝕣", "𝕊𝕖𝕝𝕖𝕔𝕥 𝔸 𝕎𝕚𝕟𝕘", true)
end

function customRoofSelection()
    applyCustomBodyKitPart("ℂ𝕦𝕤𝕥𝕠𝕞 ℝ𝕠𝕠𝕗", "𝕊𝕖𝕝𝕖𝕔𝕥 ℝ𝕠𝕠𝕗 ℙ𝕒𝕣𝕥", true)
end

function skiBox()
    applyBodyKitPart("𝕊𝕜𝕚 𝔹𝕠𝕩", "𝕊𝕖𝕝𝕖𝕔𝕥 ℝ𝕠𝕠𝕗 / ℍ𝕠𝕠𝕕 ℙ𝕒𝕣𝕥", true, 150)
end

function steelRoofRack()
    applyBodyKitPart("𝕊𝕥𝕖𝕖𝕝 ℝ𝕠𝕠𝕗 ℝ𝕒𝕔𝕜", "𝕊𝕖𝕝𝕖𝕔𝕥 ℝ𝕠𝕠𝕗 / ℍ𝕠𝕠𝕕 ℙ𝕒𝕣𝕥", false, 69)
end

function gapCam()
    applyBodyKitPart("𝔾𝕒𝕡 ℂ𝕒𝕞", "𝕊𝕖𝕝𝕖𝕔𝕥 ℝ𝕠𝕠𝕗 / ℍ𝕠𝕠𝕕 ℙ𝕒𝕣𝕥", false, 34)
end

function interiorSteelBars()
    applyBodyKitPart("𝕀𝕟𝕥𝕖𝕣𝕚𝕠𝕣 𝕊𝕥𝕖𝕖𝕝 𝔹𝕒𝕣𝕤", "𝕊𝕖𝕝𝕖𝕔𝕥 ℝ𝕠𝕠𝕗 / ℍ𝕠𝕠𝕕 ℙ𝕒𝕣𝕥", false, 39)
end

function roofLights()
    applyBodyKitPart("ℝ𝕠𝕠𝕗 𝕃𝕚𝕘𝕙𝕥𝕤 ", "𝕊𝕖𝕝𝕖𝕔𝕥 ℝ𝕠𝕠𝕗 / ℍ𝕠𝕠𝕕 ℙ𝕒𝕣𝕥", true, 56)
end

function policeBashBar()
    applyBodyKitPart("ℙ𝕠𝕝𝕚𝕔𝕖 𝔹𝕒𝕤𝕙 𝔹𝕒𝕣", "𝕊𝕖𝕝𝕖𝕔𝕥 ℝ𝕠𝕠𝕗 / ℍ𝕠𝕠𝕕 ℙ𝕒𝕣𝕥", false, 77)
end

function roofMenu()
    local choice = gg.choice({
        '𝕊𝕜𝕚 𝔹𝕠𝕩 ⛷️',
        '𝕊𝕥𝕖𝕖𝕝 ℝ𝕠𝕠𝕗 ℝ𝕒𝕔𝕜🏗️',
        '𝔾𝕒𝕡 ℂ𝕒𝕞 🏎',
        '𝕀𝕟𝕥𝕖𝕣𝕚𝕠𝕣 𝕊𝕥𝕖𝕖𝕝 𝔹𝕒𝕣𝕤🏛',
        'ℝ𝕠𝕠𝕗 𝕃𝕚𝕘𝕙𝕥𝕤🔦',
        'ℙ𝕠𝕝𝕚𝕔𝕖 𝔹𝕒𝕤𝕙 𝔹𝕒𝕣 🚔',
        '❌️𝔹𝕒𝕔𝕜'
    }, nil, 'Roof Menu')

    if choice == nil or choice == 7 then
        gg.toast('Returning To Body Kit Menu')
        return bodyKitMenu()
    end

    local actions = {
        skiBox, steelRoofRack, gapCam, interiorSteelBars, roofLights, policeBashBar
    }

    if actions[choice] then
        actions[choice]() -- Call the corresponding function
    end
end

function wingsMenu()
    local choice = gg.choice({
        '𝕄𝕦𝕤𝕥𝕒𝕟𝕘 𝕎𝕚𝕟𝕘 🐎',
        '𝕀𝕟𝕗𝕚𝕟𝕚𝕥𝕚 𝔾𝟛𝟟 𝕎𝕚𝕟𝕘 ♾️',
        '𝕃𝕒𝕞𝕓𝕠 𝕎𝕚𝕟𝕘🇮🇹',
        '𝔼𝕂𝟡 ℂ𝕚𝕧𝕚𝕔 𝕎𝕚𝕟𝕘 🛞',
        '𝕆𝕝𝕕 ℂ𝕙𝕒𝕣𝕘𝕖𝕣 𝕃𝕚𝕡 🏴‍☠️',
        'ℂ𝕙𝕒𝕝𝕝𝕖𝕟𝕘𝕖𝕣 𝕃𝕚𝕡 🔪',
        '𝕊𝕚𝕝𝕧𝕚𝕒 𝕊𝟙𝟛 𝕎𝕚𝕟𝕘 🦅',
        '𝕊𝕚𝕝𝕧𝕚𝕒 𝕊𝟙𝟛 𝕃𝕚𝕡 🕊',
        '𝔼𝕔𝕝𝕚𝕡𝕤𝕖 𝕎𝕚𝕟𝕘 🌒',
        '𝕃𝕖𝕩𝕦𝕤 𝕃𝔽𝔸 𝕎𝕚𝕟𝕘 ☢️',
        '❌️𝔹𝕒𝕔𝕜'
    }, nil, '🪽�𝕎𝕀ℕ𝔾𝕊 𝔸ℕ𝔻 𝕊ℙ𝕆𝕀𝕃𝔼ℝ 𝕄𝔼ℕ𝕌🪽')

    if choice == nil or choice == 11 then
        gg.toast('ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕄𝕖𝕟𝕦')
        return bodyKitMenu()
    end

    local wingCodes = {
        127, 96, 172, 106, 121,
        186, 176, 177, 182, 92
    }

    applyBodyKitPart("𝕎𝕚𝕟𝕘", "𝕊𝕖𝕝𝕖𝕔𝕥 𝔸 𝕎𝕚𝕟𝕘", true, wingCodes[choice])
end

function applyBodyKitPart(partName, selectionMessage, canGlow, partCode)
    gg.alert('𝔾𝕠 𝕋𝕠 𝔸𝕟𝕪 ℂ𝕒𝕣 𝕎𝕚𝕥𝕙 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕋𝕙𝕖𝕟 𝔹𝕦𝕪 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟙 𝕒𝕟𝕕 𝕔𝕝𝕚𝕔𝕜  #𝟚')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤....')
    gg.sleep(20000)
    gg.toast('𝔽𝕚𝕟𝕕𝕚𝕟𝕘 𝕍𝕒𝕝𝕦𝕖𝕤...')

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.

searchNumber('1', gg.TYPE_DWORD)
    local results = gg.getResults(100)

    if #results > 0 then
        gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟛')
        gg.sleep(4000)
        gg.searchNumber('2', gg.TYPE_DWORD)
        gg.getResults(100)

        gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟜')
        gg.sleep(4000)
        gg.searchNumber('3', gg.TYPE_DWORD)
        gg.getResults(100)

        gg.alert('𝔹𝕦𝕪 𝔹𝕦𝕞𝕡𝕖𝕣 𝔸𝕟𝕕 𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 𝕐𝕠𝕦 𝕎𝕒𝕟𝕥 ' .. partName)
        gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤.....')
        gg.sleep(20000)
        gg.alert(selectionMessage)
        gg.sleep(6000)

        if partCode then
            gg.editAll(partCode, gg.TYPE_DWORD)
            finalizePart(canGlow)
        else
            gg.alert("Error: Part code missing!")
        end
    else
        gg.alert(partName .. ' values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕄𝕖𝕟𝕦')
    waitForGG(bodyKitMenu)
end

function applyCustomBodyKitPart(partName, selectionMessage, canGlow)
    gg.alert('𝔾𝕠 𝕋𝕠 𝔸𝕟𝕪 ℂ𝕒𝕣 𝕎𝕚𝕥𝕙 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕋𝕙𝕖𝕟 𝔹𝕦𝕪 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟙 𝕒𝕟𝕕 𝕔𝕝𝕚𝕔𝕜  #𝟚')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤..')
    gg.sleep(20000)
    gg.toast('𝔽𝕚𝕟𝕕𝕚𝕟𝕘 𝕍𝕒𝕝𝕦𝕖𝕤...')

    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('1', gg.TYPE_DWORD)
    local results = gg.getResults(100)

    if #results > 0 then
        gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟛')
        gg.sleep(4000)
        gg.searchNumber('2', gg.TYPE_DWORD)
        gg.getResults(100)

        gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟜')
        gg.sleep(4000)
        gg.searchNumber('3', gg.TYPE_DWORD)
        gg.getResults(100)

        gg.alert('𝔹𝕦𝕪 𝔹𝕦𝕞𝕡𝕖𝕣 𝔸𝕟𝕕 𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 𝕐𝕠𝕦 𝕎𝕒𝕟𝕥 ' .. partName)
        gg.toast('You Have 15 Seconds')
        gg.sleep(15000)
        gg.alert(selectionMessage)
        gg.sleep(6000)

        local input = gg.prompt({"Enter Custom Code for " .. partName}, {0}, {"number"})
        if input and input[1] then
            gg.editAll(input[1], gg.TYPE_DWORD)
            finalizePart(canGlow)
        else
            gg.alert('No code entered! Process canceled.')
        end
    else
        gg.alert(partName .. ' values not found! Try again.')
    end

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕄𝕖𝕟𝕦')
    waitForGG(bodyKitMenu)
end

function finalizePart(canGlow)
    if canGlow then
        local finalizeChoice = gg.choice({
            "✅️𝕐𝕖𝕤 - 𝔹𝕦𝕪 ℙ𝕒𝕣𝕥 ℕ𝕠𝕨",
            "🛠ℕ𝕠 - 𝔾𝕠 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦 𝔽𝕚𝕣𝕤𝕥",
            "❌️𝔹𝕒𝕔𝕜 - ℂ𝕒𝕟𝕔𝕖𝕝"
        }, nil, "ℂ𝕝𝕚𝕔𝕜 𝕐𝕖𝕤 𝕋𝕠 𝔹𝕦𝕪 ℙ𝕒𝕣𝕥 ℕ𝕠𝕨 𝕆𝕣 ℂ𝕝𝕚𝕔𝕜 ℕ𝕠 𝕋𝕠 𝔾𝕠 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦 𝔽𝕚𝕣𝕤𝕥 𝕋𝕠 𝕄𝕒𝕜𝕖 𝔾𝕝𝕠𝕨 𝕋𝕙𝕖𝕟 𝔹𝕦𝕪 (𝔻𝕠𝕟'𝕥 ℂ𝕙𝕒𝕟𝕘𝕖 𝕎𝕚𝕟𝕘 )")

        if finalizeChoice == 1 then
            gg.alert("𝔹𝕦𝕪 ℙ𝕒𝕣𝕥 ℕ𝕠𝕨")
            gg.sleep(10000)
        elseif finalizeChoice == 2 then
            gg.alert("ℕ𝕠𝕨 ℂ𝕝𝕚𝕔𝕜 𝔾𝕝𝕠𝕨 𝕎𝕚𝕟𝕘 / ℝ𝕠𝕠𝕗 𝔸𝕟𝕕 𝔻𝕠𝕟'𝕥 ℂ𝕙𝕒𝕟𝕘𝕖 𝔹𝕦𝕪 𝕎𝕙𝕖𝕟 𝔻𝕠𝕟𝕖 ✅️")
            return glowMenu()
        else
            gg.alert("Process Canceled.")
        end
    else
        gg.alert("𝔹𝕦𝕪 ℙ𝕒𝕣𝕥 ℕ𝕠𝕨")
        gg.sleep(6000)
        gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝕄𝕖𝕟𝕦')
        waitForGG(bodyKitMenu)
    end
end

function glowMenu()
    while true do
        local choice = gg.choice({
            '𝔾𝕝𝕠𝕨 𝕎𝕚𝕟𝕘 𝔸𝕟𝕕 𝔾𝕝𝕠𝕨 ℝ𝕠𝕠𝕗✨', 
            '𝕃𝕚𝕘𝕙𝕥𝕤 𝔸𝕟𝕕 𝔹𝕣𝕖𝕒𝕜𝕤 💡', 
            'ℂ𝕙𝕣𝕠𝕞𝕖 ℝ𝕚𝕞𝕤🏅', 
            '𝕄𝕒𝕥𝕥𝕖 ℝ𝕚𝕞𝕤 ♟️', 
            'ℂ𝕙𝕣𝕠𝕞𝕖 𝔹𝕠𝕕𝕪 🚗', 
            '𝕋𝕚𝕟𝕥 🎨', 
            '❌️𝔹𝕒𝕔𝕜'
        }, nil, '✨️𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦✨️')

        if choice == nil or choice == 7 then
        gg.toast('ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕄𝕒𝕚𝕟 𝕄𝕖𝕟𝕦...')
        return mainMenu()
   end
        local actions = {
            glowWingRoof, lightsBrakes, chromeRims, 
            matteRims, chromeBody, tint
        }
        
        if actions[choice] then actions[choice]() end

        waitForGG(glowMenu)
    end
end

function glowWingRoof()
    gg.alert('𝕊𝕖𝕝𝕖𝕔𝕥 𝕋𝕙𝕖 𝕎𝕚𝕟𝕘 𝕆𝕣 ℝ𝕠𝕠𝕗 𝕐𝕠𝕦 𝕎𝕒𝕟𝕥 𝕋𝕠 𝔾𝕝𝕠𝕨')
    gg.alert('ℂ𝕠𝕝𝕠𝕣 ℂ𝕠𝕕𝕖𝕤 \n ℝ𝕖𝕕 #𝔽𝔽𝟘𝟘𝟘𝟘, 𝕆𝕣𝕒𝕟𝕘𝕖 #𝔽𝔽𝟠𝔽𝟛𝔸, 𝕐𝕖𝕝𝕝𝕠𝕨 #𝔽𝔽𝔽𝔽𝟘𝟘, ℙ𝕚𝕟𝕜 #𝔽𝔽𝟘𝟘𝔽𝔽, ℙ𝕦𝕣𝕡𝕝𝕖 #𝔼𝔽𝟙𝔽𝔽𝔽, 𝔻𝕒𝕣𝕜 𝔹𝕝𝕦𝕖 #𝟚𝟚𝟚𝟚𝔽𝔽, 𝕃𝕚𝕘𝕙𝕥 𝔹𝕝𝕦𝕖 #𝟘𝟘𝔽𝔽𝔽𝔽, 𝔾𝕣𝕖𝕖𝕟 #𝟘𝟘𝔽𝔽𝟘𝟘, 𝕎𝕙𝕚𝕥𝕖 #𝔽𝔽𝔽𝔽𝔽𝔽')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟝 𝕊𝕖𝕔𝕠𝕟𝕕𝕤...')
    gg.sleep(25000)

    gg.setRanges(gg.REGION_ANONYMOUS)

    for i = 1, 9 do
        gg.alert((i % 2 == 1) and "𝔼𝕟𝕥𝕖𝕣 ℂ𝕠𝕝𝕠𝕣 ℂ𝕠𝕕𝕖" or "𝕄𝕠𝕧𝕖 ℂ𝕠𝕝𝕠𝕣 𝕋𝕠 𝔹𝕝𝕒𝕔𝕜")
        gg.sleep(5000)
        gg.searchNumber((i % 2 == 1) and '1' or '0', gg.TYPE_FLOAT)
        gg.getResults(100)
    end

    gg.editAll('8', gg.TYPE_FLOAT)
    gg.alert('𝔾𝕝𝕠𝕨 𝔸𝕡𝕡𝕝𝕚𝕖𝕕✨️')

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦....')
    waitForGG(glowMenu)
end

function lightsBrakes()
    gg.alert('𝔾𝕠 𝕋𝕠 ℍ𝕖𝕒𝕕𝕝𝕚𝕘𝕙𝕥𝕤 𝔹𝕣𝕖𝕒𝕜𝕤 𝔸𝕟𝕕 𝔼𝕟??𝕖𝕣 ℂ𝕠𝕝𝕠𝕣 ℂ𝕠𝕕𝕖')
    gg.alert('ℂ𝕠𝕝𝕠𝕣 ℂ𝕠𝕕𝕖𝕤 \n ℝ𝕖𝕕 #𝔽𝔽𝟘𝟘????, 𝕆𝕣𝕒𝕟𝕘𝕖 #𝔽𝔽𝟠𝔽𝟛𝔸, 𝕐𝕖𝕝𝕝𝕠𝕨 #𝔽𝔽𝔽𝔽𝟘𝟘, ℙ𝕚𝕟𝕜 #𝔽𝔽𝟘𝟘𝔽𝔽, ℙ𝕦𝕣𝕡𝕝𝕖 #𝔼𝔽𝟙𝔽𝔽𝔽, 𝔻𝕒𝕣𝕜 𝔹𝕝𝕦𝕖 #𝟚𝟚𝟚𝟚𝔽𝔽, 𝕃𝕚𝕘𝕙𝕥 𝔹𝕝𝕦𝕖 #𝟘𝟘𝔽𝔽𝔽𝔽, 𝔾𝕣𝕖𝕖𝕟 #𝟘𝟘𝔽𝔽𝟘𝟘, 𝕎𝕙𝕚𝕥𝕖 #𝔽𝔽𝔽𝔽𝔽𝔽')
    gg.toast('You have 25 Seconds...')
    gg.sleep(25000)

    gg.setRanges(gg.REGION_ANONYMOUS)

    for i = 1, 9 do
        gg.alert((i % 2 == 1) and "ENTER COLOR CODE" or "MOVE COLOR TO BLACK")
        gg.sleep(5000)
        gg.searchNumber((i % 2 == 1) and '1' or '0', gg.TYPE_FLOAT)
        gg.getResults(100)
    end

    gg.editAll('100', gg.TYPE_FLOAT)
    gg.alert('𝔾𝕝𝕠𝕨 𝔸𝕡𝕡𝕝𝕚𝕖𝕕✨️')

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦')
    waitForGG(glowMenu)
end

function chromeRims()
    gg.alert('ℂ𝕙𝕠𝕠𝕤𝕖 ℝ𝕚𝕞𝕤 𝔸𝕟𝕕 𝔾𝕠 𝕋𝕠 𝕊𝕡𝕖𝕔𝕦𝕝𝕒𝕣 𝕋𝕙𝕖𝕟 𝕊𝕨𝕚𝕡𝕖 𝕦𝕡⬆️')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤....')
    gg.sleep(20000)

    gg.setRanges(gg.REGION_ANONYMOUS)

    for i = 1, 9 do
        gg.alert((i % 2 == 1) and "𝕊𝕨𝕚𝕡𝕖 𝕌𝕡" or "𝕊𝕨𝕚𝕡𝕖 𝔻𝕠𝕨𝕟")
        gg.sleep(5000)
        gg.searchNumber((i % 2 == 1) and '1' or '0', gg.TYPE_FLOAT)
        gg.getResults(100)
    end

    gg.editAll('10', gg.TYPE_FLOAT)
    gg.alert('ℂ𝕙𝕣𝕠𝕞𝕖 ℝ𝕚𝕞𝕤 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!')

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦')
    waitForGG(glowMenu)
end

function matteRims()
    gg.alert('ℂ𝕙𝕠𝕠𝕤𝕖 ℝ𝕚𝕞𝕤, 𝕄𝕒𝕜𝕖 𝕄𝕒𝕚𝕟 ℂ𝕠𝕝𝕠𝕣 𝕎𝕙𝕚𝕥𝕖 𝔸𝕟𝕕 𝕊𝕡𝕖𝕔𝕦𝕝𝕒𝕣 𝔹𝕝??𝕔𝕜 , 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 ℝ𝕖𝕗𝕝??𝕔𝕥𝕚𝕠𝕟 𝔸𝕟𝕕 𝕊𝕨𝕚𝕡𝕖 𝕌𝕡')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤....')
    gg.sleep(20000)

    gg.setRanges(gg.REGION_ANONYMOUS)

    for i = 1, 9 do
        gg.alert((i % 2 == 1) and "𝕊𝕨𝕚𝕡𝕖 𝕌𝕡" or "𝕊𝕨𝕚??𝕖 𝔻𝕠𝕨𝕟")
        gg.sleep(5000)
        gg.searchNumber((i % 2 == 1) and '1' or '0', gg.TYPE_FLOAT)
        gg.getResults(100)
    end

    gg.editAll('-5', gg.TYPE_FLOAT)
    gg.alert('𝕄𝕒𝕥𝕥𝕖 ℝ𝕚𝕞𝕤 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!')

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦')
    waitForGG(glowMenu)
end

function chromeBody()
    gg.alert('𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 ℂ𝕠𝕝𝕠𝕣 𝕋𝕙𝕖𝕟 𝕊𝕖𝕝𝕖𝕔𝕥 𝕊𝕡𝕖𝕔𝕦𝕝𝕒𝕣 𝔸𝕟𝕕 𝕊𝕨𝕚??𝕖 𝕌𝕡')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟝 𝕊𝕖𝕔𝕠𝕟𝕕𝕤.....')
    gg.sleep(25000)

    gg.setRanges(gg.REGION_ANONYMOUS)

    for i = 1, 9 do
        gg.alert((i % 2 == 1) and "𝕊𝕨𝕚𝕡𝕖 𝕌𝕡" or "𝕊𝕨𝕚𝕡𝕖 𝔻𝕠𝕨𝕟")
        gg.sleep(5000)
        gg.searchNumber((i % 2 == 1) and '1' or '0', gg.TYPE_FLOAT)
        gg.getResults(100)
    end

    gg.editAll('-10', gg.TYPE_FLOAT)
    gg.alert('ℂ𝕙𝕣𝕠𝕞𝕖 𝔹𝕠𝕕𝕪 𝔸𝕡𝕡𝕝𝕚𝕖𝕕!')

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦')
    waitForGG(glowMenu)
end

function tint()
    gg.alert('𝔾𝕠 𝕋𝕠 𝕋𝕚𝕟𝕥 ℂ𝕠𝕝𝕠𝕣 𝔸𝕟𝕕 𝕊𝕖𝕥 𝔻𝕖𝕤𝕚𝕣𝕖𝕕 𝕋𝕚𝕟𝕥 𝔸𝕟𝕕 𝕃𝕠𝕨𝕖𝕣 𝕋𝕚𝕟𝕥 𝕃𝕖𝕧𝕖𝕝𝕤 ')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟙𝟝 𝕊𝕖𝕔𝕠𝕟𝕕𝕤.....')
    gg.sleep(15000)
    gg.alert('𝔾𝕠 𝕋𝕠 𝔹𝕠𝕕𝕪 ℂ𝕠𝕝𝕠𝕣')

    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('0.3', gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.sleep(5000)
    gg.editAll('3', gg.TYPE_FLOAT)
    gg.alert('𝔾𝕠 𝕋𝕠 𝕋𝕚𝕟𝕥 𝕋𝕙𝕖𝕟 𝔾𝕠 𝕋𝕠 𝔸𝕟𝕠𝕥𝕙𝕖𝕣 ℂ𝕒𝕣 𝔸𝕟𝕕 𝕊𝕨𝕚𝕥𝕔𝕙 𝔹𝕒𝕔𝕜')

    gg.clearResults()
    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 ℝ𝕖𝕥𝕦𝕣𝕟 𝕋𝕠 𝔾𝕝𝕠𝕨 𝕄𝕖𝕟𝕦')
    waitForGG(glowMenu)
end

function unlockCrown()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3;0;218;-1:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.sleep(2000)
gg.refineNumber("218", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.sleep(500)
gg.editAll("0", gg.TYPE_DWORD)
gg.processResume()
gg.alert('👑𝔽𝕚𝕟𝕕 ℂ𝕣𝕠𝕨𝕟 ℂ𝕒𝕣 𝔸𝕟𝕕 𝔹𝕦𝕪👑')
gg.toast("𝔻𝕠𝕟𝕖✅")
gg.toast('Click GG To Return To Main Menu')
waitForGG(mainMenu)
end

function wingsAndRoofsFinder()
    gg.alert('𝕎𝕖𝕝𝕔𝕠𝕞𝕖 𝕋𝕠 ℂ𝕠𝕕𝕖 𝔽𝕚𝕟𝕕𝕖𝕣 𝕄𝕖𝕟𝕦 📝')
    while true do
        local choice = gg.choice({
            '𝔽𝕚𝕟𝕕 ℝ𝕠𝕠𝕗 𝕀𝔻🏠', 
            '𝔽𝕚𝕟𝕕 𝕎𝕚𝕟𝕘 𝕀𝔻 ✈️', 
            '❌️𝔼𝕩𝕚𝕥'
        }, nil, '📊ℂ𝕠𝕕𝕖 𝔽𝕚𝕟𝕕𝕖𝕣 𝕄𝕖𝕟𝕦📊')

        if choice == nil or choice == 3 then 
        gg.toast('ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕄𝕒𝕚𝕟 𝕄𝕖𝕟𝕦')
        return mainMenu()
   end

        local actions = {findRoofID, findWingID}
        if actions[choice] then actions[choice]() end

        waitForGG() -- Ensures smooth return to menu
    end
end

function findRoofID()
    gg.alert('𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 𝕎𝕚𝕥𝕙 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝔸𝕟𝕕 𝔹𝕦𝕪 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟙 𝕋𝕙𝕖𝕟 𝕊𝕖𝕝𝕖𝕔𝕥 ℕ𝕦𝕞𝕓𝕖𝕣 𝟚')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤')
    gg.sleep(20900)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('1', gg.TYPE_DWORD)

    gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟛')
    gg.sleep(5000)
    gg.searchNumber('2', gg.TYPE_DWORD)

    gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟜')
    gg.sleep(5000)
    gg.searchNumber('3', gg.TYPE_DWORD)

    gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 𝕐𝕠𝕦 𝕎𝕒𝕟𝕥 ℝ𝕠𝕠𝕗 ℂ𝕠𝕕𝕖 𝔽𝕣𝕠𝕞')
    gg.sleep(7000) -- Gives time to transition

    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔸 ℝ𝕠𝕠𝕗, 𝕋𝕙𝕖𝕟 ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 𝔾𝕖𝕥 ℂ𝕠𝕕𝕖')

    while true do
        if gg.isVisible(true) then
            gg.setVisible(false)
            gg.sleep(1000) -- Allows time to detect changes

            local results = gg.getResults(5) -- Check the first 5 values
            for _, v in ipairs(results) do
                if v.value == -1 then
                    gg.toast("ℝ𝕠𝕠𝕗 𝕀𝔻 𝕊𝕖𝕒𝕣𝕔𝕙 𝔼𝕟𝕕𝕖𝕕, ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕄𝕖𝕟𝕦....")
                    gg.sleep(2000)
                    return -- Exits function & goes back to menu
                elseif v.value ~= 0 then
                    gg.toast('Roof Code: ' .. tostring(v.value)) -- Display only the correct ID
                    break -- Stops after finding the first valid result
                end
            end
        end

        gg.sleep(500) -- Wait before checking again
    end
end

function findWingID()
    gg.alert('𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 𝕎𝕚𝕥𝕙 𝔹𝕠𝕕𝕪 𝕂𝕚𝕥 𝔸𝕟𝕕 𝔹𝕦𝕪 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟙 𝕋𝕙𝕖𝕟 𝕊𝕖𝕝𝕖𝕔𝕥 ℕ𝕦𝕞𝕓𝕖𝕣 𝟚')
    gg.toast('𝕐𝕠𝕦 ℍ𝕒𝕧𝕖 𝟚𝟘 𝕊𝕖𝕔𝕠𝕟𝕕𝕤....')
    gg.sleep(20000)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('1', gg.TYPE_DWORD)

    gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟛')
    gg.sleep(5000)
    gg.searchNumber('2', gg.TYPE_DWORD)

    gg.alert('ℂ𝕝𝕚𝕔𝕜 𝔹𝕦𝕞𝕡𝕖𝕣 #𝟜')
    gg.sleep(5000)
    gg.searchNumber('3', gg.TYPE_DWORD)

    gg.alert('ℕ𝕠𝕨 𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 𝕐𝕠𝕦 𝕎𝕒𝕟𝕥 𝕊𝕡𝕠𝕚𝕝𝕖𝕣 ℂ𝕠𝕕𝕖 𝔽𝕣𝕠𝕞')
    gg.sleep(7000) -- Gives time to transition

    gg.toast('ℂ𝕝𝕚𝕔𝕜 𝔸 𝕎𝕚𝕟𝕘, 𝕋𝕙𝕖𝕟 𝕆𝕡𝕖𝕟 𝔾𝔾 𝕋𝕠 𝔾𝕖𝕥 ℂ𝕠𝕕𝕖')

    while true do
        if gg.isVisible(true) then
            gg.setVisible(false)
            gg.sleep(1000) -- Allows time to detect changes

            local results = gg.getResults(5) -- Check the first 5 values
            for _, v in ipairs(results) do
                if v.value == -1 then
                    gg.toast("𝕎𝕚𝕟𝕘 𝕀𝔻 𝕊𝕖𝕒𝕣𝕔𝕙 𝔼𝕟𝕕𝕖𝕕, ℝ𝕖𝕥𝕦𝕣𝕟𝕚𝕟𝕘 𝕋𝕠 𝕄𝕖𝕟𝕦.....")
                    gg.sleep(2000)
                    return -- Exits function & goes back to menu
                elseif v.value ~= 0 then
                    gg.toast('Spoiler Code: ' .. tostring(v.value)) -- Display only the correct ID
                    break -- Stops after finding the first valid result
                end
            end
        end

        gg.sleep(500) -- Wait before checking again
    end
end

function unlockMenu()
while true do
local choice = gg.choice({'‼️ℂ𝕝𝕚𝕔𝕜 ℍ𝕖𝕣𝕖 𝔽𝕚𝕣𝕤𝕥‼️','🚘ℙℝ𝔼𝕄𝕀𝕌𝕄 ℂ𝔸ℝ 𝕌ℕ𝕃𝕆ℂ𝕂 𝕄𝔼ℕ𝕌','☢️𝕌ℕℝ𝔼𝕃𝔼𝔸𝕊𝔼𝔻 ℂ𝔸ℝ 𝕍𝕀𝔼𝕎 𝕆ℕ𝕃𝕐','❌️Exit'},nil,'𝕌ℕ𝕃𝕆ℂ𝕂 𝕄𝔼ℕ𝕌🔓')
if choice == nil or choice == 4 then
gg.toast('ℝ𝔼𝕋𝕌ℝℕ𝕀ℕ𝔾 𝕋𝕆 𝕄𝔸𝕀ℕ 𝕄𝔼ℕ𝕌....')
return mainMenu()
end

if choice == 1 then
clickMe()

elseif choice == 2 then 
premiumMenu()

elseif choice == 3 then
unreleasedCarUnlock()
    end
 end
end

function clickMe()
gg.clearList()
    gg.clearResults()
    gg.setVisible(false)
    gg.alert("𝔾𝕠 𝕋𝕠 ℂ𝕒𝕣 #1 𝔸𝕟𝕕 ℂ𝕝𝕚𝕔𝕜 𝔾𝔾")
    gg.toast("ℂ𝕝𝕚𝕔𝕜 𝔾𝔾 𝕋𝕠 𝕊𝕥𝕒𝕣𝕥")
    gg.clearResults()
    gg.clearList()
    while not gg.isVisible() do
    end
gg.setVisible(false)
gg.toast("𝔽𝕚𝕟𝕕𝕚𝕟𝕘 𝕍𝕒𝕝𝕦𝕖𝕤....🔍")
 gg.sleep(500)
 gg.setRanges(gg.REGION_ANONYMOUS)

gg.clearResults()
gg.searchNumber("59;133", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)


gg.processResume()
gg.refineNumber("59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

gg.processResume()
gg.alert("ℝ𝕖𝕒𝕕𝕪 ℕ𝕠𝕨 𝕊𝕖𝕝𝕖𝕔𝕥 ℙ𝕣𝕖𝕞𝕚𝕦𝕞 ℂ𝕒𝕣 𝕆𝕡𝕥𝕚𝕠𝕟 🔥")
gg.toast("𝔻𝕆ℕ𝔼✅")
end

function premiumMenu()
while true do
local choice = gg.choice({
'🔓Car Unlock Prompt',
'✨️𝔹𝕄𝕎 𝕄𝟜 𝔾𝟠𝟚',
'🥶𝔹𝕄𝕎 𝕄𝟜 𝔽𝟠𝟘 ',
'♟️𝔹𝕄𝕎 𝕏𝟞',
'🔥𝔹𝕄𝕎 𝕄𝟚',
'💎𝔹𝕄𝕎 𝕀𝟠',
'🏆𝔹𝕄𝕎 𝕄𝟠 ℂ𝕆𝕄ℙ𝔼𝕋𝕀𝕋𝕀𝕆ℕ ',
'⌚️𝕄𝔼ℝℂ𝔼𝔻𝔼𝕊 𝕊-ℂ𝕃𝔸𝕊??',
'⚡️𝕄𝔼ℝℂ𝔼𝔻𝔼𝕊 𝔼𝟞𝟛',
'🚘𝕄𝔼ℝℂ????𝔼𝕊 𝔹??ℕℤ 𝔸𝕄?? ????𝟞𝟛𝕤',
'💰𝕄𝔼ℝℂ𝔼𝔻𝔼𝕊 𝔹𝔼ℕℤ ℂ𝕃𝕊 𝟞𝟛',
'🥇ℕ𝕀𝕊𝕊𝔸ℕ 𝟛𝟝𝟘ℤ',
'🚩ℕ𝕀𝕊𝕊𝔸ℕ 𝟙𝟠𝟘𝕊𝕏',
'🏴‍☠️ℕ𝕀𝕊𝕊𝔸ℕ 𝔾𝕋ℝ ℝ𝟛𝟚',
'🐍𝔻𝕆𝔻𝔾𝔼 𝕍𝕀ℙ𝔼ℝ',
'🏎𝔽𝕆ℝ𝕄𝕌𝕃𝔸 𝔽𝟙',
'🏁𝔽𝕆ℝ𝕄𝕌𝕃𝔸 𝔽𝟚',
'🪲𝔹𝕌𝔾𝔾𝕐',
'🛻𝔻𝕆𝔻𝔾𝔼 ℝ𝔸𝕄 𝕋ℝ𝕏',
'🏎𝕋𝕆𝕐𝕆𝕋𝔸 ℂ𝔸𝕄ℝ𝕐',
'❌️𝔼𝕏𝕀𝕋'
},nil,'🚘premium car menu🚘')
if choice == nil or choice == 21 then
gg.toast('ℝ𝔼𝕋𝕌ℝℕ𝕀ℕ𝔾 𝕋𝕆 𝕌ℕ𝕃𝕆ℂ𝕂 𝕄𝔼ℕ𝕌....')
return unlockMenu()
    end

if choice == 1 then
premiumCarPrompt()

elseif choice == 2 then
bmwG82()

elseif choice == 3 then
bmwF80()

elseif choice == 4 then
bmwX6()

elseif choice == 5 then
bmwM2()

elseif choice == 6 then
bmwI8()

elseif choice == 7 then
bmwM8()

elseif choice == 8 then
mercedesSclass()

elseif choice == 9 then
mercedesE63()

elseif choice == 10 then
mercedesGt63()

elseif choice == 11 then
mercedesCls()

elseif choice == 12 then
nissanZ()

elseif choice == 13 then
nissan180()

elseif choice == 14 then
nissanR32()

elseif choice == 15 then
dodgeViper()

elseif choice == 16 then
formulaF1()

elseif choice == 17 then
formulaF2()

elseif choice == 18 then
buggyCar()

elseif choice == 19 then
dodgeRam()

elseif choice == 20 then
toyotaCamry()

    end
end
end

function premiumCarPrompt()
c = gg.prompt({
        "𝔼ℕ𝕋𝔼ℝ ℝ𝔸ℕ𝔻𝕆𝕄 ℂ𝔸ℝ ℂ??𝔻𝔼 [𝟙-𝟚𝟚𝟟]",
        "𝔹𝔸ℂ𝕂🔙"
    },nil,{"number","checkbox"}) if not c then return end if c == nil then Menu() end gg.setVisible(false) if c[2] then return gg.setVisible(true) end 
    gg.processResume()
  gg.setRanges(gg.REGION_ANONYMOUS)
gg.processResume()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(c[1], gg.TYPE_DWORD)
gg.processResume()
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.toast("𝔻𝕆ℕ𝔼✅")
end


function bmwF80()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔹𝕄𝕎 𝔽𝟠𝟘')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(104)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function bmwG82()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔹𝕄𝕎 𝔾𝟠𝟚')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(153)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function bmwX6()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔹𝕄𝕎 𝕏𝟞')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(118)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function bmwM2()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔹𝕄𝕎 𝕄𝟚')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.getResults(100)
gg.sleep(500)
gg.editAll(127)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function bmwI8()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔹𝕄𝕎 𝕀𝟠')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(138)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function bmwM8()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔹𝕄𝕎 𝕄𝟠')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(144)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function mercedesSclass()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ??ℕ𝔾 𝔽??ℝ 𝕄𝔼ℝℂ𝔼𝔻𝔼𝕊 𝕊 ℂ𝕃𝔸𝕊𝕊')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(136)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function mercedesE63()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝕄𝔼ℝℂ𝔼𝔻𝔼𝕊 𝔼𝟞𝟛 ')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults()
gg.editAll(114)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function mercedesGt63()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝕄𝔼ℝℂ𝔼𝔻𝔼𝕊 𝔾𝕋𝟞𝟛 ')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(142)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function mercedesCls()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝕄𝔼ℝℂ𝔼𝔻𝔼𝕊 ℂ𝕃𝕊')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(173)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function nissanZ()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ ℕ𝕀𝕊𝕊𝔸ℕ 𝟛𝟝𝟘ℤ')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll('145',gg.TYPE_DWORD)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function nissan180()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ ℕ𝕀𝕊𝕊𝔸ℕ 𝟙𝟠𝟘𝕊𝕏')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(131)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function nissanR32()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ ℕ𝕀𝕊𝕊𝔸ℕ ℝ𝟛𝟚')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(156)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function dodgeViper()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔻𝕆𝔻𝔾𝔼 𝕍𝕀ℙ𝔼ℝ')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(141)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function formulaF1()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔽𝕆ℝ𝕄𝕌𝕃𝔸 𝔽𝟙')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(155)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function formulaF2()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ ??𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ??ℕ𝔾 𝔽𝕆ℝ 𝔽𝕆ℝ𝕄𝕌𝕃𝔸 𝔽𝟚')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(165)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function buggyCar()
gg.alert('???? 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔹𝕌𝔾𝔾𝕐')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(164)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ?? 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function dodgeRam()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝔻𝕆𝔻𝔾𝔼 ℝ𝔸𝕄')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(167)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ ??????𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function toyotaCamry()
gg.alert('𝔾𝕆 𝕋𝕆 𝕆ℝ 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝕋𝕆𝕐𝕆𝕋𝔸 ℂ𝔸𝕄ℝ𝕐')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.getResults(150)
gg.editAll(120)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚 𝔸ℕ𝔻 𝔹𝔸ℂ𝕂 𝕋𝕆 #𝟙')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end


function unreleasedCarUnlock()
gg.clearList()
    gg.clearResults()
    gg.setVisible(false)
    gg.alert("𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟙 𝕋ℍ𝔼ℕ ℂ𝕃𝕀ℂ𝕂 𝔾𝔾")
    gg.sleep(2000)
    gg.toast("ℂ𝕃𝕀ℂ𝕂 𝔾𝔾 𝕋𝕆 𝕊𝕋𝔸ℝ𝕋")
    gg.clearResults()
    gg.clearList()
    while not gg.isVisible() do
    end
gg.setVisible(false)
gg.toast("𝔽𝕀ℕ𝔻𝕀ℕ𝔾 𝕍??𝕃??𝔼𝕊.....")
 gg.sleep(500)
 gg.setRanges(gg.REGION_ANONYMOUS)

gg.clearResults()
gg.searchNumber("59;133", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)


gg.processResume()
gg.refineNumber("59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

gg.alert(' 𝕊𝕋𝔸𝕐 𝔸𝕋 ℂ𝔸ℝ #𝟙')
gg.sleep(3000)
gg.getResults(100)
gg.toast('𝕊𝔼𝔸ℝℂℍ𝕀ℕ𝔾 𝔽𝕆ℝ 𝕌ℕℝ𝔼𝕃𝔼𝔸𝕊??𝔻 ℂ𝔸ℝ')
gg.sleep(2000)
gg.setRanges (gg.REGION_ANONYMOUS)
gg.editAll(119)
gg.sleep(500)
gg.alert('ℕ𝕆𝕎 𝔾𝕆 𝕋𝕆 ℂ𝔸ℝ #𝟚')
gg.sleep(1000)
gg.alert('𝔻𝕆ℕ𝔼 ℕ𝕆𝕎 𝕎𝔸𝕋ℂℍ 𝕍𝕀𝔻𝔼𝕆 𝕋𝕆 ℂ𝕃𝔸𝕀𝕄')
gg.toast('𝔻𝕆ℕ𝔼✅️')
end

function funMenu()
while true do
local choice = gg.choice({'🦅FLYING MENU🦅','❌️EXIT'},nil,'🎮ENTERTAINMENT MENU🎮')
if choice == nil or choice == 2 then
gg.toast('Returning To Main Menu')
return mainMenu()
 end

if choice == 1 then
fart()
 end

function fart()
local menu = gg.choice({'FLYING ON','FLYING OFF','Exit'})
if menu == nil or menu == 3 then
return funMenu()
end

if menu == 1 then
flyOn()
elseif menu == 2 then
flyOff()
 end
end
end

function flyOn()
gg.clearResults()
gg.clearList()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-9.8', gg.TYPE_FLOAT)
gg.getResults(50)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.sleep(1000)
waitForGG(flyingMenu)
end

function flyOff()
gg.editAll('-9.8', gg.TYPE_FLOAT)
end

gg.toast('not available yet')
end

function lamborghiniMenu()
gg.toast("CONTACT OWNER FOR ACCESS🏎💨")
return mainMenu()
end

function achievementMenu1()
on = " 🔴⃢  "
off = "      ⃢🔵"
LEVEL = on
LEVEL2 = on
LEVEL3 = on
LEVEL4 = on
LEVEL5 = on
LEVEL6 = on
gg.clearList()
    gg.clearResults()
    local lastSelected = 0
    gg.setVisible(true)
repeat
         repeat until gg.isVisible()
         gg.setVisible(false)
         local choice = gg.choice({
                " 🚦LEVELS"..LEVEL, --1
                "🏃‍♂️MARATHON RUNNER"..LEVEL2,--2
                "🚘DRIFT KING & DRIFT MASTER"..LEVEL3,--3
                "🛣ROAD KING"..LEVEL4,--4
                "🏴‍☠️WINGMAN" ..LEVEL5,--5
                "🏜MAD ROAD" ..LEVEL6,--6
                "EXIT",
         }, nil, "ACHIEVEMENT MENU\nCOMPLETE 1 AT A TIME FOR BEST RESULTS")
    
        if choice == nil or choice == 7 then
        gg.toast('Returning To Main Menu')
        return mainMenu()
     end
        
      if choice == 1 then
      if LEVEL == on then
            M1(on)
            LEVEL = off
            else
              M2(off)
                LEVEL = on
                      end
                          end
                             
      if choice == 2 then
      if LEVEL2 == on then
           M3(on)
           LEVEL2 =off
           else
               M4(off)
               LEVEL2 = on
                    end
                       end
                       
      if choice == 3 then
      if LEVEL3 == on then
           M5(on)
           LEVEL3 = off
              else 
                  M6(off)
                     LEVEL3 = on
                          end 
                             end
                             
      if choice == 4 then
      if LEVEL4 == on then
              M7(on)
              LEVEL4 = off
              else
                  M8(off)
                  LEVEL4 = on
                       end
                          end
                          
if choice == 5 then
      if LEVEL5 == on then
              M9(on)
              LEVEL5 = off
              else
                  M10(off)
                  LEVEL5 = on
                       end
                          end
                                        
if choice == 6 then
      if LEVEL6 == on then
              M11(on)
              LEVEL6 = off
              else
                  M12(off)
                  LEVEL5 = on
                       end
                          end
            
      if choice == 7 then return
       M13()
        end
    until nil
end

function M13()
gg.setVisible(true)
gg.toast("Back")
end

function M1()
gg.clearList()
            gg.clearResults()         
                  gg.setVisible(false)
               gg.alert"Go to Levels And Select LvL #1 Then Click On GG Logo To Start"
            gg.toast"Click GG Logo To Start"
         gg.clearResults()
      gg.clearList()
while not gg.isVisible() do
end
              gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1E-40", gg.TYPE_FLOAT)
gg.processResume()
gg.alert("Do This Mission Carefully If You Crash You\nHave To Restart The Game And Try Again")
gg.toast("ACTIVE✅️")
gg.sleep(4000)
gg.alert("Levels Should Complete Automatic Some You Have To Do Manually Click Next Level Till All Are Complete")
end

function M2()
gg.setRanges(gg.REGION_CODE_APP)
if revert ~= nil then gg.setValues(revert) end
gg.toast("OFF")
gg.clearResults()
end


function M3()
gg.alert('JOIN A SERVER AND GET OUT OF CAR')
gg.toast('YOU HAVE 20 SECONDS.....')
gg.sleep(20000)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("40", gg.TYPE_DOUBLE)
gg.processResume()

gg.clearResults()
gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("99", gg.TYPE_DOUBLE)
gg.processResume()
gg.alert("Play For A Bit Then Turn Off And Check Progress, And Also Only While Character Is On Ground It Counts For Achievement")
gg.toast("ACTIVE✅")
end

function M4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.processResume()
if revert ~= nil then gg.setValues(revert) end
gg.processResume()
gg.clearResults()
gg.toast("NOT-ACTIVE❌")
end

function M5()
gg.alert('JOIN A SERVER AND START DRIVING')
gg.toast('YOU HAVE 20 SECONDS.....')
gg.sleep(20000)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("8000", gg.TYPE_FLOAT)
gg.processResume()
gg.toast("ON✅")
gg.sleep(5000)
gg.toast("WAIT")
gg.sleep(70000)
if revert ~= nil then gg.setValues(revert) end
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("80000", gg.TYPE_FLOAT)
gg.processResume()
gg.alert("Play For 5 Minutes, Then Turn Off And Check Progress")
gg.toast("ACTIVE✅")
end

function M6()
gg.setRanges(gg.REGION_CODE_APP)
if revert ~= nil then gg.setValues(revert) end
gg.toast("OFF")
gg.clearResults()
end

function M7()
gg.alert('JOIN HIGHWAY SERVER AND DRIVE CAR')
gg.toast('YOU HAVE 20 SECONDS.....')
gg.sleep(20000)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("8000", gg.TYPE_FLOAT)
gg.toast("ON✅")
gg.sleep(5000)
gg.toast("WAIT")
gg.sleep(70000)
if revert ~= nil then gg.setValues(revert) end
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("80000", gg.TYPE_FLOAT)
gg.processResume()
gg.alert("Play For 5 Minutes, Then Turn Off And Check Progress")
end

function M8()
gg.setRanges(gg.REGION_CODE_APP)
if revert ~= nil then gg.setValues(revert) end
gg.toast("OFF")
gg.clearResults()
end

function M9()
gg.alert('JOIN A SERVER AND ENTER PASSENGER SEAT')
gg.toast('YOU HAVE 20 SECONDS.....')
gg.sleep(20000)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("8000", gg.TYPE_FLOAT)
gg.toast("ON✅")
gg.sleep(5000)
gg.toast("WAIT")
gg.sleep(70000)
if revert ~= nil then gg.setValues(revert) end
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("80000", gg.TYPE_FLOAT)
gg.processResume()
gg.alert("Play For 5 Minutes, Then Turn Off And Check Progress")
end

function M10()
gg.setRanges(gg.REGION_CODE_APP)
if revert ~= nil then gg.setValues(revert) end
gg.toast("OFF")
gg.clearResults()
end

function M11()
gg.alert('JOIN OFFROAD SERVER AND GO OFFROAD')
gg.toast('YOU HAVE 20 SECONDS.....')
gg.sleep(20000)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("8000", gg.TYPE_FLOAT)
gg.toast("ON✅")
gg.sleep(5000)
gg.toast("WAIT")
gg.sleep(70000)
if revert ~= nil then gg.setValues(revert) end
revert = gg.getResults(98, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("80000", gg.TYPE_FLOAT)
gg.processResume()
gg.alert("Play For 5 Minutes, Then Turn Off And Check Progress")
end

function M12()
gg.setRanges(gg.REGION_CODE_APP)
if revert ~= nil then gg.setValues(revert) end
gg.toast("OFF")
gg.clearResults()
end

function achievementMenu2()
gg.alert('Coming Soon🚀')
gg.toast('Returning To Main Menu')
return mainMenu()
end

function raceMenu()
    local ASEC = false
    local BSEC = false
    local CSEC = false
    local DSEC = false
    local lastSelected = 0

    gg.setVisible(true)
    repeat
        repeat until gg.isVisible()
        gg.setVisible(false)
        
        local choice = gg.choice({
            "🥶 GLITCH 1 SECOND [" .. (ASEC and "✅ ON" or "❌ OFF") .. "]",
            "🚀 GLITCH 2 SECOND [" .. (BSEC and "✅ ON" or "❌ OFF") .. "]",
            "😎 GLITCH 3 SECOND [" .. (CSEC and "✅ ON" or "❌ OFF") .. "]",
            "🚦 GLITCH 4 SECOND [" .. (DSEC and "✅ ON" or "❌ OFF") .. "]",
            "⬅ Exit"
        }, nil, "Click On a Race Option")

        if choice == nil or choice == 5 then
            gg.toast("Returning To Main Menu...")
            return mainMenu()
        else
            lastSelected = choice
        end

        if choice == 1 then
            if ASEC then
                SC2()
                ASEC = false
            else
                SC1()
                ASEC = true
            end
        elseif choice == 2 then
            if BSEC then
                SC4()
                BSEC = false
            else
                SC3()
                BSEC = true
            end
        elseif choice == 3 then
            if CSEC then
                SC6()
                CSEC = false
            else
                SC5()
                CSEC = true
            end
        elseif choice == 4 then
            if DSEC then
                SC8()
                DSEC = false
            else
                SC7()
                DSEC = true
            end
        end

        SC9()
    until false
end

function SC1()
gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("2500", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("-100000",  gg.TYPE_FLOAT)
    gg.clearResults(100)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1.1", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("10",  gg.TYPE_FLOAT)
    gg.clearResults(999)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("10000000", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("3E-4",  gg.TYPE_FLOAT)
    gg.toast("ACTIVE✅")
    gg.clearResults()
end

function SC2()
gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-100000", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("2500",  gg.TYPE_FLOAT)
    gg.clearResults(100)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("10", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("1.1",  gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("3E-4", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("10000000",  gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("NON-ACTIVE❌")
end

function SC3()
gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("2500", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("-100000",  gg.TYPE_FLOAT)
    gg.clearResults(100)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1.1", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("3",  gg.TYPE_FLOAT)
    gg.clearResults(100)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("10000000", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("3E-4",  gg.TYPE_FLOAT)
    gg.toast("ACTIVE✅")
    gg.clearResults()
end

function SC4()
gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-100000", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("2500",  gg.TYPE_FLOAT)
    gg.clearResults(100)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("3", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("1.1",  gg.TYPE_FLOAT)
    gg.clearResults(100)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("3E-4", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll("10000000",  gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("NON-ACTIVE❌")
end

function SC5()
gg.setVisible(false)
  gg.clearResults()
  gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("-100000", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("3.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("925", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("10000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("4E-4", gg.TYPE_FLOAT)
  gg.toast("ACTIVE✅")
  gg.clearResults()
  gg.clearList()
end 

function SC6()
gg.setVisible(false)
  gg.clearResults()
  gg.clearList()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-100000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("2500", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1.1", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("925", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("3.6", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("4E-4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("10000000", gg.TYPE_FLOAT)
  gg.toast("NON-ACTIVE❌")
  gg.clearResults()
  gg.clearList()
end 

function SC7()
gg.setVisible(false)
  gg.clearResults()
  gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("-100000", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("3.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("10000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("4E-4", gg.TYPE_FLOAT)
  gg.toast("ACTIVE✅")
  gg.clearResults()
  gg.clearList()
end 

function SC8()
gg.setVisible(false)
  gg.clearResults()
  gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-100000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("2500", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("3.6", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("4E-4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.setVisible(false)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("10000000", gg.TYPE_FLOAT)
  gg.toast("NON-ACTIVE❌")
  gg.clearResults()
  gg.clearList()
end 

function SC9()
gg.setVisible(true)
end

function extrasMenu()
    local lastSelected = 0
    gg.setVisible(true)
    repeat
        if gg.isVisible() then
            gg.setVisible(false)
        end

        add = gg.choice({
            "IN SERVER MENU",
            "IN LOBBY MENU",
            "EXIT",
        }, nil, "Extras Menu")

        if add == nil or add == 3 then
            gg.toast('Returning To Main Menu')
            return mainMenu()
        end

        lastSelected = add
        if add == 1 then
            AD1()
        elseif add == 2 then
            AD2()
        elseif add == 3 then
            return AD3()
        end
    until false  -- This will keep the menu running until the user exits
end

function AD3()
gg.setVisible(true)
end

on = " 🔴⃢  "
off = "      ⃢🔵"
MIL = on
MIL1 = on 
MIL2 = on
MIL3 = on
MIL4 = on
MIL5 = on
function AD1()
    local lastSelected = 0
    gg.setVisible(true)

    repeat
        until gg.isVisible()

    gg.setVisible(false)

    add1 = gg.choice({
        "⚠️GG DRIFT"..MIL,
        "💥ANTI DAMAGE"..MIL1,
        "🚘ANTI CRASH"..MIL2,
        "🪽FLYING CAR"..MIL3,
        "❌️EXIT ",
    }, nil, "Extras Menu")

    if add1 == nil then
        gg.toast('Returning To Extras Menu')
        return extrasMenu()
    end

    lastSelected = add1

    if add1 == 1 then
        if MIL == "on" then
            Y7("on")
            MIL = "off"
        else
            Y8("off")
            MIL = "on"
        end
    end

    if add1 == 2 then
        if MIL1 == "on" then
            Y9("on")
            MIL1 = "off"
        else
            Y10("off")
            MIL1 = "on"
        end
    end

    if add1 == 3 then
        if MIL2 == "on" then
            Y11("on")
            MIL2 = "off"
        else
            Y12("off")
            MIL2 = "on"
        end
    end

if add1 == 4 then
        if MIL3 == "on" then
            Y14("on")
            MIL3 = "off"
        else
            Y15("off")
            MIL3 = "on"
        end
    end

    if add1 == 5 then 
        return Y13()
    end

    repeat until false
end

function Y13()
    gg.setVisible(true)
end


function Y8()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("30", gg.TYPE_FLOAT)
gg.processResume()
gg.toast("ACTIVE✅")
end

function Y7()
gg.setRanges(gg.REGION_CODE_APP)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.0001", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.toast("NON-ACTIVE❌")
end


function Y10()
gg.clearResults()
gg.clearList()
-- main code
gg.setRanges(32)
gg.searchNumber("0.40000000596F;5;0.10000000149F;1:13", 16)
gg.refineNumber("5", 16)
gg.getResults(9999)
gg.editAll("1999", 16)
gg.toast("ACTIVE✅")
end


function Y9()
gg.setVisbile(true)
end
 
function Y12()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("10000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("3E-4", gg.TYPE_FLOAT)
gg.processResume()
gg.toast("ACTIVE✅")
end

function Y11()
gg.setRanges(gg.REGION_CODE_APP)
if revert ~= nil then gg.setValues(revert) end
gg.processResume()
gg.clearResults()
gg.toast("NON-ACTIVE❌")
end

function Y15()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('0.34',gg.TYPE_FLOAT)
gg.getResults(100)
gg.sleep(1000)
gg.editAll('3',gg.TYPE_FLOAT)
gg.alert('Click Other Car And Come Back If In Lobby Or Rejoin If In Game')
gg.toast('Active✅️')
gg.clearResults()
waitForGG(AD1)
end

function Y14()
gg.toast('NON-ACTIVE❌️')
end

function AD2()
       while true do
         kostum = gg.choice({
              "🐘 Custom Mass",
              "⚙️ Custom Gear Ratio",
              "🎎 Paste Text Art",
              "🎫 Custom Long Name",
              "❌️EXIT",
         }, nil, "Extras Menu #2")
        if kostum == nil or kostum == 5 then
            gg.toast('ℝ𝔼𝕋𝕌ℝℕ𝕀ℕ𝔾 𝕋𝕆 𝕄𝔸𝕀ℕ 𝕄𝔼ℕ𝕌')
            return mainMenu()
     end
      if kostum == 1 then
          CT1()
      elseif kostum == 2 then 
         CT3()
      elseif kostum == 3 then 
        CT5()
      elseif kostum == 4 then 
       CT6()
     end
    end
   end

function CT1()
gg.clearList()
    gg.clearResults()
   gg.alert("Goto New cars then Click GG")
  gg.toast("Click the GG Logo to start")
    while not gg.isVisible() do
    end
 gg.setVisible(false)
    d = gg.prompt({
        "ENTER NUMBER MASS⬇️",
        "EDIT NUMBER MASS⬇️",
        "BACK🔙"
    },nil,{"number","number","checkbox"}) if not d then return end if d == nil then Menu() end gg.clearResults() gg.setVisible(false) if d[3] then return gg.setVisible(true) end 
gg.toast("🔎FINDING VALUE WAIT🔍")
 gg.sleep(500)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(d[1], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(d[2], gg.TYPE_FLOAT)
gg.processResume()
gg.toast("DONE✅")
end


function CT3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.alert("First, shift the gear ratio to the right➡️")
gg.sleep(5000)
gg.clearResults()
gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("30", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.toast("Done✅")
end


function CT5()
gg.toast("10%")
gg.sleep(500)
gg.toast("20%")
gg.sleep(600)
gg.toast("30%")
gg.sleep(700)
gg.toast("40%")
gg.sleep(800)
gg.toast("50%")
gg.sleep(900)
gg.toast("60%")
gg.sleep(1000)
gg.toast("70%")
gg.sleep(1100)
gg.toast("80%")
gg.sleep(1200)
gg.toast("90%")
gg.sleep(1300)
gg.toast("100%")
gg.sleep(1400)
gg.toast("Detected")
gg.sleep(3000)

gg.toast("WAIT")
gg.sleep(2000)
gg.addListItems({
  [1] = {address = 128, flags = 13},
  [2] = {address = 128, flags = 14},
  [3] = {address = 128, flags = 15},
  [4] = {address = 128, flags = 16},
  [5] = {address = 128, flags = 17},
  [6] = {address = 128, flags = 18},
  [7] = {address = 128, flags = 19},
  [8] = {address = 128, flags = 20},
  [9] = {address = 128, flags = 21},
  [10] = {address = 128, flags = 22},
  [11] = {address = 128, flags = 23},
  [12] = {address = 128, flags = 24},
  [13] = {address = 128, flags = 25},
  [14] = {address = 128, flags = 26},
  [15] = {address = 128, flags = 27},
  [16] = {address = 128, flags = 28},
  [17] = {address = 128, flags = 29},
  [18] = {address = 128, flags = 30},
  [19] = {address = 128, flags = 31},
  [20] = {address = 128, flags = 32},
  [21] = {address = 129, flags = 13},
  [22] = {address = 129, flags = 14},
  [23] = {address = 129, flags = 15},
  [24] = {address = 129, flags = 16},
  [25] = {address = 129, flags = 17},
  [26] = {address = 129, flags = 18},
  [27] = {address = 129, flags = 19},
  [28] = {address = 129, flags = 20},
  [29] = {address = 129, flags = 21},
  [30] = {address = 129, flags = 22},
  [31] = {address = 129, flags = 23},
  [32] = {address = 129, flags = 24},
  [33] = {address = 129, flags = 25},
  [34] = {address = 129, flags = 26},
  [35] = {address = 129, flags = 27},
  [36] = {address = 129, flags = 28},
  [37] = {address = 129, flags = 29},
  [38] = {address = 129, flags = 30},
  [39] = {address = 129, flags = 31},
  [40] = {address = 129, flags = 32}
})
gg.addListItems({
  [1] = {address = 128, flags = 13},
  [2] = {address = 128, flags = 14},
  [3] = {address = 128, flags = 15},
  [4] = {address = 128, flags = 16},
  [5] = {address = 128, flags = 17},
  [6] = {address = 128, flags = 18},
  [7] = {address = 128, flags = 19},
  [8] = {address = 128, flags = 20},
  [9] = {address = 128, flags = 21},
  [10] = {address = 128, flags = 22},
  [11] = {address = 128, flags = 23},
  [12] = {address = 128, flags = 24},
  [13] = {address = 128, flags = 25},
  [14] = {address = 128, flags = 26},
  [15] = {address = 128, flags = 27},
  [16] = {address = 128, flags = 28},
  [17] = {address = 128, flags = 29},
  [18] = {address = 128, flags = 30},
  [19] = {address = 128, flags = 31},
  [20] = {address = 128, flags = 32},
  [21] = {address = 129, flags = 13},
  [22] = {address = 129, flags = 14},
  [23] = {address = 129, flags = 15},
  [24] = {address = 129, flags = 16},
  [25] = {address = 129, flags = 17},
  [26] = {address = 129, flags = 18},
  [27] = {address = 129, flags = 19},
  [28] = {address = 129, flags = 20},
  [29] = {address = 129, flags = 21},
  [30] = {address = 129, flags = 22},
  [31] = {address = 129, flags = 23},
  [32] = {address = 129, flags = 24},
  [33] = {address = 129, flags = 25},
  [34] = {address = 129, flags = 26},
  [35] = {address = 129, flags = 27},
  [36] = {address = 129, flags = 28},
  [37] = {address = 129, flags = 29},
  [38] = {address = 129, flags = 30},
  [39] = {address = 129, flags = 31},
  [40] = {address = 129, flags = 32}
})
gg.addListItems({
  [1] = {address = 128, flags = 13},
  [2] = {address = 128, flags = 14},
  [3] = {address = 128, flags = 15},
  [4] = {address = 128, flags = 16},
  [5] = {address = 128, flags = 17},
  [6] = {address = 128, flags = 18},
  [7] = {address = 128, flags = 19},
  [8] = {address = 128, flags = 20},
  [9] = {address = 128, flags = 21},
  [10] = {address = 128, flags = 22},
  [11] = {address = 128, flags = 23},
  [12] = {address = 128, flags = 24},
  [13] = {address = 128, flags = 25},
  [14] = {address = 128, flags = 26},
  [15] = {address = 128, flags = 27},
  [16] = {address = 128, flags = 28},
  [17] = {address = 128, flags = 29},
  [18] = {address = 128, flags = 30},
  [19] = {address = 128, flags = 31},
  [20] = {address = 128, flags = 32},
  [21] = {address = 129, flags = 13},
  [22] = {address = 129, flags = 14},
  [23] = {address = 129, flags = 15},
  [24] = {address = 129, flags = 16},
  [25] = {address = 129, flags = 17},
  [26] = {address = 129, flags = 18},
  [27] = {address = 129, flags = 19},
  [28] = {address = 129, flags = 20},
  [29] = {address = 129, flags = 21},
  [30] = {address = 129, flags = 22},
  [31] = {address = 129, flags = 23},
  [32] = {address = 129, flags = 24},
  [33] = {address = 129, flags = 25},
  [34] = {address = 129, flags = 26},
  [35] = {address = 129, flags = 27},
  [36] = {address = 129, flags = 28},
  [37] = {address = 129, flags = 29},
  [38] = {address = 129, flags = 30},
  [39] = {address = 129, flags = 31},
  [40] = {address = 129, flags = 32}
})
gg.toast("Wait")
gg.isPackageInstalled("com.zyt")
gg.isPackageInstalled("sstool.only.com.sstool")
gg.isPackageInstalled("com.zyt.sstool.premium")
gg.toast("Wait")
gg.clearList()
gg.clearResults()
gg.setVisible(true)
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.80259693e-44;0.1911765337;1.0;0.0;0.80000001192;0.8745098114;0.55294120312;0.5::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2.80259693e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99999)
gg.editAll("1.40129706e-39", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("READY NOW COPY A TEXT ART DESIGN AND PASTE USING TEXT VINYL [FOR TRACING NOT PERMANENT]")
gg.toast(" DONE✅")
gg.toast('Click GG To Return To Extras Menu')
waitForGG(extrasMenu)
end

function CT6()
gg.alert('Coming Soon 🥲')
gg.toast('Returning To Extras Menu')
return extrasMenu()
end


function setvalue(address, flags, value)
    local tt = {}
    tt[1] = {}
    tt[1].address = address
    tt[1].flags = flags
    tt[1].value = value
    gg.setValues(tt)
end

function waitForGG(returnTo)
    while true do
        local isVisible = gg.isVisible(true)
        
        -- Check if gg.isVisible() returns a valid value (not -1)
        if isVisible and isVisible ~= -1 then
            gg.setVisible(false)
            if returnTo then
                returnTo() -- Return to the correct menu
            else
                mainMenu() -- Default to Main Menu if nothing is passed
            end
            return -- Prevent infinite loop
        end
        gg.sleep(1000) -- Sleep to prevent excessive looping
    end
end

detector = gg.getFile():match('[^/]+$')  
name = "_CPMGARAGEULTIMATE.lua"  

if detector == name then  
    -- The script name matches, continue execution  
else  
    gg.alert("CHANGE NAME BACK TO ORIGINAL THIEF??") -- Stops execution with an error message  
    print("Idiot")
    os.exit()
 
end

mainMenu()
