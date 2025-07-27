# 🌟 Flutter_Widgets Repository
---

````markdown


Welcome to the **Flutter_Widgets** repository! This project is a personal collection of reusable and customizable Flutter UI components (widgets) that can be easily imported and used in any Flutter application. Whether you're building a personal app, a professional project, or prototyping something new — these widgets are designed to save time and enforce design consistency across your Flutter projects.

---

## 📁 Repository Structure

This repository is organized into multiple branches — each focusing on a specific widget or group of related widgets.

### 🔀 Branches

- `main`: Entry branch with general documentation and links.
- `appbar`: Contains custom AppBar widgets with styling and behavior.
- `drawer`: Custom Navigation Drawer widgets.
- `bottom_navigation`: Widgets for Bottom Navigation Bars.
- `buttons`, `cards`, `forms`, etc. (Planned or in-progress branches for future components)

---

## 📌 Current Focus: `appbar` Branch

The `appbar` branch contains a beautifully crafted, fully customizable **Flutter AppBar widget** named `MyAppBar18()`.

This custom AppBar is a rich UI component with a gradient background, icons, notifications, badge counts, and flexible navigation functionality.

---

## 🛠️ `MyAppBar18()` - Full Source Code

```dart
import 'package:flutter/material.dart';

PreferredSizeWidget MyAppBar18() {
  return AppBar(
    elevation: 8,
    backgroundColor: Colors.transparent,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
    ),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
      onPressed: () {
        // Add your back navigation logic here
      },
    ),
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.location_on, color: Colors.white, size: 28),
        const SizedBox(width: 8),
        ShaderMask(
          shaderCallback:
              (bounds) => const LinearGradient(
                colors: [Colors.yellow, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
          child: const Text(
            "Baghadanga",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    centerTitle: true,
    actions: [
      IconButton(
        icon: const Icon(Icons.search, color: Colors.white),
        onPressed: () {
          // Search functionality
        },
      ),
      Stack(
        children: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Notification logic
            },
          ),
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
              child: const Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      const IconButton(
        onPressed: null,
        icon: Icon(Icons.account_circle_rounded, size: 35, color: Colors.white),
      ),
      PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert, color: Colors.white),
        onSelected: (value) {
          if (value == 'settings') {
            // Go to settings
          } else if (value == 'logout') {
            // Logout logic
          }
        },
        itemBuilder: (context) => const [
          PopupMenuItem(value: 'settings', child: Text('Settings')),
          PopupMenuItem(value: 'logout', child: Text('Logout')),
        ],
      ),
    ],
  );
}
````

---

## ✨ Features of `MyAppBar18()`

* 🎨 **Gradient Background**: Smooth color transition from blue to purple.
* 🧩 **Rounded Bottom Corners**: Custom radius for unique look.
* 🧭 **Leading Back Icon**: Built-in back navigation button.
* 📍 **Location Display**: Location icon + name with a shader text effect.
* 🔍 **Search Icon**: Top-right search icon.
* 🔔 **Notification Icon with Badge**: Red badge with notification count.
* 👤 **Profile Icon**: Static or clickable profile icon.
* ☰ **Popup Menu**: Options like Settings and Logout.

---

## 🚀 How to Use

To use this widget in any Flutter screen:

1. Copy the `MyAppBar18()` method into your `appbar.dart` file.
2. Import it where needed:

```dart
import 'package:your_app/widgets/appbar.dart';
```

3. Use it in any `Scaffold` widget:

```dart
Scaffold(
  appBar: MyAppBar18(),
  body: YourBodyWidget(),
)
```

---

## 📌 Why Use This Repo?

* ✅ Reusability: Write once, use everywhere.
* 🎯 Customization: Modify only what you need.
* 💡 Inspiration: Expand your Flutter design knowledge.
* 🔄 Version Control: Track evolution of your widgets across branches.

---

## 📦 Coming Soon

* ✅ Side Drawer (fully styled with animation)
* ✅ Bottom Navigation Bar with state handling
* ✅ Custom Buttons and Cards
* ✅ Animated Page Transitions
* ✅ Form Validation Widgets

---

## 👨‍💻 Author

> Maintained by [**Md Prince**](https://github.com/CodderPrince)

If you like this, please ⭐ the repo to support more open-source widget development.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 🗂️ Related Repos

* [`PythonProject`](https://github.com/CodderPrince/PythonProject)
* [`DSA_2-2`](https://github.com/CodderPrince/DSA_2-2)
* [`CGPA_Calculator`](https://github.com/CodderPrince/CGPA_Calculator)

---

Thank you for using `Flutter_Widgets`!
Keep building beautiful apps! 💙🧩

