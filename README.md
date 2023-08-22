# Binding Jetpack Compose (Android) and SwiftUI (iOS and MacOS) views in Flutter

A sample Flutter project using Jetpack Compose and SwiftUI native views

## What is this?

Flutter offers a wide range of customizable widgets and rich design capabilities, allowing you to create complex and visually appealing user interfaces. Custom widgets can be built using the same tools and techniques as standard ones.

Flutter also provides access to native device features and APIs through platform channels, allowing you to integrate platform-specific functionality seamlessly into your app. 

Flutter **on Android easily integrates with the default Android [View](https://developer.android.com/reference/android/view/View)** classes through [platform views](https://docs.flutter.dev/platform-integration/android/platform-views?tab=android-platform-views-java-tab).

The same is true **on iOS (and MacOS). Integrating with [UIKit](https://docs.flutter.dev/platform-integration/ios/platform-views) is straightforward too**.

### But

Nowadays new UI frameworks are on the rise. 

"[Jetpack Compose](https://developer.android.com/jetpack/compose) is Android’s recommended modern toolkit for building native UI. It simplifies and accelerates UI development on Android. Quickly bring your app to life with less code, powerful tools, and intuitive Kotlin APIs."

"[SwiftUI](https://developer.apple.com/xcode/swiftui/) helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs."

Using these new frameworks on native platforms is effortless and well-documented.

It is possible to combine them with the "old" UI elements and you can find documentations about them.

However, if you start with Flutter and you have less native development experience, finding the correct information could be a bit tricky.

**This project aims to help with this, showcasing the basic UI binding technique on Android with Jetpack Compose; and on iOS and macOS with SwiftUI.**

*IN PROGRESS:* currently the code has documentation and links to relevant websites, but you can expect a write-up about the topic soon.

## How to start?

This is a generic Flutter project with support for iOS, Android, and macOS.

Please follow the official Getting Started guide below.

**TLDR;**

1. [Download](https://docs.flutter.dev/get-started/install) the Flutter 
2. Checkout this project
3. Open the root folder of this project in [Android Studio](https://developer.android.com/studio)
4. Compile and run the project for specific targets

### Flutter Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
