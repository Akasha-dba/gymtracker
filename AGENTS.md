# AGENTS.md — IRON Gym Tracker (Android + Offline WebView)

## Overview
Minimalist AMOLED Android gym tracker designed for Samsung Galaxy S24 Ultra.
- **UI & App Logic:** `app/src/main/assets/index.html` (100% offline single-file HTML/CSS/JS — zero CDN dependencies, built-in SVG icons, built-in SVG charts, interactive SVG front/back muscle intensity map, localStorage persistence).
- **Android Wrapper:** `app/src/main/java/com/irongym/tracker/MainActivity.kt` (Kotlin + `WebViewAssetLoader` serving `https://appassets.androidplatform.net/assets/index.html` for permanent `localStorage`, plus `AndroidBridge.exportBackup` and `onShowFileChooser` for native JSON backup/restore).

## Default Program Context
Pre-loaded with user's 2x/week Full Body program (День А / День Б), anthropometric defaults (height 191 cm, weight 90 kg), warmup set toggle (`Р`), per-set previous-session hints (`прошл:`), and automatic Personal Records (PR & Epley estimated 1RM).

## Common Commands (Antigravity Terminal)
- **Build Debug APK:** `gradle assembleDebug` (or `./gradlew assembleDebug` / `gradlew.bat assembleDebug` once wrapper jar is generated, or open in Android Studio).
- **Output APK path:** `app/build/outputs/apk/debug/app-debug.apk`
- **Install on connected Samsung via USB Debugging:** `adb install -r app/build/outputs/apk/debug/app-debug.apk`

## Editing Guidelines
- Keep `app/src/main/assets/index.html` 100% offline (no external CDN URLs).
- Preserve `localStorage` key `iron_gym_tracker_v1` schema compatibility when adding new fields.
- Never use `alert()` / `confirm()` / `prompt()` — use the built-in `openModal()` and `showToast()` helpers.
