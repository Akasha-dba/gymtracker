# Keep WebView JS bridge if added
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
