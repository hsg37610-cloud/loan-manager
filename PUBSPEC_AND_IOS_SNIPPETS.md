# pubspec.yaml — add under `dependencies:`

Run this (lets pub pick the current versions):

    flutter pub add crypto flutter_secure_storage local_auth \
      flutter_local_notifications timezone \
      google_sign_in googleapis http

The code is written against these major versions or newer:

    flutter_local_notifications  >= 20   (named parameters: initialize(settings:), zonedSchedule(id:, ...), cancel(id:))
    local_auth                   >= 3    (authenticate(biometricOnly:, persistAcrossBackgrounding:))
    google_sign_in               >= 7    (GoogleSignIn.instance + authorizationClient)
    flutter_secure_storage       any recent
    googleapis, http, crypto, timezone

`shamsi_date`, `intl`, `path`, `path_provider` are already in your pubspec.

# ios/Runner/Info.plist — add inside the top-level <dict> (Face ID)

    <key>NSFaceIDUsageDescription</key>
    <string>برای باز کردن قفل برنامه از Face ID استفاده می‌شود.</string>

(Google Sign-In on iOS additionally needs the CLIENT_ID / reversed-client-ID URL scheme — not covered here, Android only.)
