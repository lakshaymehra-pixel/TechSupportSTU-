# Salary Topup – iOS App

A Flutter-based iOS application for instant salary advance and personal loan services, built in compliance with Apple App Store guidelines and RBI regulations.

## About

Salary Topup provides a seamless loan application experience for salaried individuals. Users can apply for salary advances, track loan status, and make repayments — all from their iPhone.

## Features

- Instant salary advance & personal loan application
- KYC verification with document upload
- Real-time loan status tracking
- Secure payment integration via Razorpay
- Push notifications via Firebase
- Location-based address verification
- In-app repayment flow
- Referral & rewards system

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Flutter (Dart) |
| State Management | GetX |
| Networking | Dio |
| Payments | Razorpay |
| Notifications | Firebase Messaging |
| Local Notifications | flutter_local_notifications |
| Location | Geolocator |
| Storage | Shared Preferences |
| Analytics | AppsFlyer, Facebook App Events |
| UI | Cupertino Icons, Lottie, Syncfusion Gauges |

## iOS Requirements

- iOS 15.0 or higher
- Xcode 15+
- Flutter 3.x (stable)
- CocoaPods

## Permissions Used

| Permission | Purpose |
|-----------|---------|
| Camera | KYC document capture |
| Photo Library | Document upload |
| Location | Address verification (RBI compliance) |
| Face ID | Secure login |
| Microphone | Video KYC |
| Push Notifications | Loan updates & alerts |

## Getting Started

```bash
# Install dependencies
flutter pub get

# iOS setup
cd ios && pod install && cd ..

# Run on iOS simulator
flutter run
```

## Build (iOS Release)

iOS builds are handled via **Codemagic CI/CD**. Push to `main` branch triggers an automatic build and submits to TestFlight.

## Privacy & Compliance

- Apple Privacy Manifest (`PrivacyInfo.xcprivacy`) included
- No non-exempt encryption used
- Compliant with Apple App Store Review Guidelines
- RBI guidelines followed for loan data handling

## Contact

**Salary Topup**
Email: social.marketing@salarytopup.com
