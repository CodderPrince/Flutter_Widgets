# 🌟 Flutter_Widgets

```markdown


> 🚀 A centralized collection of **reusable**, **custom-made Flutter widgets** crafted for scalable and consistent UI development.

This repository serves as a personal widget library where frequently used and customized UI components like `AppBar`, `Drawer`, `BottomNavigationBar`, `Buttons`, and more are stored for quick reuse across multiple Flutter projects.

---

## 📦 Purpose

Building UI from scratch every time is repetitive. This repository eliminates redundancy and improves consistency by providing a set of reusable Flutter components that can be imported easily into any new or existing Flutter project.

---

## 📁 Widget Categories

| Category                | Description |
|------------------------|-------------|
| ✅ `AppBar`             | Beautiful, gradient-enabled, icon-rich custom app bars |
| ✅ `Drawer`             | Custom side drawers with flexible layout and animation |
| ✅ `BottomNavigation`   | Animated and colorful bottom nav bar with badge support |
| ✅ `SnackBar`           | Stylized snackbars for alerts and confirmations |
| ✅ `AlertDialog`        | Customizable alert dialogs for warnings, inputs, and actions |
| ✅ `Buttons`            | Elevated buttons, gradient buttons, rounded buttons, etc. |
| ✅ `InputFields`        | Custom TextFormFields with validators and decorations |
| ✅ `Cards`              | Custom designed cards for dashboard, news, lists, etc. |
| ✅ `PageTemplate`       | Scaffolds with AppBar, Drawer, FAB, etc. for consistency |
| ✅ `Animations`         | Commonly reused animation wrappers and transitions |

---

## 🧱 Widget Architecture

Each widget is separated into its own Dart file for clean modularity and fast import.

### 📂 Folder Structure
```

Flutter\_Widgets/
│
├── app\_bar/
│   └── custom\_app\_bar.dart
│
├── drawer/
│   └── my\_drawer.dart
│
├── bottom\_navigation/
│   └── custom\_bottom\_nav.dart
│
├── snackbar/
│   └── my\_snackbar.dart
│
├── alert\_dialog/
│   └── my\_alert\_dialog.dart
│
├── buttons/
│   └── gradient\_button.dart
│
├── input\_fields/
│   └── custom\_textfield.dart
│
├── cards/
│   └── info\_card.dart
│
├── templates/
│   └── base\_screen\_template.dart
│
├── animations/
│   └── fade\_transition\_wrapper.dart
│
└── README.md

````

---

## 🛠️ How to Use

1. **Clone the repository**
```bash
git clone https://github.com/CodderPrince/Flutter_Widgets.git
````

2. **Import any widget**

```dart
import 'package:flutter_widgets/app_bar/custom_app_bar.dart';
```

3. **Use in your widget tree**

```dart
Scaffold(
  appBar: MyAppBar18(), // Custom AppBar from this repo
  drawer: MyDrawer(),
  bottomNavigationBar: CustomBottomNav(),
  body: MyScreen(),
);
```

---

## 💡 Features

* 🧩 Reusable and plug-and-play
* 🎨 Custom styling with gradients, shadows, rounded corners
* ⚡ Performance-optimized components
* 🧪 Ready for integration with state management
* 📱 Responsive and adaptive design patterns
* ✨ Custom animations for smooth UI/UX
* 🚧 Easy to extend and maintain

---

## 📚 Examples

### 🔷 Custom AppBar

```dart
PreferredSizeWidget MyAppBar18() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ),
    title: Text('My Gradient AppBar'),
    centerTitle: true,
  );
}
```

### 🔶 Custom BottomNavigationBar

```dart
BottomNavigationBar CustomBottomNav() {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.deepPurple,
    unselectedItemColor: Colors.grey,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    ],
  );
}
```

---

## ✅ Benefits of Using This Repo

* 🔁 No need to rewrite UI boilerplate
* 🧼 Cleaner code with widget separation
* 🧠 Improve productivity and focus on logic
* 📦 Maintain design consistency across apps

---

## 🧠 Best Practices

* 🔄 Use widget functions instead of classes for lightweight components
* 📂 Organize by category for quick lookup
* 🧩 Keep styling flexible via parameters
* 🔍 Use `const` and `final` for better performance

---

## 👨‍💻 Author

**Md. An Nahian Prince**
🎓 CSE, Begum Rokeya University, Rangpur
📌 ID: 12105007
🌐 GitHub: [CodderPrince](https://github.com/CodderPrince)

---

## 📃 License

This project is licensed under the **MIT License** — feel free to use it in personal and academic projects.

---

## 🏷️ Tags

`Flutter`, `Widgets`, `Custom Widgets`, `AppBar`, `Drawer`, `BottomNavigation`, `Flutter UI`,
`Reusable Components`, `Stateful Widgets`, `Stateless Widgets`, `UI Design`, `Flutter Templates`

---

```
© 2025 CodderPrince – Flutter Custom Widget Collection
```
