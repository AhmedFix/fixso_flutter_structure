
# Fixso Flutter Structure

**A Dart package for smart project structure with dependency injection and modularized route management for Flutter applications.**

## Overview

Fixso Flutter Structure provides a systematic approach to managing large-scale Flutter applications. By promoting modularization and clear separation of concerns, this package addresses common challenges developers face in organizing codebases effectively.

### Key Features

- **Modularized Routes**: Simplify navigation by encapsulating routes within feature-specific modules.
- **Modularized Dependency Injection**: Enhance scalability by managing dependencies at the module level.
- **Improved Maintainability**: Isolated features reduce the risk of breaking changes and make the codebase easier to manage.
- **Enhanced Developer Experience**: Clear structure enables quicker onboarding and smoother collaboration.

---

## Why Use Fixso Flutter Structure?

- **Maintainability**: Modularization minimizes technical debt by breaking the application into manageable components.
- **Scalability**: Easily add or modify features without impacting unrelated modules.
- **Code Clarity**: Feature-based organization fosters better understanding and reduces complexity.
- **Flexible State Management**: Works seamlessly with any state management solution.

---

## Project Structure

### Traditional MVC Structure

A typical monolithic MVC architecture organizes files by type:

```
.
├── models
│   ├── auth_model.dart
│   ├── home_model.dart
│   └── product_model.dart
├── controllers
│   ├── auth_controller.dart
│   ├── home_controller.dart
│   └── product_controller.dart
├── views
│   ├── auth_page.dart
│   ├── home_page.dart
│   └── product_page.dart
├── core
├── app_widget.dart
└── main.dart
```

This structure can lead to challenges as the application grows.

---

### Modular Structure (Fixso Flutter Structure)

Fixso introduces a feature-based approach to organization:

```
.
├── features
│   ├─ auth
│   │   ├── auth_model.dart
│   │   ├── auth_controller.dart
│   │   └── auth_page.dart
│   ├─ home
│   │   ├── home_model.dart
│   │   ├── home_controller.dart
│   │   └── home_page.dart
│   └─ product
│       ├── product_model.dart
│       ├── product_controller.dart
│       └── product_page.dart
├── core
├── app_widget.dart
└── main.dart
```

This modular structure encapsulates each feature's logic, making the application easier to manage, debug, and extend.

---

## Installation

1. Add the dependency in your `pubspec.yaml` file:

   ```yaml
   dependencies:
     fixso_flutter_structure:
       git:
         url: https://github.com/AhmedFix/fixso_flutter_structure.git
   ```

2. Fetch the package:

   ```bash
   dart pub get
   ```

3. Generate the project structure:

   ```bash
   dart run fixso_flutter_structure <target_directory>
   ```

   Replace `<target_directory>` with the desired directory (e.g., `lib`).

---

## Usage Example

To create the modular structure inside a project folder named `my_project`, run:

```bash
dart run fixso_flutter_structure my_project/lib
```

### Generated Structure

The command will create the following structure:

```
lib/
├── app.dart
├── main.dart
├── features/
│   ├── auth/
│   │   ├── auth_model.dart
│   │   ├── auth_controller.dart
│   │   └── auth_page.dart
│   ├── home/
│   │   ├── home_model.dart
│   │   ├── home_controller.dart
│   │   └── home_page.dart
│   ├── product/
│       ├── product_model.dart
│       ├── product_controller.dart
│       └── product_page.dart
├── core/
```

---

## Frequently Asked Questions

**1. Does Fixso Flutter Structure work with any state management approach?**  
Yes, it is agnostic and works with any state management solution, including `GetX`, `Provider`, `Bloc`, and others.

**2. Can I use dynamic routes or wildcards?**  
Absolutely. The routing system supports dynamic parameters and wildcard routes.

**3. Do I need to create a module for all features?**  
No, you can create modules as features grow or as needed.

---

## Contributing

We welcome contributions! To contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes and submit a pull request.

---

## License

This project is licensed under the [MIT License](LICENSE).  

---

## Acknowledgments

Special thanks to contributors and users who have supported the development of Fixso Flutter Structure. Your feedback helps us improve!  
