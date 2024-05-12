# Flutter BLoC File Architecture

This is a basic Flutter project template that follows the BLoC (Business Logic Component) architecture pattern. It includes file organization for handling HTTP requests, permissions, and BLoC state management.

## Project Structure

/lib
/data
/repository.dart
/models
/model.dart
/bloc
/bloc.dart
/event.dart
/state.dart
/ui
/screens
/home_screen.dart
/utils
/api_client.dart
/permission_handler.dart

- **data**: Contains repository classes responsible for interacting with data sources.
- **models**: Defines data models used in the application.
- **bloc**: Holds BLoC classes, events, and states for managing application state.
- **ui/screens**: Contains UI components of the application, organized by screen.
- **utils**: Includes utility classes for handling HTTP requests and permissions.


## Usage

1. Clone this repository:

```bash
git clone https://github.com/your-username/flutter_bloc_file_architecture.git

cd flutter_bloc_file_architecture

flutter pub get

flutter run


