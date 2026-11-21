# IRON Gym Tracker — проект Android Studio (Samsung S24 Ultra)

Готовый Android-проект на Kotlin + WebView с вашим минималистичным трекером тренировок внутри (`app/src/main/assets/index.html`).

## Как собрать APK (3 шага)

1. Распакуйте этот архив и откройте папку `IronGymTracker_Android` в **Android Studio**.
2. Дождитесь завершения **Gradle Sync** (1–2 минуты при первом запуске).
3. В верхнем меню нажмите **Build → Build Bundle(s) / APK(s) → Build APK(s)**.

Готовый файл появится по пути:
`app/build/outputs/apk/debug/app-debug.apk`

Перекиньте `app-debug.apk` на Samsung Galaxy S24 Ultra и установите как обычное приложение.

## Особенности сборки
- **Постоянное локальное хранилище:** используется `WebViewAssetLoader` (`https://appassets.androidplatform.net/`), поэтому `localStorage` надёжно сохраняется между перезапусками приложения.
- **Нативный экспорт и импорт JSON:** кнопки резервного копирования в разделе «План → Параметры тела» работают через системный файловый менеджер Android.
- **AMOLED-тема:** чёрные системные панели статуса и навигации, защита от случайного закрытия кнопкой «Назад».
