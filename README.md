🔧 Installation Steps for Flutter
Install Flutter SDK
  Visit: https://flutter.dev/docs/get-started/install
  Download the Flutter SDK based on your OS (Windows, macOS, or Linux).
  Set Environment Variables.
  Add the flutter/bin path to your system’s environment variables to access flutter from the terminal.

Install Android Studio (or any IDE)
Install Android Studio and necessary plugins (Flutter, Dart).
Set up an Android emulator or connect a physical device.

Run flutter doctor

Open terminal and run:

  flutter doctor
  This checks for any missing dependencies.

Create Flutter Project

  flutter create todo_list_app
  cd todo_list_app
  Open the project in IDE (e.g., VS Code, Android Studio)

  Replace lib/main.dart with your code.

Run the App

flutter run

🧠 App Logic (To-Do List using Dart)
Main Structure
  main() runs the MainApp widget using runApp().
  MainApp is a StatefulWidget because tasks will change dynamically.

UI Layout
  A Scaffold is used to build the basic layout (AppBar, Body).
  The UI contains a text input field, add button, and a list of tasks.

Task Input
  TextEditingController captures input from the user.
  When the "Add" button is pressed:
  The current input from the text field is added to the tasks list.
  The UI updates using setState().

Task Display
  A ListView.builder dynamically creates a list of widgets based on the tasks list.
  Each item is displayed with:

Task text
Delete icon

Delete Task
  When the delete icon is pressed:
  The corresponding task is removed from the list using removeAt(index).

UI updates again with setState().
