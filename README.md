

# Islamy App

Islamy App is a comprehensive Flutter application designed to assist users with daily Islamic practices. It features prayer times, Quran reading, Hadith collections, and a beautiful, modern UI. The app is ideal for learning Flutter and for building Islamic-themed mobile solutions.

## Features

- **Prayer Times:** Displays daily prayer times based on location or preset data.
- **Quran Section:** Browse and read Quran surahs, with navigation and custom fonts for readability.
- **Hadith Section:** View a curated list of Hadiths, each presented in a card format.
- **Onboarding Screens:** Introduces users to the app’s features with attractive visuals.
- **Custom Themes:** Light and dark mode support for comfortable reading.
- **Multi-page Navigation:** Bottom navigation bar for easy access to all main sections.
- **Beautiful UI:** Uses custom images, backgrounds, and fonts for a unique look.
- **Localization Ready:** Easily adaptable for multiple languages.
- **Notifications:** (Optional) Reminders for prayer times and other events.

## App Flow & Main Screens

1. **Onboarding:** Users are greeted with a series of screens explaining the app’s purpose and features.
2. **Home:** Central hub with quick access to prayer times, Quran, Hadith, and other features.
3. **Prayer Times Tab:** Shows today’s prayer schedule, with carousel and highlight features.
4. **Quran Tab:** Allows users to browse surahs, read verses, and navigate easily.
5. **Hadith Tab:** Displays a list of Hadiths, each in a visually appealing card.
6. **Settings:** (If implemented) Change theme, language, and notification preferences.

## Asset Usage

- **Images:** Used for backgrounds, icons, and onboarding illustrations (see `assets/images/`).
- **Fonts:** Custom fonts for Arabic and English text (see `assets/Fonts/`).
- **Text Files:** Quran and Hadith data stored in text files (see `assets/files/`).

## Folder Structure

- `lib/` - Main Dart code
	- `main.dart` - App entry point
	- `UI/` - Screens and widgets
	- `model/` - Data models
	- `provider/` - State management
	- `Utils/` - Utility classes and constants
- `assets/` - Images, fonts, and text files
- `android/` & `ios/` - Platform-specific code
- `test/` - Widget and unit tests

## Customization & Extending

- Add new features by creating screens in `lib/UI/` and updating navigation.
- Update assets by adding new images or fonts to the `assets/` folder and referencing them in `pubspec.yaml`.
- Localize the app by adding language files and updating text widgets.
- Integrate notifications using packages like `flutter_local_notifications`.

## Troubleshooting

- **Build Issues:** Ensure all dependencies are installed with `flutter pub get`.
- **Asset Errors:** Check that all assets are listed in `pubspec.yaml` and paths are correct.
- **Overflow Errors:** Use `SingleChildScrollView` or `Flexible` widgets to resolve UI overflow.
- **Multidex Error (Android):** Enable multidex in `android/app/build.gradle` if method count exceeds 64K.

## Dependencies

See `pubspec.yaml` for a full list of dependencies, including:
- `carousel_slider` for carousels
- `provider` for state management
- `flutter_local_notifications` (if notifications are used)

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## License

This project is open source and available under the MIT License.
