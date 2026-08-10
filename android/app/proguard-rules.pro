# Keep SmartAuth & Credentials API classes
-keep class com.google.android.gms.auth.api.credentials.** { *; }
-dontwarn com.google.android.gms.auth.api.credentials.**

# Keep Proguard annotations
-keep @interface proguard.annotation.Keep
-keep @interface proguard.annotation.KeepClassMembers
# Ignore missing proguard.annotation classes from Razorpay
-dontwarn proguard.annotation.Keep
-dontwarn proguard.annotation.KeepClassMembers
# Keep Razorpay classes to prevent runtime crashes
-keep class com.razorpay.** { *; }
-dontwarn com.razorpay.**
-keep class com.google.android.gms.location.** { *; }
-dontwarn com.google.android.gms.location.**
-keep class com.google.android.gms.common.internal.** { *; }
-dontwarn com.google.android.gms.common.internal.**

# ---------------------------------------------------------------------------
# Rules below added when minifyEnabled was turned on for the release build.
# These SDKs resolve classes reflectively, so R8 cannot see the usage and
# would otherwise strip them, causing runtime crashes rather than build errors.
# ---------------------------------------------------------------------------

# Flutter embedding + plugin registration
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-dontwarn io.flutter.embedding.**

# Firebase (core / messaging / crashlytics) — model classes are reflected on
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**
# Keep line numbers so Crashlytics stack traces stay readable after minifying
-keepattributes SourceFile,LineNumberTable
-keepattributes *Annotation*
-keepattributes Signature,InnerClasses,EnclosingMethod

# AppsFlyer + Play install referrer
-keep class com.appsflyer.** { *; }
-dontwarn com.appsflyer.**
-keep class com.android.installreferrer.** { *; }
-dontwarn com.android.installreferrer.**

# Facebook / Meta SDK (facebook_app_events, flutter_meta_sdk)
-keep class com.facebook.** { *; }
-dontwarn com.facebook.**

# Syncfusion gauges
-keep class com.syncfusion.** { *; }
-dontwarn com.syncfusion.**

# WebView JavaScript interfaces are called from JS by name
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# Annotation-driven keep markers used by several SDKs
-keep @androidx.annotation.Keep class * { *; }
-keepclassmembers class * {
    @androidx.annotation.Keep *;
}

