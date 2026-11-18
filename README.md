# 🌤️ Weather App

A Flutter weather application that allows users to search for a city and view its current weather information.

This project was developed as part of my Flutter learning journey, focusing on API integration, asynchronous programming, OOP, state management, and clean code organization.

## 📱 Features

- Search for weather information by city name.
- Fetch weather data from an external Weather API.
- Display current weather conditions.
- Show weather information using custom weather images.
- Handle different UI states, including no weather data and available weather information.

## 🛠️ Technologies & Tools

- **Flutter** – Cross-platform UI development.
- **Dart** – Application programming language.
- **flutter_bloc** – State management using Cubit.
- **HTTP / API Integration** – Communicating with an external weather service.
- **JSON** – Parsing API responses.
- **OOP** – Organizing weather data using Dart classes.
- **Git & GitHub** – Version control and project hosting.

## 🧠 What I Learned

Through building this project, I practiced and strengthened my understanding of:

- Working with REST APIs and HTTP requests.
- Handling asynchronous operations using `async` and `await`.
- Parsing JSON responses into Dart objects.
- Applying Object-Oriented Programming (OOP) through models.
- Managing application state using Cubit.
- Separating application responsibilities into different layers.
- Building reusable Flutter widgets.
- Handling loading, empty, and data display states.
- Using Git and GitHub to track and publish project updates.

## 📂 Project Structure

```text
lib/
├── cubits/
│   └── get_weather_cubit/
│       ├── get_weather_cubit.dart
│       └── get_weather_cubit_states.dart
│
├── models/
│   └── weather_model.dart
│
├── services/
│   └── weather_service.dart
│
├── views/
│   ├── home_view.dart
│   └── search_view.dart
│
├── widgets/
│   ├── no_weather_body.dart
│   └── weather_info_body.dart
│
└── main.dart

assets/
└── images/
```

## ⚙️ Getting Started

### Prerequisites

Make sure you have installed:

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- An Android Emulator or physical device

### Installation

1. Clone the repository:

```bash
git clone https://github.com/MohamedAliRizk-11/weather_app.git
```

2. Navigate to the project directory:

```bash
cd weather_app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## 🔑 API Configuration

This application requires a weather API key.

If your API key is configured inside the project, make sure to use your own key when setting up the application.

Never commit private API keys or other sensitive credentials to a public repository.

## 👨‍💻 Author

**Mohamed Ali Rizk**

- GitHub: [MohamedAliRizk-11](https://github.com/MohamedAliRizk-11)
- LinkedIn: [Mohamed Ali Rizk](https://www.linkedin.com/in/mohamed-ali-b56a23372/)

---

This project represents a practical step in my journey toward becoming a Flutter Developer.
