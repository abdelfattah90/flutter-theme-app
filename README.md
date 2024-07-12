# Theme App

## Description

The **Theme App** is a mobile application built using Flutter that allows users to switch between multiple themes and manage their preferences efficiently. The app features multiple themes, local storage for theme preferences, route navigation, and reusable components like `AppBar` and `Card`. The app is designed to be a starting point for learning Flutter and implementing various Flutter features such as state management with Provider, theming, and navigation.

## Features

- **Multiple Themes**: Users can switch between five different themes: light, dark, orange, purple, and red.
- **Local Storage**: The app saves the selected theme to local storage using `shared_preferences`, allowing the theme to persist between app launches.
- **Route Navigation**: The app includes navigation between different screens (Home and User screens).
- **Reusable Components**: The app is structured with reusable components like `AppBar` and `Card`, making the code modular and easy to maintain.

## Screens

### Home Screen

- Displays a `Card` with content.
- Includes a button to navigate to the User Screen.
- Contains a dropdown to switch between different themes.

### User Screen

- Displays a `Card` with content.
- Shows a welcome message.

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/theme_app.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd theme_app
   ```
3. **Install dependencies**:
   ```bash
   flutter pub get
   ```

### Running the App

1. **Connect a device or start an emulator**.
2. **Run the app**:
   ```bash
   flutter run
   ```

## File Structure

lib/
│
├── main.dart # Entry point of the app
│
├── providers/
│ └── theme_provider.dart # Provider for theme management
│
├── screens/
│ ├── home_screen.dart # Home screen of the app
│ └── user_screen.dart # User screen of the app
│
├── utils/
│ └── theme.dart # Different theme configurations
│
└── widgets/
├── app_bar.dart # Reusable AppBar widget
└── card.dart # Reusable Card widget

## Dependencies

- [provider](https://pub.dev/packages/provider): State management
- [shared_preferences](https://pub.dev/packages/shared_preferences): Local storage

## Contributions

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
