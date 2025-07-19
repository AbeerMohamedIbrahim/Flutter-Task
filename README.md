## 📱 What Was Used

### ✅ **Widgets and Features Used**

#### `main.dart`
- Initializes the app using `MaterialApp`
- Sets the initial route to the `LoginPage`

#### `Login.dart` - Login Page

- `Scaffold`: Base layout structure
- `Column`: For vertical layout of UI components
- `TextField`: For username and password input
- `ElevatedButton`: For login action
- `TextButton`: For navigation to SignUp screen and "Forgot password?"
- `Navigator.push`: Used for navigation to the Sign Up screen

#### `SignUp.dart` - Sign Up Page

- `Scaffold` + `SingleChildScrollView`: To allow scrolling if the content overflows
- `TextField`: For input fields (username, email, password, confirm password)
- `ElevatedButton`: For Sign Up and "Sign in with Google" buttons
- `Navigator.push`: Used for navigating back to the Login screen
- `Icons`: Used for input decoration like person, email, and lock icons

---

## 🎨 UI Design

- **Colors**:
  - Used `Colors.purple` as the main theme color for buttons and text
- **Spacing**:
  - `SizedBox` for vertical spacing between widgets
- **Typography**:
  - `Text` widgets with custom `fontSize` and `fontWeight`

---

## 🧭 Navigation

- Navigation between `LoginPage` and `SignUpScreen` is handled using:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SignUpScreen(title: 'Sign Up')),
);
```

