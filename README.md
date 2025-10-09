# Islamy App

Islamy App is a modern Flutter application designed to help users with daily Islamic practices. It features Quran reading, Hadith collections, prayer times, Sebha, Quran radio, and a beautiful onboarding experience. The app is a great example for learning Flutter and building Islamic-themed mobile solutions.

## Demo

You can watch a demo of the Islamy App in action here:

[![Islamy App Demo](https://img.youtube.com/vi/VIDEO_ID/0.jpg)](https://www.youtube.com/watch?v=VIDEO_ID)

Replace `VIDEO_ID` with your actual YouTube video ID or link. If you have a local video or another platform, you can update the link accordingly.

## Features

- **Onboarding:** Welcomes users and introduces app features with attractive visuals.
- **Quran:** Browse and read all 114 surahs, search by name (Arabic/English), and view most recent surahs.
- **Hadith:** View a curated list of Hadiths, each presented in a card format with carousel navigation.
- **Prayer Times:** Displays daily prayer times fetched from an online API, with Hijri and Gregorian dates.
- **Sebha:** Interactive digital tasbeeh counter with multiple phrases and animated visuals.
- **Quran Radio:** Listen to live Quran radio and browse a list of reciters.
- **Multi-page Navigation:** Bottom navigation bar for easy access to all main sections.

## App Flow & Main Screens

1. **Onboarding:** Series of screens explaining the app’s purpose and features.
2. **Home:** Central hub with navigation to Quran, Hadith, Sebha, Radio, and Prayer Times tabs.
3. **Quran Tab:** Search, browse, and read surahs; view most recent surahs.
4. **Hadith Tab:** Carousel of Hadith cards for easy browsing.
5. **Sebha Tab:** Tap to count tasbeeh, with phrase cycling and animation.
6. **Radio Tab:** Switch between live Quran radio and reciters list.
7. **Prayer Times Tab:** View today’s prayer schedule, Hijri/Gregorian dates, and carousel of times.

## Asset & Data Usage

- **Images:** Used for backgrounds, icons, onboarding, and UI elements (`assets/images/`).
- **Text Files:** Quran and Hadith data stored in text files (`assets/files/`).

## API Integration

- **Prayer Times:** Uses [Aladhan API](https://aladhan.com/prayer-times-api) to fetch daily timings by city.
- **Quran Radio & Reciters:** Uses [MP3Quran API](https://mp3quran.net/api/) for radio and reciter data.

## Folder Structure

- `lib/` - Main Dart code
	- `main.dart` - App entry point
	- `UI/` - Screens and widgets
	- `model/` - Data models (Hadith, Azkar, Radio)
	- `provider/` - State management (Provider)
	- `Utils/` - Utility classes, styles, assets, colors
	- `api/` - API manager and response models
- `assets/` - Images, fonts, and text files
- `android/` & `ios/` - Platform-specific code
- `test/` - Widget and unit tests

## Customization & Extending

- Add new features by creating screens in `lib/UI/` and updating navigation.
- Update assets by adding new images or fonts to the `assets/` folder and referencing them in `pubspec.yaml`.


## Troubleshooting

- **Build Issues:** Ensure all dependencies are installed with `flutter pub get`.
- **Asset Errors:** Check that all assets are listed in `pubspec.yaml` and paths are correct.
- **Overflow Errors:** Use `SingleChildScrollView` or `Flexible` widgets to resolve UI overflow.
- **Multidex Error (Android):** Enable multidex in `android/app/build.gradle` if method count exceeds 64K.

## Dependencies

See `pubspec.yaml` for a full list of dependencies, including:
- `carousel_slider` for carousels
- `provider` for state management
- `introduction_screen` for onboarding
- `http` for API calls
- `just_audio` for radio playback
- `shared_preferences` for local storage

## Getting Started

To run this project locally:
1. Make sure you have [Flutter](https://flutter.dev/docs/get-started/install) installed.
2. Clone this repository.
3. Run `flutter pub get` to install dependencies.
4. Connect your device or start an emulator.
5. Run `flutter run` to launch the app.

