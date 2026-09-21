# 🎓 StudentConnect

<p align="center">
  <strong>A beginner-friendly Flutter application demonstrating Firebase Authentication.</strong>
</p>

<p align="center">
  Built with Flutter 💙 • Dart 🎯 • Firebase 🔥
</p>

---

## 📖 About the Project

**StudentConnect** is a Flutter application created as part of my Mobile Development learning journey.

The project focuses on learning how a Flutter application can communicate with an external service using **Firebase Authentication**.

The goal of StudentConnect is to allow users to create an account, sign in securely, access an authenticated home screen, and sign out.

This project is being developed incrementally so that each stage of the application can be clearly seen through the Git commit history.

---

## 🎯 Project Purpose

StudentConnect was created to practise and demonstrate:

- Flutter application development
- Dart programming
- Firebase project configuration
- Firebase Authentication
- Email and password authentication
- User registration
- User login
- User logout
- Authentication state management
- Form validation
- Navigation between Flutter screens
- Testing Flutter applications
- Git and GitHub version control

---

## 🧭 Learning Track

This project forms part of my **Mobile Development learning track**.

The learning track includes two foundational areas:

### Track 1 — Flutter & Dart

The first track focuses on the fundamentals of Flutter and Dart.

My project for this track is:

**Student Expense Tracker**

It demonstrates Flutter widgets, state management, expense management, budgeting, filtering, local persistence, testing, and responsive UI development.

### Track 2 — Firebase Authentication

StudentConnect is my project for the second track.

The purpose of this project is to demonstrate how Firebase services can be integrated into a Flutter application, with a particular focus on authentication.

---

## ✨ Planned Features

| Feature | Description | Status |
|---|---|---|
| Flutter project setup | Base Flutter application | ✅ Complete |
| Firebase dependencies | Firebase Core and Firebase Authentication packages | ✅ Complete |
| Firebase configuration | Connect Flutter Web application to Firebase | ✅ Complete |
| Firebase initialization | Initialize Firebase when the application starts | 🚧 In Progress |
| Login screen | Allow existing users to enter their credentials | ✅ Complete |
| Registration screen | Allow new users to create an account | ✅ Complete |
| Email/password authentication | Authenticate users through Firebase | ⏳ Planned |
| Authentication state handling | Display the correct screen based on login state | ⏳ Planned |
| Home screen | Authenticated area of the application | ⏳ Planned |
| Logout | Allow authenticated users to sign out | ⏳ Planned |
| Form validation | Validate email addresses and passwords | ⏳ Planned |
| Automated tests | Test important application behaviour | 🚧 In Progress |
| Screenshots | Provide visual project evidence | ⏳ Planned |

---

## 🔥 Firebase Integration

StudentConnect uses **Firebase** as its backend authentication service.

The Flutter application is connected to the Firebase project:

```text
StudentConnect
```

Firebase Project ID:

```text
studentconnect-lumko
```

The project is currently configured for:

```text
Web
```

FlutterFire generated the Firebase configuration used by the application:

```text
lib/firebase_options.dart
```

Firebase is initialized when the Flutter application starts.

Example:

```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}
```

This ensures that Firebase is ready before the rest of the application starts.

---

## 🔐 Authentication Flow

The intended authentication flow for StudentConnect is:

```text
                StudentConnect
                      │
                      ▼
               App Starts
                      │
                      ▼
             Firebase Initializes
                      │
                      ▼
             Check Authentication
                      │
             ┌────────┴────────┐
             │                 │
             ▼                 ▼
        Not Logged In       Logged In
             │                 │
             ▼                 ▼
         Login Screen       Home Screen
             │                 │
       ┌─────┴─────┐           │
       │           │           │
       ▼           ▼           ▼
     Login      Register      Logout
       │           │           │
       └─────┬─────┘           │
             │                 │
             ▼                 │
      Firebase Authentication  │
             │                 │
             └────────┬────────┘
                      ▼
                Authentication
                    State
```

Firebase Authentication will determine whether the user should see the authentication screens or the authenticated section of the application.

---

## 🏗️ Project Architecture

StudentConnect is being built using a simple beginner-friendly structure.

As the application develops, the project will separate responsibilities into areas such as:

```text
lib/
│
├── main.dart
├── firebase_options.dart
│
├── screens/
│   ├── login_screen.dart
│   ├── register_screen.dart
│   └── home_screen.dart
│
├── services/
│   └── auth_service.dart
│
└── widgets/
    └── reusable UI components
```

### `main.dart`

The entry point of the Flutter application.

It is responsible for starting Flutter and initializing Firebase.

### `firebase_options.dart`

Generated automatically by FlutterFire.

It contains the Firebase configuration required by the Flutter application.

### `screens/`

Contains the different pages displayed to the user.

These will include the login, registration, and authenticated home screens.

### `services/`

Contains application logic that communicates with external services.

The authentication service will communicate with Firebase Authentication.

### `widgets/`

Contains reusable Flutter UI components.

This helps avoid repeating the same interface code across multiple screens.

> The structure above represents the intended application structure and will grow as features are implemented.

---

## 🛠️ Built With

StudentConnect uses:

- **Flutter** — UI framework
- **Dart** — programming language
- **Firebase Core** — Firebase initialization
- **Firebase Authentication** — user authentication
- **FlutterFire CLI** — Firebase configuration for Flutter
- **Git** — version control
- **GitHub** — source code repository

---

## 📦 Main Dependencies

The application uses Firebase packages including:

```yaml
dependencies:
  flutter:
    sdk: flutter

  firebase_core:
  firebase_auth:
```

The exact dependency versions are managed in `pubspec.yaml` and `pubspec.lock`.

---

## 💻 Development Environment

The project is currently developed using:

```text
Flutter 3.47.0
Dart 3.13.0
Firebase CLI 15.30.2
FlutterFire CLI 1.4.1
```

Development is performed using **WSL2 Ubuntu** on a Windows environment.

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone git@github-lumko02:Lumko02/StudentConnect.git
```

Move into the project:

```bash
cd StudentConnect
```

---

### 2. Check Flutter

Make sure Flutter is installed:

```bash
flutter --version
```

The project currently requires Dart:

```text
^3.13.0
```

Using an older Dart SDK may cause dependency resolution to fail.

---

### 3. Install Dependencies

Run:

```bash
flutter pub get
```

---

### 4. Check Available Devices

```bash
flutter devices
```

---

## 🌐 Running StudentConnect on Web

When developing through WSL, the application can be started using Flutter's web server:

```bash
flutter run -d web-server --web-hostname 0.0.0.0 --web-port 8080
```

The application can then be opened from the host computer's browser using:

```text
http://localhost:8080
```

Stop the development server using:

```text
Ctrl + C
```

---

## 🔥 Firebase Setup

The project was connected to Firebase using the Firebase CLI and FlutterFire CLI.

### Check Firebase CLI

```bash
firebase --version
```

### Login to Firebase

```bash
firebase login
```

### View Available Firebase Projects

```bash
firebase projects:list
```

### Configure FlutterFire

The web configuration was generated using:

```bash
flutterfire configure --project=studentconnect-lumko --platforms=web
```

This generates:

```text
lib/firebase_options.dart
```

> Developers using their own Firebase project should configure Firebase appropriately for their environment.

---

## 🧪 Testing

StudentConnect uses Flutter's testing tools.

Run all tests with:

```bash
flutter test
```

Current test result:

```text
All tests passed!
```

The project currently has:

```text
1 passing test
```

Additional authentication tests will be added as the project grows.

---

## 🔍 Code Analysis

Flutter's static analyzer is used to identify potential problems in the code.

Run:

```bash
flutter analyze
```

Current result:

```text
No issues found!
```

---

## 📱 Screenshots

Application screenshots will be added as the user interface is completed.

Planned evidence will include:

- Login screen
- Registration screen
- Successful authentication
- Authenticated home screen
- Logout flow

Screenshots will be stored inside:

```text
screenshots/
```

---

## 🧾 Project Evidence

This repository is being maintained as evidence of my Firebase Authentication and Flutter learning.

The completed repository will contain:

- ✅ Flutter and Dart source code
- ✅ Individual Git commit history
- ✅ Firebase project configuration
- 🚧 Firebase Authentication implementation
- 🚧 Automated tests
- ⏳ Login screen screenshot
- ⏳ Registration screen screenshot
- ⏳ Authenticated home screen screenshot
- ✅ Project documentation

The repository is intentionally developed through multiple commits rather than uploading the entire application in a single commit.

This provides a clear record of how the project developed over time.

---

## 🗂️ Current Git Development History

The project is being developed incrementally.

Current major milestones include:

```text
chore: create StudentConnect Flutter project

chore: add Firebase authentication dependencies

chore: configure and initialize Firebase
```

Future milestones will include:

```text
feat: create login screen

feat: create registration screen

feat: add Firebase email authentication

feat: add logout functionality

test: add authentication UI tests

docs: add project screenshots and README
```

---

## 🗺️ Development Roadmap

### Phase 1 — Project Setup

- [x] Create Flutter project
- [x] Initialize Git repository
- [x] Create GitHub repository
- [x] Add Firebase dependencies

### Phase 2 — Firebase

- [x] Create Firebase project
- [x] Connect FlutterFire
- [x] Generate Firebase options
- [ ] Confirm Firebase initialization in the running web application
- [ ] Enable Email/Password Authentication

### Phase 3 — Authentication UI

- [x] Build login screen
- [x] Build registration screen
- [ ] Add form validation

### Phase 4 — Authentication Logic

- [ ] Register users using Firebase
- [ ] Login users using Firebase
- [ ] Handle authentication errors
- [ ] Monitor authentication state
- [ ] Implement logout

### Phase 5 — Authenticated Application

- [ ] Create home screen
- [ ] Display authenticated user information
- [ ] Protect authenticated content

### Phase 6 — Testing & Evidence

- [ ] Add authentication tests
- [ ] Run complete test suite
- [ ] Run Flutter analyzer
- [ ] Capture application screenshots
- [ ] Complete final documentation

---

## 🧠 What I Am Learning

Through StudentConnect, I am learning how to move beyond standalone Flutter applications and connect an application to an external backend service.

The project gives me practical experience with:

- Setting up Firebase
- Connecting Firebase and Flutter
- Understanding authentication
- Managing authenticated users
- Working with asynchronous Dart code
- Handling application state
- Building forms
- Validating user input
- Separating UI from application logic
- Testing Flutter applications
- Debugging development environments
- Working with Flutter across Windows and WSL
- Maintaining meaningful Git commit history

One of the biggest lessons from this project is understanding that building an application involves more than writing UI code. Configuration, dependencies, development environments, authentication services, testing, and version control all work together to create the final application.

---

## ⚠️ Current Limitations

StudentConnect is currently under development.

At this stage:

- Firebase has been configured for Web.
- Android Firebase configuration has not yet been added.
- Authentication screens are still being developed.
- Email/password authentication is not yet complete.
- The authenticated home screen is not yet complete.
- Screenshots will be added once the UI is ready.

These limitations will be addressed as development continues.

---

## 🌱 Future Improvements

After the core authentication requirements are complete, possible future improvements include:

- Password reset
- Email verification
- User profile information
- Profile pictures
- Improved authentication error messages
- Loading indicators
- Responsive layouts
- Dark mode
- Android Firebase configuration
- Additional automated tests

The priority is to complete the core authentication flow before adding extra functionality.

---

## 👩🏽‍💻 Author

**Lumko Saneliso Majozi**

Software Engineering Student  
Flutter & Dart Learner  
Exploring Firebase and Mobile Development

GitHub: **Lumko02**

---

## 📌 Project Status

🚧 **StudentConnect is currently in development.**

The Firebase project and FlutterFire configuration are complete, and the next development stage focuses on building the authentication interface and connecting it to Firebase Authentication.

---

<p align="center">
  Made with 💙 using Flutter, Dart & Firebase 🔥
</p>