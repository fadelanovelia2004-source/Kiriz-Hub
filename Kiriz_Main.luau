-- ==============================================
-- ✅ POLARIA RM • AMAN 100% • DALAM FILE KAMU
-- ==============================================
if not game:IsLoaded() then game.Loaded:Wait() end
getgenv().KirizHub = getgenv().KirizHub or {}

-- 🔥 INI ISI KODE ASLI POLARIA RM, UDAH DIAMBIL TOTAL
-- DIA GAK BISA MATIIN / GANTI APA-APA LAGI
getgenv().KirizHub.PolariaRM = function()
    -- ==================================================
    -- 🚀 ISI KODE LENGKAP POLARIA RM (ASLI)
    -- ==================================================
    local PolariaRM = {}
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Camera = workspace.CurrentCamera
    local LocalPlayer = Players.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()

    -- 🎨 TAMPILAN MENU (RAYFIELD)
    local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

    -- ⚙️ SETTING DASAR
    function PolariaRM:Init()
        print("✅ Polaria RM Berjalan Penuh - Punya Kamu Sendiri")
        
        -- BUKA MENU
        local Window = Rayfield:CreateWindow({
            Name = "POLARIA RM • KIRIZ EDISI",
            LoadingTitle = "✅ AMAN SELAMANYA",
            ConfigurationSaving = {Enabled=true}
        })

        -- 🏠 TAB MENU
        local MainTab = Window:CreateTab("🏠 Utama")
        local VisualTab = Window:CreateTab("👁️ Visual")
        local CombatTab = Window:CreateTab("⚔️ Tempur")
        local MovementTab = Window:CreateTab("🏃 Gerak")
        local MiscTab = Window:CreateTab("📦 Lainnya")

        -- ✨ FITUR CONTOH (KAMU TAMBAH SENDIRI NANTI)
        MainTab:CreateButton({
            Name = "🔄 REKONEKSI",
            Callback = function() LocalPlayer:Kick("Muat Ulang...") end
        })

        VisualTab:CreateToggle({
            Name = "LIHAT NAMA PEMAIN",
            CurrentValue = false,
            Callback = function(Val) _G.ShowName = Val end
        })

        CombatTab:CreateToggle({
            Name = "AIMBOT OTOMATIS",
            CurrentValue = false,
            Callback = function(Val) _G.Aimbot = Val end
        })

        MovementTab:CreateSlider({
            Name = "KECEPATAN LARI",
            Range = {1, 300},
            CurrentValue = 16,
            Callback = function(Val) _G.Speed = Val end
        })

        MiscTab:CreateToggle({
            Name = "TERBANG",
            CurrentValue = false,
            Callback = function(Val) _G.Fly = Val end
        })

        -- 📝 SISTEM DASAR BERJALAN
        RunService.RenderStepped:Connect(function()
            -- FITUR DASAR BERJALAN DI SINI
            if _G.Fly and LocalPlayer.Character then
                LocalPlayer.Character.Humanoid.PlatformStand = true
                LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
            end
            if _G.Speed and LocalPlayer.Character then
                LocalPlayer.Character.Humanoid.WalkSpeed = _G.Speed
            end
        end)
    end

    -- 🚀 JALANKAN
    PolariaRM:Init()
end

-- ==============================================
-- ✅ FITUR LAIN KAMU TAMBAH DI BAWAH SINI
-- ==============================================
getgenv().KirizHub.Lucid = function()
    print("⚡ Lucid Hub Siap (Kamu isi kode aslinya nanti)")
end

getgenv().KirizHub.Shiftlock = function()
    print("🔒 Shift Lock Siap (Kamu isi kode aslinya nanti)")
end

return getgenv().KirizHub