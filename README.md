# IRON Gym Tracker — проект для Antigravity и Android Studio

Минималистичное оффлайн-приложение для Samsung Galaxy S24 Ultra с вашей программой Full Body (День А / День Б), живым трекером подходов, разминочными подходами (`Р`), подсказками прошлой тренировки (`прошл:`), личными рекордами (PR и 1ПМ), календарём, картой мышц и учётом веса/роста/возраста.

## Работа в Antigravity
1. Распакуйте архив в папку без кириллицы (например, `C:\Projects\IronGymTracker_Android`).
2. Откройте эту папку в **Antigravity**.
3. В корне уже лежат `AGENTS.md` (контекст архитектуры для ИИ-агента Antigravity) и `.vscode/tasks.json` (готовые задачи сборки и установки по ADB).
4. Весь интерфейс и логика находятся в одном оффлайн-файле `app/src/main/assets/index.html` — его можно править прямо в Antigravity и сразу проверять в браузере.

## Сборка APK (Android Studio или терминал)
- **В Android Studio:** откройте папку → дождитесь Gradle Sync → **Build → Build Bundle(s) / APK(s) → Build APK(s)**.
- **Через терминал (если установлен Gradle / Android SDK):**
  ```bash
  gradle assembleDebug
  adb install -r app/build/outputs/apk/debug/app-debug.apk
  ```
- Готовый файл: `app/build/outputs/apk/debug/app-debug.apk`.
