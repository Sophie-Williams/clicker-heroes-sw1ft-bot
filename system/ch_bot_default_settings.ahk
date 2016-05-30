
; -----------------------------------------------------------------------------------------
; -- Mandatory Configuration
; -----------------------------------------------------------------------------------------

; 0: "Power 5" (Treebeast, Ivan, Brittany, Samurai and Forest Seer)
; -1: Samurai
; 1:Dread Knight, 2:Atlas, 3:Terra, 4:Phthalo, 5:Banana, 6:Lilin, 7:Cadmia, 8:Alabaster, 9:Astraea
; 10:Chiron, 11:Moloch, 12:Bomber Max, 13:Gog, 14:Wepwawet
; 15:Betty, 16:Midas (use Wepwawet as the last transitional ranger)
gildedRanger := 0 ; the number of your main gilded ranger

; -- Vision Run ---------------------------------------------------------------------------

useImageSearch := true ; requires browser client in low quality mode
; Test hotkey: Win+F3 - Search & locate tests for all images

; Vision Run
; Ascensions will automatically trigger when things slow down to much
endLvlIdle := 100000
endLvlActive := 0
; idle:   set endLvlActive = 0
; hybrid: set endLvlActive > endLvlIdle
; active: set endLvlIdle = 0

maxMonsterKillTime := 2.5 ; ascend when exceeded

chronos := 0.00 ; +#.## seconds to Boss Fight timers
kumawakamaru := -0.00 ; -#.## monsters required to advance to the next level
vaagur := -0.00 ; -#.##% skill cooldowns

; -- Speed Run ----------------------------------------------------------------------------

; Clicker Heroes Ancients Optimizer @ http://philni.neocities.org/ancientssoul.html
; Use the optimizer to set the time:
speedRunTime := 29 ; minutes

; -- Deep Run -----------------------------------------------------------------------------

deepRunTime := 60 ; minutes

deepRunClicks := true ; click the monster during a Deep Run?

; -----------------------------------------------------------------------------------------
; -- Optional Settings
; -----------------------------------------------------------------------------------------

; -- Speed Run ----------------------------------------------------------------------------

firstStintAdjustment := 0 ; add or remove time (in seconds) to or from the first hero
firstStintButton := 1 ; 1 or 2 (if possible)

hybridMode := false ; chain a Deep Run when the Speed Run finish

; -- Vision Run ---------------------------------------------------------------------------

levelSolomon := false ; feed solomon after ascending?
solomonLevels := 5

; Enabled will start to log zone data after each completed run
useZoneDataLogger := false
zdlStart := 100
zdlInterval := 10

; -- Speed/Vision Run ---------------------------------------------------------------------

autoAscend := false ; Warning! Set to true will both salvage relics and ascend without any user intervention! <Shift+Ctrl+F1>

; Auto Ascend Warning Mode
; The following two settings may replace each other or can both be used.
; Set to 0 to disable completely
autoAscendDelay := 0 ; warning timer (in seconds) before ascending
displayRelicsDuration := 0 ; warning timer (in seconds) before salvaging the junk pile

; If you run the Steam client with autoAscend, you can screenshot every relic you salvage!
screenShotRelics := false

saveBeforeAscending := false ; autosave the game. <Shift+Ctrl+F11>

; If the script don't press the save button automatically when running
; with "saveBeforeAscending" set to true, change "Button1" to "Button2".
saveButtonClassNN := "Button2" ; Button1 or Button2

; If the auto-save fails to change the file name properly and you get
; a "already exists" message, change save mode to 2.
saveMode := 1 ; 1 or 2

; -- Deep/Vision Run ----------------------------------------------------------------------

; Existing clickable image files:
; clickable_bag.png, clickable_cake.png, clickable_candy.png, clickable_cane.png
; clickable_egg.png, clickable_fish.png, clickable_heart.png
clickableImageFiles := ["clickable_fish.png", "clickable_egg.png"] ; fish + "current other clickable"

clickableHuntDelay := 5 ; hunt for a clickable every 5s

; Stop hunt when this many minutes remain of a run.
; Set to 0 when using the Vision Run
stopHuntThreshold := 0
; Odds of getting a clickable for different thresholds:
; 5 - 59.4%, 10 - 83.5%, 15 - 93.3%, 20 - 97.3%, 25 - 98.9%, 30 - 99.55%

; -- Look & Feel --------------------------------------------------------------------------

; true or false
global playNotificationSounds := false ; <Shift+Ctrl+F6>
global playWarningSounds := true ; <Shift+Ctrl+F7>
global showProgressBar := true

; Splash text window width and position
wSplash := 200
xSplash := A_ScreenWidth // 2 - wSplash // 2 ; centered
ySplash := A_ScreenHeight // 2 - 40

; Progress bar width and position
wProgressBar := 325
xProgressBar := 20
yProgressBar := 20

; If you run with a dual/tripple monitor setup, you can move windows
; right or left by adding or subtracting A_ScreenWidth from the x-parameters.

; Left monitor example:
; xSplash := A_ScreenWidth // 2 - wSplash // 2 - A_ScreenWidth
; xProgressBar := 20 - A_ScreenWidth

; -- Skill Combos -------------------------------------------------------------------------

; 1 - Clickstorm, 2 - Powersurge, 3 - Lucky Strikes, 4 - Metal Detector, 5 - Golden Clicks
; 6 - The Dark Ritual, 7 - Super Clicks, 8 - Energize, 9 - Reload

; Test with tools/combo_tester.ahk

cooldown := ceil(600*(1 + vaagur/100))

comboEDR := [cooldown, "2-3-4-5-7-8-6-9", "", "", "", "", "", "8-9-2-3-4-5-7", "2", "2", "2-3-4", "2", "2"]
comboEGolden := [cooldown, "8-5-2-3-4-7-6-9", "2", "2", "2-3-4", "2", "2"]
comboGoldenLuck := [cooldown, "6-2-3-5-8-9", "2-3-4-5-7", "2", "2", "2-3-4", "2", "2"]

comboEarlyGameIdle := [30, "4-5-6-3-7-8-9", "2-3-7", "1"]
comboEarlyGameActive := comboGoldenLuck

skillCombo := comboEarlyGameIdle

; -----------------------------------------------------------------------------------------

reGildRanger := gildedRanger

raidAttempts := 5 ; Requires useImageSearch set to true
