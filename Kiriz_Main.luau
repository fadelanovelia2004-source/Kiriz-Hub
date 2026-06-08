-- ==============================================
-- KIRIZ MAIN • SATU FILE LENGKAP
-- ==============================================
if not game:IsLoaded() then game.Loaded:Wait() end
getgenv().Init = getgenv().Init or {}
local Init = getgenv().Init

-- 📦 SEMUA FITUR DISIMPAN DI SINI
local SkripTersimpan = {
    ["Universal/PlayerCTRL.luau"] = function()
        -- ✅ BUKA LINK DIA: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Universal/PlayerCTRL.luau
        -- ✅ SALIN ISINYA → HAPUS TEKS DI SINI → TEMPEL DI SINI
    end,

    ["Universal/Lucid/Init.luau"] = function()
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Universal/Lucid/Init.luau
        -- ✅ TEMPEL KODE DIA DI SINI
    end,

    ["Universal/PolariaRM/Init.luau"] = function()
        -- 🔥 YANG KAMU CARI!
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Universal/PolariaRM/Init.luau
        -- ✅ SALIN SEMUA KODE DARI SITU → TEMPEL DI SINI
    end,

    ["Universal/WallyWest/Init.luau"] = function()
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Universal/WallyWest/Init.luau
    end,

    ["Universal/Shiftlock/Init.luau"] = function()
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Universal/Shiftlock/Init.luau
    end,

    ["Universal/DeltaKD.luau"] = function()
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Universal/DeltaKD.luau
    end,

    ["Universal/SoundDock.luau"] = function()
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Universal/SoundDock.luau
    end,

    ["Game-specific/CombatGUI/Init.luau"] = function()
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Game-specific/CombatGUI/Init.luau
    end,

    ["Game-specific/NebulaHub/Init.luau"] = function()
        -- ✅ LINK: https://raw.githubusercontent.com/JustSomeGuest/Scripts/main/Game-specific/NebulaHub/Init.luau
    end
}

-- 🔧 FUNGSI PANGGIL
local function GetScript(Path)
    return SkripTersimpan[Path] and SkripTersimpan[Path]() or error("File tidak ada")
end

-- 📌 DAFTAR FITUR
pcall(GetScript, "Universal/PlayerCTRL.luau")
local Scripts = {
    Lucid = "Universal/Lucid/Init.luau",
    PolariaRM = "Universal/PolariaRM/Init.luau",
    WallyWest = "Universal/WallyWest/Init.luau",
    Shiftlock = "Universal/Shiftlock/Init.luau",
    DeltaKD = "Universal/DeltaKD.luau",
    SoundDock = "Universal/SoundDock.luau",
    CombatGUI = "Game-specific/CombatGUI/Init.luau",
    NebulaHub = "Game-specific/NebulaHub/Init.luau"
}

for Name, Path in pairs(Scripts) do Init[Name] = function() return GetScript(Path) end end
return Init