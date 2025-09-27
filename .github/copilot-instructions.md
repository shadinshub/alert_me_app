# Copilot Instructions for AI Agents

## Project Overview
- This is a Flutter mobile app (`alert_me_app`) targeting Android, iOS, and web platforms.
- Main code is in `lib/`, with screens in `lib/screens/` (e.g., `home.dart`, `alerts.dart`, `profile.dart`).
- Assets (icons, logo) are in `assets/` and referenced in UI code.
- Android and iOS platform code is in `android/` and `ios/` respectively. Web entry is in `web/`.

## Architecture & Patterns
- Navigation is screen-based; each screen is a separate Dart file in `lib/screens/`.
- App entry point is `lib/main.dart`.
- Asset usage follows Flutter conventions: reference via `pubspec.yaml` and use `Image.asset()` in code.
- No custom state management detected; use standard Flutter `setState` unless otherwise found.
- Platform-specific code (Android/iOS) is managed via respective folders; avoid direct edits unless integrating native features.

## Developer Workflows
- **Build:** Use `flutter build <platform>` (e.g., `flutter build apk`, `flutter build ios`, `flutter build web`).
- **Run:** Use `flutter run` for local development.
- **Test:** Run `flutter test` to execute tests in `test/` (e.g., `widget_test.dart`).
- **Debug:** Use Flutter DevTools or IDE debugging tools; breakpoints and hot reload are supported.
- **Assets:** Add new assets to `assets/`, then declare in `pubspec.yaml` under `flutter/assets`.

## Conventions & Integration
- Screen files are named after their function (e.g., `alerts.dart`, `profile.dart`).
- Use descriptive asset names and keep them organized by type (icons, logo).
- External dependencies are managed via `pubspec.yaml`; run `flutter pub get` after changes.
- For platform-specific assets (e.g., launch images), follow instructions in `ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md`.

## Key Files & Directories
- `lib/main.dart`: App entry point.
- `lib/screens/`: Main UI screens.
- `assets/`: App images and icons.
- `pubspec.yaml`: Dependency and asset declarations.
- `test/`: Widget and unit tests.
- `android/`, `ios/`, `web/`: Platform-specific code and configuration.

## Example Patterns
- To add a new screen: create `lib/screens/new_screen.dart`, add to navigation in `main.dart`.
- To add an asset: place in `assets/`, declare in `pubspec.yaml`, use in code via `Image.asset('assets/icons/home.png')`.

---

If any conventions or workflows are unclear, please request clarification or examples from the user.
