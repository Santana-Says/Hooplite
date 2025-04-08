# Hooplite

**Hooplite** is a lightweight, SwiftUI-based iOS application designed to showcase popular content in a clean, modular architecture. It serves as a modern example of scalable app design using native iOS development tools.

## Key Features

- 🧱 **Modular Architecture** – Core functionality is split into self-contained Swift packages, making development and maintenance more manageable.
- ⚙️ **Decoupled Logic** – Business logic, UI, and data management live in separate modules to reduce tight coupling and improve code clarity.
- 🧪 **Testability** – Each module can be unit-tested independently, enabling better quality control and faster development cycles.
- 📦 **Scalable Design** – The structure supports growing applications by allowing new features to be added as separate modules with minimal friction.

## 📂 Project Structure

Hooplite/
- Core: Shared utilities and foundational logic
- Hooplite: Main app entry and app delegate
- PopularItems: Feature module for popular items

## Requirements

- Xcode 15 or higher
- Swift 5.9+
- macOS 13+ / iOS 16+ (depending on the target platform)
- Swift Package Manager (SPM) – used for managing modular dependencies
