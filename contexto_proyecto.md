# CONTEXTO COMPLETO DEL PROYECTO

Generado automáticamente por export_context_flutter.dart


# ANÁLISIS DE ARQUITECTURA

## ACIERTOS

✅ Feature "activity" contiene data/domain/presentation.
✅ Feature "auth" contiene data/domain/presentation.


# ESTRUCTURA DEL PROYECTO

📄 .flutter-plugins-dependencies
📄 .gitignore
📄 .metadata
📄 README.md
📄 analysis_options.yaml
📄 analyze_output.txt
📁 android
    📄 .gitignore
    📁 app
        📄 build.gradle.kts
        📁 src
            📁 debug
                📄 AndroidManifest.xml
            📁 main
                📄 AndroidManifest.xml
                📁 java
                    📁 io
                        📁 flutter
                            📁 plugins
                                📄 GeneratedPluginRegistrant.java
                📁 kotlin
                    📁 com
                        📁 tuinstituto
                            📁 fitness_tracker
                                📄 MainActivity.kt
                📁 res
                    📁 drawable
                        📄 launch_background.xml
                    📁 drawable-v21
                        📄 launch_background.xml
                    📁 mipmap-hdpi
                        📄 ic_launcher.png
                    📁 mipmap-mdpi
                        📄 ic_launcher.png
                    📁 mipmap-xhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxxhdpi
                        📄 ic_launcher.png
                    📁 values
                        📄 styles.xml
                    📁 values-night
                        📄 styles.xml
            📁 profile
                📄 AndroidManifest.xml
    📄 build.gradle.kts
    📁 gradle
        📁 wrapper
            📄 gradle-wrapper.jar
            📄 gradle-wrapper.properties
    📄 gradle.properties
    📄 gradlew
    📄 gradlew.bat
    📄 local.properties
    📄 settings.gradle.kts
📄 deps.txt
📁 ios
    📄 .gitignore
    📁 Flutter
        📄 AppFrameworkInfo.plist
        📄 Debug.xcconfig
        📄 Generated.xcconfig
        📄 Release.xcconfig
        📁 ephemeral
            📄 flutter_lldb_helper.py
            📄 flutter_lldbinit
            📄 flutter_native_integration.env
        📄 flutter_export_environment.sh
    📁 Runner
        📄 AppDelegate.swift
        📁 Assets.xcassets
            📁 AppIcon.appiconset
                📄 Contents.json
                📄 Icon-App-1024x1024@1x.png
                📄 Icon-App-20x20@1x.png
                📄 Icon-App-20x20@2x.png
                📄 Icon-App-20x20@3x.png
                📄 Icon-App-29x29@1x.png
                📄 Icon-App-29x29@2x.png
                📄 Icon-App-29x29@3x.png
                📄 Icon-App-40x40@1x.png
                📄 Icon-App-40x40@2x.png
                📄 Icon-App-40x40@3x.png
                📄 Icon-App-60x60@2x.png
                📄 Icon-App-60x60@3x.png
                📄 Icon-App-76x76@1x.png
                📄 Icon-App-76x76@2x.png
                📄 Icon-App-83.5x83.5@2x.png
            📁 LaunchImage.imageset
                📄 Contents.json
                📄 LaunchImage.png
                📄 LaunchImage@2x.png
                📄 LaunchImage@3x.png
                📄 README.md
        📁 Base.lproj
            📄 LaunchScreen.storyboard
            📄 Main.storyboard
        📄 GeneratedPluginRegistrant.h
        📄 GeneratedPluginRegistrant.m
        📄 Info.plist
        📄 Runner-Bridging-Header.h
        📄 SceneDelegate.swift
    📁 Runner.xcodeproj
        📄 project.pbxproj
        📁 project.xcworkspace
            📄 contents.xcworkspacedata
            📁 xcshareddata
                📄 IDEWorkspaceChecks.plist
                📄 WorkspaceSettings.xcsettings
        📁 xcshareddata
            📁 xcschemes
                📄 Runner.xcscheme
    📁 Runner.xcworkspace
        📄 contents.xcworkspacedata
        📁 xcshareddata
            📄 IDEWorkspaceChecks.plist
            📄 WorkspaceSettings.xcsettings
    📁 RunnerTests
        📄 RunnerTests.swift
📁 lib
    📁 core
        📁 database
            📄 database.dart
            📄 database.g.dart
        📁 platform
            📄 platform_channels.dart
    📁 features
        📁 activity
            📁 data
                📁 datasources
                    📄 Untitled-1.txt
                    📄 activity_datasource.dart
                    📄 activity_datasource_impl.dart
                    📄 activity_repository.dart
                📁 services
                    📄 tts_service.dart
            📁 domain
                📁 entities
                    📄 activity_record.dart
                    📄 activity_state.dart
                    📄 fall_event.dart
            📁 presentation
                📁 bloc
                    📄 activity_bloc.dart
                📁 pages
                    📄 activity_page.dart
                    📄 historial_page.dart
        📁 auth
            📁 data
                📁 datasources
                    📄 accelerometer_datasource.dart
                    📄 accelerometer_datasource_impl.dart
                    📄 biometric_datasource.dart
            📁 domain
                📁 entities
                    📄 auth_result.dart
                    📄 step_data.dart
                📁 usecases
                    📄 authenticate_user.dart
            📁 presentation
                📁 bloc
                    📄 auth_bloc.dart
                📁 pages
                    📄 login_page.dart
            📁 steps
                📁 presentation
                    📁 widgets
                        📄 step_counter_widget.dart
            📁 tracking
                📁 data
                    📁 datasources
                        📄 gps_datasource.dart
                📁 domain
                    📁 entities
                        📄 location_point.dart
                        📄 route.dart
                📁 presentation
                    📁 widgets
                        📄 route_map_widget.dart
    📄 injection_container.dart
    📄 main.dart
📄 pubspec.yaml
📁 test
    📄 widget_test.dart


# CONTENIDO DE LOS ARCHIVOS

          
================================================
📄 ARCHIVO: .flutter-plugins-dependencies
================================================

{"info":"This is a generated file; do not edit or check into version control.","plugins":{"ios":[{"name":"activity_recognition_flutter","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\activity_recognition_flutter-6.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_activity_recognition","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_activity_recognition-4.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_darwin","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_darwin-2.0.3\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-10.1.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_foundation","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_foundation-2.6.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_apple","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_apple-9.4.10\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-7.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_foundation","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_foundation-2.5.6\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false}],"android":[{"name":"activity_recognition_flutter","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\activity_recognition_flutter-6.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_activity_recognition","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_activity_recognition-4.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_plugin_android_lifecycle","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_plugin_android_lifecycle-2.0.35\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_android-5.0.3\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"jni_flutter","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni_flutter-1.0.1\\\\","native_build":true,"dependencies":["jni"],"dev_dependency":false},{"name":"local_auth_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_android-2.0.9\\\\","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-10.1.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_android-2.3.1\\\\","native_build":false,"dependencies":["jni","jni_flutter"],"dev_dependency":false},{"name":"permission_handler_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_android-13.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-7.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_android-2.4.26\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"macos":[{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_darwin","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_darwin-2.0.3\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-10.1.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_foundation","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_foundation-2.6.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_foundation","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_foundation-2.5.6\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false}],"linux":[{"name":"geolocator_linux","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_linux-0.2.6\\\\","native_build":false,"dependencies":["package_info_plus"],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-10.1.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"path_provider_linux","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_linux-2.2.1\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_linux","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_linux-2.4.1\\\\","native_build":false,"dependencies":["path_provider_linux"],"dev_dependency":false}],"windows":[{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_windows-0.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_windows-2.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-10.1.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"path_provider_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_windows-2.3.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_windows-0.2.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_windows-2.4.1\\\\","native_build":false,"dependencies":["path_provider_windows"],"dev_dependency":false}],"web":[{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","dependencies":[],"dev_dependency":false},{"name":"geolocator_web","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_web-4.1.4\\\\","dependencies":[],"dev_dependency":false},{"name":"package_info_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\package_info_plus-10.1.0\\\\","dependencies":[],"dev_dependency":false},{"name":"permission_handler_html","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_html-0.1.3+5\\\\","dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-7.0.0\\\\","dependencies":[],"dev_dependency":false},{"name":"shared_preferences_web","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_web-2.4.3\\\\","dependencies":[],"dev_dependency":false}]},"dependencyGraph":[{"name":"activity_recognition_flutter","dependencies":[]},{"name":"flutter_activity_recognition","dependencies":[]},{"name":"flutter_plugin_android_lifecycle","dependencies":[]},{"name":"flutter_tts","dependencies":[]},{"name":"geolocator","dependencies":["geolocator_android","geolocator_apple","geolocator_web","geolocator_windows","geolocator_linux"]},{"name":"geolocator_android","dependencies":[]},{"name":"geolocator_apple","dependencies":[]},{"name":"geolocator_linux","dependencies":["package_info_plus"]},{"name":"geolocator_web","dependencies":[]},{"name":"geolocator_windows","dependencies":[]},{"name":"jni","dependencies":[]},{"name":"jni_flutter","dependencies":["jni"]},{"name":"local_auth","dependencies":["local_auth_android","local_auth_darwin","local_auth_windows"]},{"name":"local_auth_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"local_auth_darwin","dependencies":[]},{"name":"local_auth_windows","dependencies":[]},{"name":"package_info_plus","dependencies":[]},{"name":"path_provider","dependencies":["path_provider_android","path_provider_foundation","path_provider_linux","path_provider_windows"]},{"name":"path_provider_android","dependencies":["jni","jni_flutter"]},{"name":"path_provider_foundation","dependencies":[]},{"name":"path_provider_linux","dependencies":[]},{"name":"path_provider_windows","dependencies":[]},{"name":"permission_handler","dependencies":["permission_handler_android","permission_handler_apple","permission_handler_html","permission_handler_windows"]},{"name":"permission_handler_android","dependencies":[]},{"name":"permission_handler_apple","dependencies":[]},{"name":"permission_handler_html","dependencies":[]},{"name":"permission_handler_windows","dependencies":[]},{"name":"sensors_plus","dependencies":[]},{"name":"shared_preferences","dependencies":["shared_preferences_android","shared_preferences_foundation","shared_preferences_linux","shared_preferences_web","shared_preferences_windows"]},{"name":"shared_preferences_android","dependencies":[]},{"name":"shared_preferences_foundation","dependencies":[]},{"name":"shared_preferences_linux","dependencies":["path_provider_linux"]},{"name":"shared_preferences_web","dependencies":[]},{"name":"shared_preferences_windows","dependencies":["path_provider_windows"]}],"date_created":"2026-06-23 19:35:39.243607","version":"3.44.2","swift_package_manager_enabled":{"ios":false,"macos":false}}

          
================================================
📄 ARCHIVO: .gitignore
================================================

# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.build/
.buildlog/
.history
.svn/
.swiftpm/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins-dependencies
.pub-cache/
.pub/
/build/
/coverage/

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json

# Android Studio will place build artifacts here
/android/app/debug

# Generated Dart files
*.g.dart
/android/app/profile
/android/app/release


          
================================================
📄 ARCHIVO: .metadata
================================================

# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
  revision: "00b0c91f06209d9e4a41f71b7a512d6eb3b9c694"
  channel: "stable"

project_type: app

# Tracks metadata for the flutter migrate command
migration:
  platforms:
    - platform: root
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: android
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: ios
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: linux
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: macos
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: web
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: windows
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694

  # User provided section

  # List of Local paths (relative to this file) that should be
  # ignored by the migrate tool.
  #
  # Files that are not part of the templates will be ignored by default.
  unmanaged_files:
    - 'lib/main.dart'
    - 'ios/Runner.xcodeproj/project.pbxproj'


          
================================================
📄 ARCHIVO: analysis_options.yaml
================================================

# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml

analyzer:
  language:
    strict-inference: true
    strict-raw-types: true

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at https://dart.dev/lints.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options


          
================================================
📄 ARCHIVO: android\.gitignore
================================================

gradle-wrapper.jar
/.gradle
/captures/
/gradlew
/gradlew.bat
/local.properties
GeneratedPluginRegistrant.java
.cxx/

# Remember to never publicly share your keystore.
# See https://flutter.dev/to/reference-keystore
key.properties
**/*.keystore
**/*.jks


          
================================================
📄 ARCHIVO: ios\.gitignore
================================================

**/dgph
*.mode1v3
*.mode2v3
*.moved-aside
*.pbxuser
*.perspectivev3
**/*sync/
.sconsign.dblite
.tags*
**/.vagrant/
**/DerivedData/
Icon?
**/Pods/
**/.symlinks/
profile
xcuserdata
**/.generated/
Flutter/App.framework
Flutter/Flutter.framework
Flutter/Flutter.podspec
Flutter/Generated.xcconfig
Flutter/ephemeral/
Flutter/app.flx
Flutter/app.zip
Flutter/flutter_assets/
Flutter/flutter_export_environment.sh
ServiceDefinitions.json
Runner/GeneratedPluginRegistrant.*

# Exceptions to above rules.
!default.mode1v3
!default.mode2v3
!default.pbxuser
!default.perspectivev3


          
================================================
📄 ARCHIVO: ios\Flutter\Debug.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Flutter\Generated.xcconfig
================================================

// This is a generated file; do not edit or check into version control.
FLUTTER_ROOT=C:\Users\Zulay\Downloads\flutter_windows_3.44.2-stable\flutter
FLUTTER_APPLICATION_PATH=C:\Users\Zulay\Downloads\Fittness-app
FLUTTER_FRAMEWORK_SWIFT_PACKAGE_PATH=C:\Users\Zulay\Downloads\Fittness-app\ios\Flutter\ephemeral\Packages\.packages\FlutterFramework
COCOAPODS_PARALLEL_CODE_SIGN=true
FLUTTER_TARGET=lib\main.dart
FLUTTER_BUILD_DIR=build
FLUTTER_BUILD_NAME=1.0.0
FLUTTER_BUILD_NUMBER=1.0.0
EXCLUDED_ARCHS[sdk=iphonesimulator*]=i386
EXCLUDED_ARCHS[sdk=iphoneos*]=armv7
DART_OBFUSCATION=false
TRACK_WIDGET_CREATION=true
TREE_SHAKE_ICONS=false
PACKAGE_CONFIG=.dart_tool/package_config.json


          
================================================
📄 ARCHIVO: ios\Flutter\Release.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\AppIcon.appiconset\Contents.json
================================================

{
  "images" : [
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "83.5x83.5",
      "idiom" : "ipad",
      "filename" : "Icon-App-83.5x83.5@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "1024x1024",
      "idiom" : "ios-marketing",
      "filename" : "Icon-App-1024x1024@1x.png",
      "scale" : "1x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\Contents.json
================================================

{
  "images" : [
    {
      "idiom" : "universal",
      "filename" : "LaunchImage.png",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@3x.png",
      "scale" : "3x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\README.md
================================================

# Launch Screen Assets

You can customize the launch screen with your own desired assets by replacing the image files in this directory.

You can also do it by opening your Flutter project's Xcode project with `open ios/Runner.xcworkspace`, selecting `Runner/Assets.xcassets` in the Project Navigator and dropping in the desired images.

          
================================================
📄 ARCHIVO: lib\core\database\database.dart
================================================

import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../features/auth/tracking/domain/entities/location_point.dart';

part 'database.g.dart';

@DataClassName('ActivityRecord')
class ActivityRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get activityType => text()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime().nullable()();
  IntColumn get stepCount => integer().withDefault(const Constant(0))();
  RealColumn get distanceKm => real().withDefault(const Constant(0.0))();
  RealColumn get caloriesBurned => real().withDefault(const Constant(0.0))();
  DateTimeColumn get createdAt => dateTime()();
  RealColumn get averageSpeed => real().withDefault(const Constant(0.0))();
  IntColumn get durationSeconds => integer().withDefault(const Constant(0))();
  TextColumn get routePointsJson => text().nullable()(); 
}

@DriftDatabase(tables: [ActivityRecords])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ActivityRecord>> getAllActivities() {
    return (select(activityRecords)
          ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
        .get();
  }

  Future<List<ActivityRecord>> getActivitiesByDateRange(DateTime startDate, DateTime endDate) {
    return (select(activityRecords)
          ..where((t) => t.createdAt.isBetweenValues(startDate, endDate))
          ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)]))
        .get();
  }

  Future<ActivityRecord?> getActivityById(int id) {
    return (select(activityRecords)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<int> createActivity(ActivityRecordsCompanion activity) {
    return into(activityRecords).insert(activity);
  }

  Future<bool> updateActivity(ActivityRecord activity) async {
    return await update(activityRecords).replace(activity);
  }

  Future<bool> deleteActivity(int id) async {
    return await (delete(activityRecords)..where((t) => t.id.equals(id))).go() > 0;
  }

  Future<int> deleteAllActivities() => delete(activityRecords).go();

  Future<int> deleteActivitiesBefore(DateTime date) {
    return (delete(activityRecords)..where((t) => t.createdAt.isSmallerThanValue(date))).go();
  }

  Future<ActivityStats> getStats() async {
    final records = await getAllActivities();
    if (records.isEmpty) return ActivityStats.empty();

    final totalDistance = records.fold<double>(0, (sum, r) => sum + r.distanceKm);
    final totalSeconds = records.fold<int>(0, (sum, r) => sum + r.durationSeconds);

    return ActivityStats(
      totalActivities: records.length,
      totalSteps: records.fold<int>(0, (sum, r) => sum + r.stepCount),
      totalDistanceKm: totalDistance,
      totalCaloriesBurned: records.fold<double>(0, (sum, r) => sum + r.caloriesBurned),
      totalDurationSeconds: totalSeconds,
      averageSpeed: totalDistance / (totalSeconds > 0 ? totalSeconds / 3600 : 1),
    );
  }
}

// ─── DEFINICIÓN DEL ENUM Y EXTENSIONES ──────────────────────────────────────

enum ActivityRecordType { walking, running, stationary, unknown }

extension ActivityRecordExtension on ActivityRecord {
  // Convierte el texto guardado en BD a Enum
  ActivityRecordType get type {
    return ActivityRecordType.values.firstWhere(
      (e) => e.name == activityType,
      orElse: () => ActivityRecordType.unknown,
    );
  }

  // Traducción para mostrar en pantalla
  String get label {
    switch (type) {
      case ActivityRecordType.walking: return 'Caminando';
      case ActivityRecordType.running: return 'Corriendo';
      case ActivityRecordType.stationary: return 'Detenido';
      default: return 'Desconocido';
    }
  }

  String get formattedDate => '${createdAt.day}/${createdAt.month} ${createdAt.hour}:${createdAt.minute.toString().padLeft(2, '0')}';

  List<LocationPoint> get points {
    if (routePointsJson == null || routePointsJson!.isEmpty) return [];
    try {
      final List<dynamic> list = jsonDecode(routePointsJson!);
      return list.map((p) => LocationPoint(
        latitude: (p['lat'] as num).toDouble(),
        longitude: (p['lon'] as num).toDouble(),
        altitude: (p['alt'] as num?)?.toDouble() ?? 0.0,
        speed: (p['speed'] as num?)?.toDouble() ?? 0.0,
        accuracy: (p['acc'] as num?)?.toDouble() ?? 0.0,
        timestamp: DateTime.tryParse(p['time'] ?? '') ?? DateTime.now(),
      )).toList();
    } catch (e) {
      debugPrint("Error al decodificar ruta: $e");
      return [];
    }
  }

  String get formattedDuration {
    final hours = durationSeconds ~/ 3600;
    final minutes = (durationSeconds % 3600) ~/ 60;
    return hours > 0 ? '${hours}h ${minutes}m' : '${minutes}m';
  }
}

// ─── HELPER DE CONEXIÓN Y ESTADÍSTICAS ──────────────────────────────────────

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'fitness_app.db'));
    return NativeDatabase(file);
  });
}

class ActivityStats {
  final int totalActivities, totalSteps, totalDurationSeconds;
  final double totalDistanceKm, totalCaloriesBurned, averageSpeed;

  ActivityStats({
    required this.totalActivities, required this.totalSteps, 
    required this.totalDistanceKm, required this.totalCaloriesBurned, 
    required this.totalDurationSeconds, required this.averageSpeed
  });

  factory ActivityStats.empty() => ActivityStats(
    totalActivities: 0, totalSteps: 0, totalDistanceKm: 0, 
    totalCaloriesBurned: 0, totalDurationSeconds: 0, averageSpeed: 0
  );
}

          
================================================
📄 ARCHIVO: lib\core\database\database.g.dart
================================================

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ActivityRecordsTable extends ActivityRecords
    with TableInfo<$ActivityRecordsTable, ActivityRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivityRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _activityTypeMeta =
      const VerificationMeta('activityType');
  @override
  late final GeneratedColumn<String> activityType = GeneratedColumn<String>(
      'activity_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _stepCountMeta =
      const VerificationMeta('stepCount');
  @override
  late final GeneratedColumn<int> stepCount = GeneratedColumn<int>(
      'step_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _distanceKmMeta =
      const VerificationMeta('distanceKm');
  @override
  late final GeneratedColumn<double> distanceKm = GeneratedColumn<double>(
      'distance_km', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _caloriesBurnedMeta =
      const VerificationMeta('caloriesBurned');
  @override
  late final GeneratedColumn<double> caloriesBurned = GeneratedColumn<double>(
      'calories_burned', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _averageSpeedMeta =
      const VerificationMeta('averageSpeed');
  @override
  late final GeneratedColumn<double> averageSpeed = GeneratedColumn<double>(
      'average_speed', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _durationSecondsMeta =
      const VerificationMeta('durationSeconds');
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
      'duration_seconds', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _routePointsJsonMeta =
      const VerificationMeta('routePointsJson');
  @override
  late final GeneratedColumn<String> routePointsJson = GeneratedColumn<String>(
      'route_points_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        activityType,
        startTime,
        endTime,
        stepCount,
        distanceKm,
        caloriesBurned,
        createdAt,
        averageSpeed,
        durationSeconds,
        routePointsJson
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activity_records';
  @override
  VerificationContext validateIntegrity(Insertable<ActivityRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('activity_type')) {
      context.handle(
          _activityTypeMeta,
          activityType.isAcceptableOrUnknown(
              data['activity_type']!, _activityTypeMeta));
    } else if (isInserting) {
      context.missing(_activityTypeMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    if (data.containsKey('step_count')) {
      context.handle(_stepCountMeta,
          stepCount.isAcceptableOrUnknown(data['step_count']!, _stepCountMeta));
    }
    if (data.containsKey('distance_km')) {
      context.handle(
          _distanceKmMeta,
          distanceKm.isAcceptableOrUnknown(
              data['distance_km']!, _distanceKmMeta));
    }
    if (data.containsKey('calories_burned')) {
      context.handle(
          _caloriesBurnedMeta,
          caloriesBurned.isAcceptableOrUnknown(
              data['calories_burned']!, _caloriesBurnedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('average_speed')) {
      context.handle(
          _averageSpeedMeta,
          averageSpeed.isAcceptableOrUnknown(
              data['average_speed']!, _averageSpeedMeta));
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
          _durationSecondsMeta,
          durationSeconds.isAcceptableOrUnknown(
              data['duration_seconds']!, _durationSecondsMeta));
    }
    if (data.containsKey('route_points_json')) {
      context.handle(
          _routePointsJsonMeta,
          routePointsJson.isAcceptableOrUnknown(
              data['route_points_json']!, _routePointsJsonMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActivityRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivityRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      activityType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity_type'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time']),
      stepCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}step_count'])!,
      distanceKm: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}distance_km'])!,
      caloriesBurned: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}calories_burned'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      averageSpeed: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}average_speed'])!,
      durationSeconds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration_seconds'])!,
      routePointsJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}route_points_json']),
    );
  }

  @override
  $ActivityRecordsTable createAlias(String alias) {
    return $ActivityRecordsTable(attachedDatabase, alias);
  }
}

class ActivityRecord extends DataClass implements Insertable<ActivityRecord> {
  final int id;
  final String activityType;
  final DateTime startTime;
  final DateTime? endTime;
  final int stepCount;
  final double distanceKm;
  final double caloriesBurned;
  final DateTime createdAt;
  final double averageSpeed;
  final int durationSeconds;
  final String? routePointsJson;
  const ActivityRecord(
      {required this.id,
      required this.activityType,
      required this.startTime,
      this.endTime,
      required this.stepCount,
      required this.distanceKm,
      required this.caloriesBurned,
      required this.createdAt,
      required this.averageSpeed,
      required this.durationSeconds,
      this.routePointsJson});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['activity_type'] = Variable<String>(activityType);
    map['start_time'] = Variable<DateTime>(startTime);
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime>(endTime);
    }
    map['step_count'] = Variable<int>(stepCount);
    map['distance_km'] = Variable<double>(distanceKm);
    map['calories_burned'] = Variable<double>(caloriesBurned);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['average_speed'] = Variable<double>(averageSpeed);
    map['duration_seconds'] = Variable<int>(durationSeconds);
    if (!nullToAbsent || routePointsJson != null) {
      map['route_points_json'] = Variable<String>(routePointsJson);
    }
    return map;
  }

  ActivityRecordsCompanion toCompanion(bool nullToAbsent) {
    return ActivityRecordsCompanion(
      id: Value(id),
      activityType: Value(activityType),
      startTime: Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      stepCount: Value(stepCount),
      distanceKm: Value(distanceKm),
      caloriesBurned: Value(caloriesBurned),
      createdAt: Value(createdAt),
      averageSpeed: Value(averageSpeed),
      durationSeconds: Value(durationSeconds),
      routePointsJson: routePointsJson == null && nullToAbsent
          ? const Value.absent()
          : Value(routePointsJson),
    );
  }

  factory ActivityRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivityRecord(
      id: serializer.fromJson<int>(json['id']),
      activityType: serializer.fromJson<String>(json['activityType']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
      stepCount: serializer.fromJson<int>(json['stepCount']),
      distanceKm: serializer.fromJson<double>(json['distanceKm']),
      caloriesBurned: serializer.fromJson<double>(json['caloriesBurned']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      averageSpeed: serializer.fromJson<double>(json['averageSpeed']),
      durationSeconds: serializer.fromJson<int>(json['durationSeconds']),
      routePointsJson: serializer.fromJson<String?>(json['routePointsJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'activityType': serializer.toJson<String>(activityType),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime?>(endTime),
      'stepCount': serializer.toJson<int>(stepCount),
      'distanceKm': serializer.toJson<double>(distanceKm),
      'caloriesBurned': serializer.toJson<double>(caloriesBurned),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'averageSpeed': serializer.toJson<double>(averageSpeed),
      'durationSeconds': serializer.toJson<int>(durationSeconds),
      'routePointsJson': serializer.toJson<String?>(routePointsJson),
    };
  }

  ActivityRecord copyWith(
          {int? id,
          String? activityType,
          DateTime? startTime,
          Value<DateTime?> endTime = const Value.absent(),
          int? stepCount,
          double? distanceKm,
          double? caloriesBurned,
          DateTime? createdAt,
          double? averageSpeed,
          int? durationSeconds,
          Value<String?> routePointsJson = const Value.absent()}) =>
      ActivityRecord(
        id: id ?? this.id,
        activityType: activityType ?? this.activityType,
        startTime: startTime ?? this.startTime,
        endTime: endTime.present ? endTime.value : this.endTime,
        stepCount: stepCount ?? this.stepCount,
        distanceKm: distanceKm ?? this.distanceKm,
        caloriesBurned: caloriesBurned ?? this.caloriesBurned,
        createdAt: createdAt ?? this.createdAt,
        averageSpeed: averageSpeed ?? this.averageSpeed,
        durationSeconds: durationSeconds ?? this.durationSeconds,
        routePointsJson: routePointsJson.present
            ? routePointsJson.value
            : this.routePointsJson,
      );
  ActivityRecord copyWithCompanion(ActivityRecordsCompanion data) {
    return ActivityRecord(
      id: data.id.present ? data.id.value : this.id,
      activityType: data.activityType.present
          ? data.activityType.value
          : this.activityType,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      stepCount: data.stepCount.present ? data.stepCount.value : this.stepCount,
      distanceKm:
          data.distanceKm.present ? data.distanceKm.value : this.distanceKm,
      caloriesBurned: data.caloriesBurned.present
          ? data.caloriesBurned.value
          : this.caloriesBurned,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      averageSpeed: data.averageSpeed.present
          ? data.averageSpeed.value
          : this.averageSpeed,
      durationSeconds: data.durationSeconds.present
          ? data.durationSeconds.value
          : this.durationSeconds,
      routePointsJson: data.routePointsJson.present
          ? data.routePointsJson.value
          : this.routePointsJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActivityRecord(')
          ..write('id: $id, ')
          ..write('activityType: $activityType, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('stepCount: $stepCount, ')
          ..write('distanceKm: $distanceKm, ')
          ..write('caloriesBurned: $caloriesBurned, ')
          ..write('createdAt: $createdAt, ')
          ..write('averageSpeed: $averageSpeed, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('routePointsJson: $routePointsJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      activityType,
      startTime,
      endTime,
      stepCount,
      distanceKm,
      caloriesBurned,
      createdAt,
      averageSpeed,
      durationSeconds,
      routePointsJson);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivityRecord &&
          other.id == this.id &&
          other.activityType == this.activityType &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.stepCount == this.stepCount &&
          other.distanceKm == this.distanceKm &&
          other.caloriesBurned == this.caloriesBurned &&
          other.createdAt == this.createdAt &&
          other.averageSpeed == this.averageSpeed &&
          other.durationSeconds == this.durationSeconds &&
          other.routePointsJson == this.routePointsJson);
}

class ActivityRecordsCompanion extends UpdateCompanion<ActivityRecord> {
  final Value<int> id;
  final Value<String> activityType;
  final Value<DateTime> startTime;
  final Value<DateTime?> endTime;
  final Value<int> stepCount;
  final Value<double> distanceKm;
  final Value<double> caloriesBurned;
  final Value<DateTime> createdAt;
  final Value<double> averageSpeed;
  final Value<int> durationSeconds;
  final Value<String?> routePointsJson;
  const ActivityRecordsCompanion({
    this.id = const Value.absent(),
    this.activityType = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.stepCount = const Value.absent(),
    this.distanceKm = const Value.absent(),
    this.caloriesBurned = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.averageSpeed = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.routePointsJson = const Value.absent(),
  });
  ActivityRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String activityType,
    required DateTime startTime,
    this.endTime = const Value.absent(),
    this.stepCount = const Value.absent(),
    this.distanceKm = const Value.absent(),
    this.caloriesBurned = const Value.absent(),
    required DateTime createdAt,
    this.averageSpeed = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.routePointsJson = const Value.absent(),
  })  : activityType = Value(activityType),
        startTime = Value(startTime),
        createdAt = Value(createdAt);
  static Insertable<ActivityRecord> custom({
    Expression<int>? id,
    Expression<String>? activityType,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int>? stepCount,
    Expression<double>? distanceKm,
    Expression<double>? caloriesBurned,
    Expression<DateTime>? createdAt,
    Expression<double>? averageSpeed,
    Expression<int>? durationSeconds,
    Expression<String>? routePointsJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (activityType != null) 'activity_type': activityType,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (stepCount != null) 'step_count': stepCount,
      if (distanceKm != null) 'distance_km': distanceKm,
      if (caloriesBurned != null) 'calories_burned': caloriesBurned,
      if (createdAt != null) 'created_at': createdAt,
      if (averageSpeed != null) 'average_speed': averageSpeed,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
      if (routePointsJson != null) 'route_points_json': routePointsJson,
    });
  }

  ActivityRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? activityType,
      Value<DateTime>? startTime,
      Value<DateTime?>? endTime,
      Value<int>? stepCount,
      Value<double>? distanceKm,
      Value<double>? caloriesBurned,
      Value<DateTime>? createdAt,
      Value<double>? averageSpeed,
      Value<int>? durationSeconds,
      Value<String?>? routePointsJson}) {
    return ActivityRecordsCompanion(
      id: id ?? this.id,
      activityType: activityType ?? this.activityType,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      stepCount: stepCount ?? this.stepCount,
      distanceKm: distanceKm ?? this.distanceKm,
      caloriesBurned: caloriesBurned ?? this.caloriesBurned,
      createdAt: createdAt ?? this.createdAt,
      averageSpeed: averageSpeed ?? this.averageSpeed,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      routePointsJson: routePointsJson ?? this.routePointsJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (activityType.present) {
      map['activity_type'] = Variable<String>(activityType.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (stepCount.present) {
      map['step_count'] = Variable<int>(stepCount.value);
    }
    if (distanceKm.present) {
      map['distance_km'] = Variable<double>(distanceKm.value);
    }
    if (caloriesBurned.present) {
      map['calories_burned'] = Variable<double>(caloriesBurned.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (averageSpeed.present) {
      map['average_speed'] = Variable<double>(averageSpeed.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    if (routePointsJson.present) {
      map['route_points_json'] = Variable<String>(routePointsJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivityRecordsCompanion(')
          ..write('id: $id, ')
          ..write('activityType: $activityType, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('stepCount: $stepCount, ')
          ..write('distanceKm: $distanceKm, ')
          ..write('caloriesBurned: $caloriesBurned, ')
          ..write('createdAt: $createdAt, ')
          ..write('averageSpeed: $averageSpeed, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('routePointsJson: $routePointsJson')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ActivityRecordsTable activityRecords =
      $ActivityRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [activityRecords];
}

typedef $$ActivityRecordsTableCreateCompanionBuilder = ActivityRecordsCompanion
    Function({
  Value<int> id,
  required String activityType,
  required DateTime startTime,
  Value<DateTime?> endTime,
  Value<int> stepCount,
  Value<double> distanceKm,
  Value<double> caloriesBurned,
  required DateTime createdAt,
  Value<double> averageSpeed,
  Value<int> durationSeconds,
  Value<String?> routePointsJson,
});
typedef $$ActivityRecordsTableUpdateCompanionBuilder = ActivityRecordsCompanion
    Function({
  Value<int> id,
  Value<String> activityType,
  Value<DateTime> startTime,
  Value<DateTime?> endTime,
  Value<int> stepCount,
  Value<double> distanceKm,
  Value<double> caloriesBurned,
  Value<DateTime> createdAt,
  Value<double> averageSpeed,
  Value<int> durationSeconds,
  Value<String?> routePointsJson,
});

class $$ActivityRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $ActivityRecordsTable> {
  $$ActivityRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get activityType => $composableBuilder(
      column: $table.activityType, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get stepCount => $composableBuilder(
      column: $table.stepCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get distanceKm => $composableBuilder(
      column: $table.distanceKm, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get caloriesBurned => $composableBuilder(
      column: $table.caloriesBurned,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get averageSpeed => $composableBuilder(
      column: $table.averageSpeed, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get durationSeconds => $composableBuilder(
      column: $table.durationSeconds,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get routePointsJson => $composableBuilder(
      column: $table.routePointsJson,
      builder: (column) => ColumnFilters(column));
}

class $$ActivityRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivityRecordsTable> {
  $$ActivityRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get activityType => $composableBuilder(
      column: $table.activityType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get stepCount => $composableBuilder(
      column: $table.stepCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get distanceKm => $composableBuilder(
      column: $table.distanceKm, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get caloriesBurned => $composableBuilder(
      column: $table.caloriesBurned,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get averageSpeed => $composableBuilder(
      column: $table.averageSpeed,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get durationSeconds => $composableBuilder(
      column: $table.durationSeconds,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get routePointsJson => $composableBuilder(
      column: $table.routePointsJson,
      builder: (column) => ColumnOrderings(column));
}

class $$ActivityRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivityRecordsTable> {
  $$ActivityRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get activityType => $composableBuilder(
      column: $table.activityType, builder: (column) => column);

  GeneratedColumn<DateTime> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<DateTime> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<int> get stepCount =>
      $composableBuilder(column: $table.stepCount, builder: (column) => column);

  GeneratedColumn<double> get distanceKm => $composableBuilder(
      column: $table.distanceKm, builder: (column) => column);

  GeneratedColumn<double> get caloriesBurned => $composableBuilder(
      column: $table.caloriesBurned, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<double> get averageSpeed => $composableBuilder(
      column: $table.averageSpeed, builder: (column) => column);

  GeneratedColumn<int> get durationSeconds => $composableBuilder(
      column: $table.durationSeconds, builder: (column) => column);

  GeneratedColumn<String> get routePointsJson => $composableBuilder(
      column: $table.routePointsJson, builder: (column) => column);
}

class $$ActivityRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ActivityRecordsTable,
    ActivityRecord,
    $$ActivityRecordsTableFilterComposer,
    $$ActivityRecordsTableOrderingComposer,
    $$ActivityRecordsTableAnnotationComposer,
    $$ActivityRecordsTableCreateCompanionBuilder,
    $$ActivityRecordsTableUpdateCompanionBuilder,
    (
      ActivityRecord,
      BaseReferences<_$AppDatabase, $ActivityRecordsTable, ActivityRecord>
    ),
    ActivityRecord,
    PrefetchHooks Function()> {
  $$ActivityRecordsTableTableManager(
      _$AppDatabase db, $ActivityRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivityRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivityRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivityRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> activityType = const Value.absent(),
            Value<DateTime> startTime = const Value.absent(),
            Value<DateTime?> endTime = const Value.absent(),
            Value<int> stepCount = const Value.absent(),
            Value<double> distanceKm = const Value.absent(),
            Value<double> caloriesBurned = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<double> averageSpeed = const Value.absent(),
            Value<int> durationSeconds = const Value.absent(),
            Value<String?> routePointsJson = const Value.absent(),
          }) =>
              ActivityRecordsCompanion(
            id: id,
            activityType: activityType,
            startTime: startTime,
            endTime: endTime,
            stepCount: stepCount,
            distanceKm: distanceKm,
            caloriesBurned: caloriesBurned,
            createdAt: createdAt,
            averageSpeed: averageSpeed,
            durationSeconds: durationSeconds,
            routePointsJson: routePointsJson,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String activityType,
            required DateTime startTime,
            Value<DateTime?> endTime = const Value.absent(),
            Value<int> stepCount = const Value.absent(),
            Value<double> distanceKm = const Value.absent(),
            Value<double> caloriesBurned = const Value.absent(),
            required DateTime createdAt,
            Value<double> averageSpeed = const Value.absent(),
            Value<int> durationSeconds = const Value.absent(),
            Value<String?> routePointsJson = const Value.absent(),
          }) =>
              ActivityRecordsCompanion.insert(
            id: id,
            activityType: activityType,
            startTime: startTime,
            endTime: endTime,
            stepCount: stepCount,
            distanceKm: distanceKm,
            caloriesBurned: caloriesBurned,
            createdAt: createdAt,
            averageSpeed: averageSpeed,
            durationSeconds: durationSeconds,
            routePointsJson: routePointsJson,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ActivityRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ActivityRecordsTable,
    ActivityRecord,
    $$ActivityRecordsTableFilterComposer,
    $$ActivityRecordsTableOrderingComposer,
    $$ActivityRecordsTableAnnotationComposer,
    $$ActivityRecordsTableCreateCompanionBuilder,
    $$ActivityRecordsTableUpdateCompanionBuilder,
    (
      ActivityRecord,
      BaseReferences<_$AppDatabase, $ActivityRecordsTable, ActivityRecord>
    ),
    ActivityRecord,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ActivityRecordsTableTableManager get activityRecords =>
      $$ActivityRecordsTableTableManager(_db, _db.activityRecords);
}


          
================================================
📄 ARCHIVO: lib\core\platform\platform_channels.dart
================================================

/// Constantes para los nombres de Platform Channels
/// Centralizar nombres evita errores de tipeo
class PlatformChannels {
  // Prevenir instanciación
  PlatformChannels._();

  static const String biometric = 'com.tuinstituto.fitness/biometric';
  static const String accelerometer = 'com.tuinstituto.fitness/accelerometer';
  static const String gps = 'com.tuinstituto.fitness/gps';
}


          
================================================
📄 ARCHIVO: lib\features\activity\data\datasources\activity_datasource.dart
================================================

import 'package:fitness_tracker/features/activity/domain/entities/activity_state.dart';
import 'package:fitness_tracker/features/activity/domain/entities/fall_event.dart';

abstract class ActivityDataSource {
  Stream<ActivityState> get activityStream;
  Stream<FallEvent> get fallStream;

  Future<void> startTracking();
  Future<void> stopTracking();
  Future<bool> requestPermissions();
  
  // ✅ Agregado para resetear el flag de caída
  void clearFallStatus();
}

          
================================================
📄 ARCHIVO: lib\features\activity\data\datasources\activity_datasource_impl.dart
================================================

import 'dart:async';
import 'dart:math' as math;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:flutter_activity_recognition/flutter_activity_recognition.dart' as far;
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'activity_datasource.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
// Local lightweight LocationPoint to avoid missing import
class LocationPoint {
  final double latitude;
  final double longitude;
  final double altitude;
  final double speed;
  final double accuracy;
  final DateTime? timestamp;

  LocationPoint({
    required this.latitude,
    required this.longitude,
    required this.altitude,
    required this.speed,
    required this.accuracy,
    required this.timestamp,
  });

  /// Returns distance to [other] in meters using haversine formula.
  double distanceTo(LocationPoint other) {
    const double earthRadius = 6371000; // meters
    double toRad(double deg) => deg * (math.pi / 180);
    final dLat = toRad(other.latitude - latitude);
    final dLon = toRad(other.longitude - longitude);
    final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(toRad(latitude)) * math.cos(toRad(other.latitude)) *
        math.sin(dLon / 2) * math.sin(dLon / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return earthRadius * c;
  }
}

class ActivityDataSourceImpl implements ActivityDataSource {
  final StreamController<ActivityState> _activityController =
      StreamController<ActivityState>.broadcast();
  final StreamController<FallEvent> _fallController =
      StreamController<FallEvent>.broadcast();

  @override
  Stream<ActivityState> get activityStream => _activityController.stream;
  @override
  Stream<FallEvent> get fallStream => _fallController.stream;

  StreamSubscription<AccelerometerEvent>? _accelerometerSub;
  StreamSubscription<far.Activity>?           _recognitionSub;
  StreamSubscription<Position>?           _gpsSub;

  final _activityRecognition = far.FlutterActivityRecognition.instance;

  int               _stepCount       = 0;
  UserActivityType  _currentActivity = UserActivityType.stationary;
  DateTime          _lastStepTime    = DateTime.now();
  bool              _isFallDetected  = false;
  bool              _isTracking      = false;
  DateTime?         _trackingStartTime;

  // GPS
  final List<LocationPoint> _routePoints = [];
  double _gpsDistanceKm = 0.0;
  LocationPoint? _lastGpsPoint;

  // Transición running → walking por tiempo
  DateTime? _lastRunImpact;
  static const Duration _runCooldown  = Duration(milliseconds: 1500);
  static const Duration _stepCooldown = Duration(milliseconds: 500);
  static const double   _stepThreshold = 10.5;
  static const double   _runThreshold  = 14.0;
  static const double   _fallThreshold = 28.0;
  final double _strideLength = 0.75;

  @override
  Future<bool> requestPermissions() async {
    try {
      final activity = await Permission.activityRecognition.request();
      final location = await Permission.locationWhenInUse.request();
      return activity.isGranted && location.isGranted;
    } catch (e) {
      debugPrint('Error de permisos: $e');
      return false;
    }
  }

  @override
  Future<void> startTracking() async {
    if (_isTracking) return;
    _isTracking        = true;
    _isFallDetected    = false;
    _lastRunImpact     = null;
    _trackingStartTime = DateTime.now();
    _routePoints.clear();
    _gpsDistanceKm = 0.0;
    _lastGpsPoint  = null;

    // ── GPS ─────────────────────────────────────────────────────
    _gpsSub = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 5, // nuevo punto cada 5 metros
      ),
    ).listen((pos) {
      final point = LocationPoint(
        latitude:  pos.latitude,
        longitude: pos.longitude,
        altitude:  pos.altitude,
        speed:     pos.speed,
        accuracy:  pos.accuracy,
        timestamp: pos.timestamp,
      );

      // Acumular distancia GPS si la precisión es aceptable
      if (pos.accuracy < 25) {
        if (_lastGpsPoint != null) {
          final d = _lastGpsPoint!.distanceTo(point) / 1000;
          if (d < 0.5) _gpsDistanceKm += d; // ignora saltos > 500m
        }
        _routePoints.add(point);
        _lastGpsPoint = point;
        _notifyState();
      }
    }, onError: (Object e) => debugPrint('GPS error: $e'));

    // ── Acelerómetro ─────────────────────────────────────────────
    _accelerometerSub = accelerometerEventStream().listen((event) {
      final double magnitude = math.sqrt(
        event.x * event.x + event.y * event.y + event.z * event.z,
      );

      // 1. Caída
      if (magnitude >= _fallThreshold) {
        if (!_isFallDetected) {
          _isFallDetected = true;
          _fallController.add(
            FallEvent(magnitude: magnitude, occurredAt: DateTime.now()),
          );
        }
        return;
      }

      if (_isFallDetected) return;

      // 2. Carrera
      if (magnitude >= _runThreshold) {
        _lastRunImpact = DateTime.now();
        if (_currentActivity != UserActivityType.running) {
          _currentActivity = UserActivityType.running;
          _notifyState();
        }
        return;
      }

      // 3. Caminata
      if (magnitude > _stepThreshold && magnitude < _runThreshold) {
        final lastRun          = _lastRunImpact;
        final stillInCooldown  = lastRun != null &&
            DateTime.now().difference(lastRun) < _runCooldown;
        if (stillInCooldown) return;

        if (DateTime.now().difference(_lastStepTime) > _stepCooldown) {
          _stepCount++;
          _lastStepTime = DateTime.now();
          if (_currentActivity != UserActivityType.walking) {
            _currentActivity = UserActivityType.walking;
          }
          _notifyState();
        }
        return;
      }

      // 4. Quieto por acelerómetro (respuesta rápida)
      if (magnitude <= _stepThreshold) {
        final sinceLastStep = DateTime.now().difference(_lastStepTime);
        if (sinceLastStep > const Duration(seconds: 3) &&
            _currentActivity != UserActivityType.stationary) {
          _currentActivity = UserActivityType.stationary;
          _lastRunImpact   = null;
          _notifyState();
        }
      }
    });

    // ── Reconocimiento nativo (confirmación extra) ────────────────
    _recognitionSub = _activityRecognition.activityStream.listen((nativeEvent) {
      if (nativeEvent.type == far.ActivityType.STILL && !_isFallDetected) {
        _lastRunImpact = null;
        if (_currentActivity != UserActivityType.stationary) {
          _currentActivity = UserActivityType.stationary;
          _notifyState();
        }
      }
    });
  }

  @override
  Future<void> stopTracking() async {
    _isTracking        = false;
    _isFallDetected    = false;
    _lastRunImpact     = null;
    _trackingStartTime = null;
    await _accelerometerSub?.cancel();
    await _recognitionSub?.cancel();
    await _gpsSub?.cancel();
  }

  @override
  void clearFallStatus() {
    _isFallDetected = false;
  }

  // ── Expone los puntos GPS para que el Bloc los guarde ───────────
  List<LocationPoint> get routePoints => List.unmodifiable(_routePoints);

  String get routePointsJson {
    return jsonEncode(_routePoints.map((p) => {
      'lat':   p.latitude,
      'lon':   p.longitude,
      'alt':   p.altitude,
      'speed': p.speed,
      'acc':   p.accuracy,
      'time':  p.timestamp?.toIso8601String(),
    }).toList());
  }

  void _notifyState() {
    if (!_activityController.isClosed) {
      // Distancia: GPS si hay puntos suficientes, si no pasos
      final distanceKm = _routePoints.length >= 2
          ? _gpsDistanceKm
          : (_stepCount * _strideLength) / 1000;

      final calories = _stepCount * 0.05;
      final duration = _trackingStartTime != null
          ? DateTime.now().difference(_trackingStartTime!)
          : Duration.zero;

      _activityController.add(ActivityState(
        type:       _currentActivity,
        stepCount:  _stepCount,
        distanceKm: distanceKm,
        calories:   calories,
        duration:   duration,
      ));
    }
  }

  void resetData() {
    _stepCount     = 0;
    _isFallDetected = false;
    _lastRunImpact  = null;
    _gpsDistanceKm  = 0.0;
    _routePoints.clear();
    _lastGpsPoint   = null;
    _currentActivity = UserActivityType.stationary;
    _trackingStartTime = DateTime.now();
    _notifyState();
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\data\datasources\activity_repository.dart
================================================

import '../../../../core/database/database.dart';

/// Repository para gestionar registros de actividad física usando Drift
class ActivityRepository {
  final AppDatabase database;

  ActivityRepository(this.database);

  // ═══════════════════════════════════════════════════════════════
  // CREATE
  // ═══════════════════════════════════════════════════════════════

  /// Guardar nuevo registro de actividad
  Future<int> createActivity(ActivityRecordsCompanion activity) async {
    return await database.createActivity(activity);
  }

  // ═══════════════════════════════════════════════════════════════
  // READ
  // ═══════════════════════════════════════════════════════════════

  /// Obtener todos los registros ordenados por fecha desc
  Future<List<ActivityRecord>> getAllActivities() async {
    return await database.getAllActivities();
  }

  /// Obtener registros por rango de fechas
  Future<List<ActivityRecord>> getActivitiesByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) async {
    return await database.getActivitiesByDateRange(startDate, endDate);
  }

  /// Obtener registros del último día
  Future<List<ActivityRecord>> getTodayActivities() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    return await getActivitiesByDateRange(startOfDay, endOfDay);
  }

  /// Obtener registros de la semana
  Future<List<ActivityRecord>> getWeekActivities() async {
    final now = DateTime.now();
    final weekAgo = now.subtract(const Duration(days: 7));

    return await getActivitiesByDateRange(weekAgo, now);
  }

  /// Obtener registros del mes
  Future<List<ActivityRecord>> getMonthActivities() async {
    final now = DateTime.now();
    final monthAgo = now.subtract(const Duration(days: 30));

    return await getActivitiesByDateRange(monthAgo, now);
  }

  /// Obtener un registro por ID
  Future<ActivityRecord?> getActivityById(int id) async {
    return await database.getActivityById(id);
  }

  /// Obtener estadísticas totales
  Future<ActivityStats> getStats() async {
    return await database.getStats();
  }

  // ═══════════════════════════════════════════════════════════════
  // UPDATE
  // ═══════════════════════════════════════════════════════════════

  /// Actualizar un registro existente
  Future<bool> updateActivity(ActivityRecord activity) async {
    return await database.updateActivity(activity);
  }

  // ═══════════════════════════════════════════════════════════════
  // DELETE
  // ═══════════════════════════════════════════════════════════════

  /// Eliminar un registro por ID
  Future<bool> deleteActivity(int id) async {
    return await database.deleteActivity(id);
  }

  /// Eliminar todos los registros
  Future<int> deleteAllActivities() async {
    return await database.deleteAllActivities();
  }

  /// Eliminar registros anteriores a una fecha
  Future<int> deleteActivitiesBefore(DateTime date) async {
    return await database.deleteActivitiesBefore(date);
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\data\services\tts_service.dart
================================================

import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  final FlutterTts _tts = FlutterTts();
  bool _isInitialized = false;

  Future<void> init() async {
    if (_isInitialized) return;
    await _tts.setLanguage('es-ES');
    await _tts.setSpeechRate(0.5);
    await _tts.setVolume(1.0);
    _isInitialized = true;
  }

  Future<void> speak(String text) async {
    if (text.isEmpty) return;
    // ✅ No hacer await al stop para no bloquear
    _tts.stop();
    await _tts.speak(text);
  }

  Future<void> stop() async {
    await _tts.stop();
  }

  void dispose() {
    _tts.stop();
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\domain\entities\activity_record.dart
================================================

import 'package:equatable/equatable.dart';

/// Enum de tipos de actividad
enum ActivityRecordType {
  walking,
  running,
  stationary,
  unknown,
}

/// Modelo de registro de actividad física
class ActivityRecord extends Equatable {
  final int id;
  final String activityType;
  final DateTime startTime;
  final DateTime? endTime;
  final int stepCount;
  final double distanceKm;
  final double caloriesBurned;
  final DateTime createdAt;
  final double averageSpeed;
  final int durationSeconds;

  const ActivityRecord({
    this.id = 0,
    required this.activityType,
    required this.startTime,
    this.endTime,
    this.stepCount = 0,
    this.distanceKm = 0.0,
    this.caloriesBurned = 0.0,
    required this.createdAt,
    this.averageSpeed = 0.0,
    this.durationSeconds = 0,
  });

  /// Convertir String → enum ActivityRecordType
  ActivityRecordType get type {
    switch (activityType) {
      case 'walking':
        return ActivityRecordType.walking;
      case 'running':
        return ActivityRecordType.running;
      case 'stationary':
        return ActivityRecordType.stationary;
      default:
        return ActivityRecordType.unknown;
    }
  }

  /// Obtener etiqueta en español
  String get label {
    switch (type) {
      case ActivityRecordType.walking:
        return 'Caminando';
      case ActivityRecordType.running:
        return 'Corriendo';
      case ActivityRecordType.stationary:
        return 'Detenido';
      case ActivityRecordType.unknown:
        return 'Desconocido';
    }
  }

  /// Duración como texto formateado
  String get formattedDuration {
    final hours = durationSeconds ~/ 3600;
    final minutes = (durationSeconds % 3600) ~/ 60;
    final seconds = durationSeconds % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    }
    return '${minutes}m ${seconds}s';
  }

  /// Fecha formateada para UI
  String get formattedDate {
    return '${startTime.day}/${startTime.month}/${startTime.year} ${startTime.hour}:${startTime.minute.toString().padLeft(2, '0')}';
  }

  @override
  List<Object?> get props => [
    id,
    activityType,
    startTime,
    endTime,
    stepCount,
    distanceKm,
    caloriesBurned,
    createdAt,
    averageSpeed,
    durationSeconds,
  ];
}

          
================================================
📄 ARCHIVO: lib\features\activity\domain\entities\activity_state.dart
================================================

import 'package:equatable/equatable.dart';

enum UserActivityType { running, walking, stationary, unknown }

class ActivityState extends Equatable {
  final UserActivityType type;
  final int stepCount;
  final double distanceKm;
  final double calories;
  final Duration duration;

  const ActivityState({
    required this.type,
    required this.stepCount,
    this.distanceKm = 0.0,
    this.calories = 0.0,
    this.duration = Duration.zero,
  });

  ActivityState copyWith({
    UserActivityType? type,
    int? stepCount,
    double? distanceKm,
    double? calories,
    Duration? duration,
  }) {
    return ActivityState(
      type: type ?? this.type,
      stepCount: stepCount ?? this.stepCount,
      distanceKm: distanceKm ?? this.distanceKm,
      calories: calories ?? this.calories,
      duration: duration ?? this.duration,
    );
  }

  String get voiceMessage {
    return switch (type) {
      UserActivityType.running => "Estás corriendo.",
      UserActivityType.walking => "Estás caminando.",
      UserActivityType.stationary => "Estás en reposo.",
      _ => "",
    };
  }

  @override
  List<Object?> get props => [type, stepCount, distanceKm, calories, duration];
}

          
================================================
📄 ARCHIVO: lib\features\activity\domain\entities\fall_event.dart
================================================

import 'package:equatable/equatable.dart';

class FallEvent extends Equatable {
  final double magnitude;
  final DateTime occurredAt;

  const FallEvent({
    required this.magnitude,
    required this.occurredAt,
  });

  @override
  List<Object?> get props => [magnitude, occurredAt];
}

          
================================================
📄 ARCHIVO: lib\features\activity\presentation\bloc\activity_bloc.dart
================================================

import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/datasources/activity_datasource.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../data/datasources/activity_repository.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
import '../../data/services/tts_service.dart';
import '../../../../../core/database/database.dart';

// --- EVENTOS ---
abstract class ActivityEvent extends Equatable {
  @override List<Object?> get props => [];
}
class ActivityStarted extends ActivityEvent {}
class ActivityStopped extends ActivityEvent {}

class ActivityChanged extends ActivityEvent {
  final ActivityState state;
  ActivityChanged(this.state);
  @override List<Object?> get props => [state];
}

class FallDetected extends ActivityEvent {
  final FallEvent event;
  FallDetected(this.event);
  @override List<Object?> get props => [event];
}

class FallConfirmed extends ActivityEvent {}
class FallDismissed  extends ActivityEvent {}

// --- ESTADOS ---
abstract class ActivityBlocState extends Equatable {
  @override List<Object?> get props => [];
}
class ActivityInitial  extends ActivityBlocState {}

class ActivityTracking extends ActivityBlocState {
  final ActivityState current;
  ActivityTracking(this.current);
  @override List<Object?> get props => [current];
}

class FallAlert extends ActivityBlocState {
  final FallEvent event;
  FallAlert(this.event);
  @override List<Object?> get props => [event];
}

// --- BLOC ---
class ActivityBloc extends Bloc<ActivityEvent, ActivityBlocState> {
  final ActivityDataSource    _dataSource;
  final TtsService            _ttsService;
  final ActivityRepository    _repository;

  StreamSubscription<ActivityState>? _activitySub;
  StreamSubscription<FallEvent>?     _fallSub;

  static const Duration _debounceDuration = Duration(milliseconds: 300);
  UserActivityType? _lastAnnouncedType;
  UserActivityType? _pendingType;
  Timer?            _debounceTimer;

  DateTime?      _sessionStart;
  ActivityState? _lastState;
  // ✅ Guardamos el tiempo real en el momento de detener, antes de resetear datasource
  Duration?      _finalDuration;

  static final ActivityState _emptyState = ActivityState(
    type: UserActivityType.unknown,
    stepCount: 0,
  );

  ActivityBloc({
    required ActivityDataSource  dataSource,
    required TtsService          ttsService,
    required ActivityRepository  repository,
  })  : _dataSource = dataSource,
        _ttsService  = ttsService,
        _repository  = repository,
        super(ActivityInitial()) {
    // ✅ transformer: sequential() evita que un ActivityChanged tardío
    // se procese después de ActivityStopped y "resucite" datos viejos.
    on<ActivityStarted>(_onStarted, transformer: sequential());
    on<ActivityStopped>(_onStopped, transformer: sequential());
    on<ActivityChanged>(_onActivityChanged, transformer: sequential());
    on<FallDetected>  (_onFallDetected,  transformer: sequential());
    on<FallConfirmed> (_onFallConfirmed, transformer: sequential());
    on<FallDismissed> (_onFallDismissed, transformer: sequential());
  }

  Future<void> _onStarted(ActivityStarted event, Emitter<ActivityBlocState> emit) async {
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) return;

    await _ttsService.init();
    _lastAnnouncedType = UserActivityType.stationary;
    _sessionStart      = DateTime.now();
    _lastState         = null;
    _finalDuration     = null;

    emit(ActivityTracking(_emptyState));
    await _dataSource.startTracking();

    _activitySub = _dataSource.activityStream.listen((s) {
      _lastState = s;
      add(ActivityChanged(s));
    });
    _fallSub = _dataSource.fallStream.listen((f) => add(FallDetected(f)));
  }

  Future<void> _onStopped(ActivityStopped event, Emitter<ActivityBlocState> emit) async {
    // ✅ Capturar duración ANTES de cancelar suscripciones y detener datasource
    final start = _sessionStart;
    _finalDuration = start != null ? DateTime.now().difference(start) : _lastState?.duration;

    await _cancelSubscriptions();
    await _saveSession();
    await _dataSource.stopTracking();

    // ✅ Limpieza completa del estado interno para que el próximo
    // ActivityStarted arranque desde cero, sin restos de la sesión anterior.
    _lastState     = null;
    _sessionStart  = null;
    _finalDuration = null;

    emit(ActivityInitial());
  }

  void _onActivityChanged(ActivityChanged event, Emitter<ActivityBlocState> emit) {
    if (state is FallAlert) return;

    final incoming = event.state.type;
    if (incoming != _lastAnnouncedType && incoming != UserActivityType.unknown) {
      _debounceTimer?.cancel();
      _pendingType = incoming;
      _debounceTimer = Timer(_debounceDuration, () {
        if (_pendingType != null && _pendingType != _lastAnnouncedType) {
          _ttsService.speak(event.state.voiceMessage);
          _lastAnnouncedType = _pendingType;
          _pendingType = null;
        }
      });
    }

    emit(ActivityTracking(event.state));
  }

  Future<void> _onFallDetected(FallDetected event, Emitter<ActivityBlocState> emit) async {
    _debounceTimer?.cancel();
    _pendingType = null;
    emit(FallAlert(event.event));
    unawaited(_ttsService.speak('¡Atención! Se detectó una posible caída. ¿Estás bien?'));
  }

  Future<void> _onFallConfirmed(FallConfirmed event, Emitter<ActivityBlocState> emit) async {
    _dataSource.clearFallStatus();
    _lastAnnouncedType = UserActivityType.stationary;
    _pendingType = null;
    emit(ActivityTracking(_lastState ?? _emptyState));
    unawaited(_ttsService.speak('Me alegra que estés bien. Continuamos.'));
  }

  Future<void> _onFallDismissed(FallDismissed event, Emitter<ActivityBlocState> emit) async {
    _dataSource.clearFallStatus();
    _lastAnnouncedType = UserActivityType.stationary;
    _pendingType = null;
    emit(ActivityTracking(_lastState ?? _emptyState));
  }

  Future<void> _saveSession() async {
    final s     = _lastState;
    final start = _sessionStart;
    if (s == null || start == null || s.stepCount == 0) return;

    // ✅ Usar _finalDuration capturado antes de detener, o calcular desde sessionStart
    final duration = _finalDuration ?? DateTime.now().difference(start);

    final ActivityDataSourceImpl? impl = _dataSource is ActivityDataSourceImpl
      ? _dataSource
      : null;
    final routeJson = impl?.routePoints.isNotEmpty == true
        ? impl!.routePointsJson
        : null;

    final now = DateTime.now();
    try {
      await _repository.createActivity(ActivityRecordsCompanion(
        activityType:    Value(_typeToString(s.type)),
        startTime:       Value(start),
        endTime:         Value(now),
        stepCount:       Value(s.stepCount),
        distanceKm:      Value(s.distanceKm),
        caloriesBurned:  Value(s.calories),
        durationSeconds: Value(duration.inSeconds), // ✅ tiempo real
        averageSpeed:    Value(
          duration.inSeconds > 0
              ? s.distanceKm / (duration.inSeconds / 3600)
              : 0.0,
        ),
        createdAt:       Value(now),
        routePointsJson: Value(routeJson),
      ));
    } catch (e) {
      debugPrint('Error guardando sesión: $e');
    }
  }

  String _typeToString(UserActivityType type) => switch (type) {
    UserActivityType.running    => 'running',
    UserActivityType.walking    => 'walking',
    UserActivityType.stationary => 'stationary',
    UserActivityType.unknown    => 'unknown',
  };

  Future<void> _cancelSubscriptions() async {
    await _activitySub?.cancel();
    await _fallSub?.cancel();
    _debounceTimer?.cancel();
    _lastAnnouncedType = null;
    _pendingType       = null;
  }

  @override
  Future<void> close() async {
    final start = _sessionStart;
    _finalDuration = start != null ? DateTime.now().difference(start) : _lastState?.duration;
    await _cancelSubscriptions();
    await _saveSession();
    _ttsService.dispose();
    return super.close();
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\presentation\pages\activity_page.dart
================================================


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_bloc.dart';
import '../../domain/entities/activity_state.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  bool _isMonitoring = false;

  // ✅ Eliminado FlutterTts y _lastSpokenActivity — el Bloc ya maneja el audio

  void _toggleMonitoring(bool start) {
    setState(() => _isMonitoring = start);
    context.read<ActivityBloc>().add(start ? ActivityStarted() : ActivityStopped());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detector de Actividad', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 93, 0, 255),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocListener<ActivityBloc, ActivityBlocState>(
        listener: (context, state) {
          // ✅ Solo reacciona a caídas, sin tocar TTS
          if (state is FallAlert) {
            _showFallDialog();
          }
        },
        child: BlocBuilder<ActivityBloc, ActivityBlocState>(
          builder: (context, state) {
            final data = state is ActivityTracking ? state.current : null;
            final km = data?.distanceKm ?? 0.0;
            final cal = data?.calories ?? 0.0;
            final time = data?.duration ?? Duration.zero;
            final config = _getActivityConfig(state);

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatItem("KM", km.toStringAsFixed(2)),
                          _buildStatItem("KCAL", cal.toStringAsFixed(0)),
                          _buildStatItem("TIEMPO", _formatDuration(time)),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Icon(config.icon, size: 120, color: config.color),
                  const SizedBox(height: 10),
                  Text(
                    config.label.toUpperCase(),
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: config.color),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () => _toggleMonitoring(!_isMonitoring),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isMonitoring ? Colors.redAccent : Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        _isMonitoring ? "DETENER MONITOREO" : "INICIAR MONITOREO",
                        style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // ✅ Formato mm:ss en lugar de solo minutos
  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  Widget _buildStatItem(String title, String value) => Column(
        children: [
          Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      );

  ({IconData icon, Color color, String label}) _getActivityConfig(ActivityBlocState state) {
    if (!_isMonitoring) {
      return (icon: Icons.play_circle_fill, color: Colors.grey, label: "Detenido");
    }
    if (state is FallAlert) {
      return (icon: Icons.warning_amber_rounded, color: Colors.red, label: "¡CAÍDA!");
    }
    if (state is ActivityTracking) {
      return switch (state.current.type) {
        UserActivityType.running    => (icon: Icons.directions_run,     color: Colors.redAccent, label: "Corriendo"),
        UserActivityType.walking    => (icon: Icons.directions_walk,    color: Colors.blue,      label: "Caminando"),
        UserActivityType.stationary => (icon: Icons.accessibility_new,  color: Colors.green,     label: "En reposo"),
        UserActivityType.unknown    => (icon: Icons.help_outline,       color: Colors.amber,     label: "Analizando"),
      };
    }
    return (icon: Icons.circle_outlined, color: Colors.grey, label: "...");
  }

  void _showFallDialog() {
    // Evitar mostrar el diálogo si ya está visible
    if (!mounted) return;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('⚠️ ¡Alerta de Impacto!'),
        content: const Text('Se ha detectado una caída. ¿Te encuentras bien?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<ActivityBloc>().add(FallConfirmed());
              // ✅ El TtsService del Bloc habla, no la página
            },
            child: const Text('ESTOY BIEN', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\presentation\pages\historial_page.dart
================================================

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/datasources/activity_repository.dart';
import '../../../../core/database/database.dart';
import '../../../../../injection_container.dart';

class HistorialPage extends StatefulWidget {
  final void Function(VoidCallback reload)? onRegisterReload;
  const HistorialPage({super.key, this.onRegisterReload});

  @override
  State<HistorialPage> createState() => _HistorialPageState();
}

class _HistorialPageState extends State<HistorialPage> {
  final ActivityRepository _repository = sl<ActivityRepository>();
  List<ActivityRecord> _records = [];
  ActivityStats?       _stats;
  bool                 _isLoading = false;

  // ✅ Mapa de títulos/descripciones personalizados, indexados por id de registro
  Map<int, String> _customTitles = {};
  Map<int, String> _customDescs  = {};

  static const _purple      = Color(0xFF6C47FF);
  static const _purpleLight = Color(0xFFEDE9FF);
  static const _bg          = Color(0xFFF7F6FB);
  static const _textDark    = Color(0xFF1A1A2E);
  static const _textGrey    = Color(0xFF8F8FA0);

  @override
  void initState() {
    super.initState();
    widget.onRegisterReload?.call(loadAllRecords);
    loadAllRecords();
  }

  Future<void> loadAllRecords() async {
    setState(() => _isLoading = true);
    try {
      final records = await _repository.getAllActivities();
      final stats   = await _repository.getStats();
      await _loadCustomNames(records); // ✅ carga nombres personalizados
      if (mounted) setState(() { _records = records; _stats = stats; });
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  // ✅ Carga todos los títulos/descripciones guardados para los registros actuales
  Future<void> _loadCustomNames(List<ActivityRecord> records) async {
    final prefs = await SharedPreferences.getInstance();
    final titles = <int, String>{};
    final descs  = <int, String>{};
    for (final r in records) {
      final t = prefs.getString('activity_title_${r.id}');
      final d = prefs.getString('activity_desc_${r.id}');
      if (t != null) titles[r.id] = t;
      if (d != null) descs[r.id]  = d;
    }
    _customTitles = titles;
    _customDescs  = descs;
  }

  Future<void> _deleteRecord(int id) async {
    await _repository.deleteActivity(id);
    // ✅ Limpia también el nombre personalizado guardado, si existía
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('activity_title_$id');
    await prefs.remove('activity_desc_$id');
    loadAllRecords();
  }

  Future<void> _confirmDeleteAll() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('¿Eliminar todo?'),
        content: const Text('Esta acción no se puede deshacer.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Eliminar', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
    if (ok == true) {
      // ✅ Limpia todos los nombres personalizados guardados
      final prefs = await SharedPreferences.getInstance();
      for (final r in _records) {
        await prefs.remove('activity_title_${r.id}');
        await prefs.remove('activity_desc_${r.id}');
      }
      await _repository.deleteAllActivities();
      loadAllRecords();
    }
  }

  void _openDetail(ActivityRecord record, int index) {
    Navigator.push(context, MaterialPageRoute<void>(
      builder: (_) => _ActivityDetailPage(
        record: record,
        sessionNumber: _records.length - index, // sesión más reciente = número mayor
        repository: _repository,
        onUpdated: loadAllRecords,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _purple,
        title: const Text('Historial', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
        actions: [
          IconButton(onPressed: loadAllRecords, icon: const Icon(Icons.refresh, color: Colors.white)),
          if (_records.isNotEmpty)
            IconButton(onPressed: _confirmDeleteAll,
              icon: const Icon(Icons.delete_sweep_outlined, color: Colors.white), tooltip: 'Eliminar todo'),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: _purple))
          : _records.isEmpty ? _buildEmpty()
          : CustomScrollView(slivers: [
              SliverToBoxAdapter(child: _buildStatsSection()),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                sliver: SliverList(delegate: SliverChildBuilderDelegate(
                  (context, i) => _buildActivityCard(_records[i], i),
                  childCount: _records.length,
                )),
              ),
            ]),
    );
  }

  Widget _buildEmpty() => Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(color: _purpleLight, shape: BoxShape.circle),
        child: const Icon(Icons.directions_walk, size: 48, color: _purple)),
      const SizedBox(height: 20),
      const Text('Sin actividades aún', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: _textDark)),
      const SizedBox(height: 8),
      const Text('Inicia el monitoreo para\nver tu historial aquí',
        textAlign: TextAlign.center, style: TextStyle(color: _textGrey, fontSize: 14)),
    ]),
  );

  Widget _buildStatsSection() {
    final s = _stats!;
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [_purple, Color(0xFF9B70FF)],
          begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: _purple.withValues(alpha: 0.3), blurRadius: 16, offset: const Offset(0, 6))],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('${s.totalActivities} sesiones registradas',
          style: const TextStyle(color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w500)),
        const SizedBox(height: 16),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _statPill(Icons.directions_walk, _fmt(s.totalSteps), 'pasos'),
          _statPill(Icons.straighten, '${s.totalDistanceKm.toStringAsFixed(1)} km', 'distancia'),
          _statPill(Icons.local_fire_department, s.totalCaloriesBurned.toStringAsFixed(0), 'kcal'),
        ]),
      ]),
    );
  }

  Widget _statPill(IconData icon, String value, String label) => Column(children: [
    Container(padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(12)),
      child: Icon(icon, color: Colors.white, size: 20)),
    const SizedBox(height: 6),
    Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
    Text(label, style: const TextStyle(color: Colors.white70, fontSize: 11)),
  ]);

  Widget _buildActivityCard(ActivityRecord record, int index) {
    final config      = _activityConfig(record.type);
    final points      = record.points;
    final hasRoute    = points.length >= 2;
    final sessionNum  = _records.length - index;

    // ✅ Usa el título/descripción personalizado si existe, si no el valor por defecto
    final title = _customTitles[record.id] ?? 'Rutina $sessionNum';
    final desc  = _customDescs[record.id]  ?? record.label;

    return GestureDetector(
      onTap: () => _openDetail(record, index),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.06), blurRadius: 10, offset: const Offset(0, 4))]),
        child: Column(children: [
          // Mini mapa
          if (hasRoute)
            ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: SizedBox(height: 110, child: _MiniRouteMap(points: points))),

          Padding(padding: const EdgeInsets.all(14), child: Row(children: [
            Container(padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: config.color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(14)),
              child: Icon(config.icon, color: config.color, size: 22)),
            const SizedBox(width: 12),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // ✅ Título personalizado (o por defecto)
              Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: _textDark)),
              const SizedBox(height: 2),
              // ✅ Descripción personalizada + fecha
              Text('$desc · ${record.formattedDate}',
                style: const TextStyle(fontSize: 12, color: _textGrey)),
            ])),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              _badge('${record.stepCount} pasos', _purple),
              const SizedBox(height: 4),
              Text(record.formattedDuration, style: const TextStyle(fontSize: 12, color: _textGrey)),
            ]),
            const SizedBox(width: 4),
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Color(0xFFCCC5FF), size: 20),
              onPressed: () => _deleteRecord(record.id),
              padding: EdgeInsets.zero, constraints: const BoxConstraints()),
          ])),

          Padding(padding: const EdgeInsets.fromLTRB(14, 0, 14, 14), child: Row(children: [
            _quickStat(Icons.straighten, '${record.distanceKm.toStringAsFixed(2)} km'),
            const SizedBox(width: 12),
            _quickStat(Icons.local_fire_department, '${record.caloriesBurned.toStringAsFixed(0)} kcal'),
            const SizedBox(width: 12),
            _quickStat(Icons.speed, '${record.averageSpeed.toStringAsFixed(1)} km/h'),
            if (hasRoute) ...[
              const SizedBox(width: 12),
              _quickStat(Icons.gps_fixed, '${points.length} pts', color: _purple),
            ],
          ])),
        ]),
      ),
    );
  }

  Widget _badge(String text, Color color) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
    decoration: BoxDecoration(color: color.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(8)),
    child: Text(text, style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w600)));

  Widget _quickStat(IconData icon, String text, {Color color = _textGrey}) => Row(children: [
    Icon(icon, size: 13, color: color), const SizedBox(width: 3),
    Text(text, style: TextStyle(fontSize: 11, color: color))]);

  ({IconData icon, Color color}) _activityConfig(ActivityRecordType type) => switch (type) {
    ActivityRecordType.walking    => (icon: Icons.directions_walk,   color: Colors.blue),
    ActivityRecordType.running    => (icon: Icons.directions_run,    color: Colors.redAccent),
    ActivityRecordType.stationary => (icon: Icons.accessibility_new, color: Colors.green),
    ActivityRecordType.unknown    => (icon: Icons.help_outline,      color: Colors.grey),
  };

  String _fmt(int n) => n >= 1000 ? '${(n / 1000).toStringAsFixed(1)}k' : n.toString();
}

// ─── MINI MAPA ───────────────────────────────────────────────────────────────

class _MiniRouteMap extends StatelessWidget {
  final List<dynamic> points;
  const _MiniRouteMap({required this.points});

  @override
  Widget build(BuildContext context) {
    final latlngs = points
        .where((p) => p.latitude != null && p.longitude != null)
        .map((p) => LatLng(p.latitude as double, p.longitude as double))
        .toList();

    if (latlngs.length < 2) return const SizedBox.shrink();

    final avgLat = latlngs.fold(0.0, (s, p) => s + p.latitude) / latlngs.length;
    final avgLng = latlngs.fold(0.0, (s, p) => s + p.longitude) / latlngs.length;

    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(avgLat, avgLng),
        initialZoom: 15,
        interactionOptions: const InteractionOptions(flags: InteractiveFlag.none),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.tuinstituto.fitness_tracker',
          maxZoom: 19,
        ),
        PolylineLayer(polylines: [
          Polyline(points: latlngs, color: const Color(0xFF6C47FF), strokeWidth: 3.5)]),
        MarkerLayer(markers: [
          Marker(point: latlngs.first, width: 14, height: 14,
            child: Container(decoration: const BoxDecoration(color: Colors.green,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)]))),
          Marker(point: latlngs.last, width: 14, height: 14,
            child: Container(decoration: const BoxDecoration(color: Colors.red,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)]))),
        ]),
      ],
    );
  }
}

// ─── DETALLE + EDITAR ────────────────────────────────────────────────────────

class _ActivityDetailPage extends StatefulWidget {
  final ActivityRecord     record;
  final int                sessionNumber;
  final ActivityRepository repository;
  final VoidCallback       onUpdated;

  const _ActivityDetailPage({
    required this.record,
    required this.sessionNumber,
    required this.repository,
    required this.onUpdated,
  });

  @override
  State<_ActivityDetailPage> createState() => _ActivityDetailPageState();
}

class _ActivityDetailPageState extends State<_ActivityDetailPage> {
  static const _purple = Color(0xFF6C47FF);

  late ActivityRecord _record;
  bool _editing = false;

  late TextEditingController _titleCtrl;
  late TextEditingController _descCtrl;

  @override
  void initState() {
    super.initState();
    _record    = widget.record;
    _titleCtrl = TextEditingController(text: 'Rutina ${widget.sessionNumber}');
    _descCtrl  = TextEditingController(text: _record.label);
    _loadCustomNames(); // ✅ carga lo previamente guardado, si existe
  }

  @override
  void dispose() {
    _titleCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  // ✅ Carga título/descripción guardados para este registro específico
  Future<void> _loadCustomNames() async {
    final prefs = await SharedPreferences.getInstance();
    final title = prefs.getString('activity_title_${_record.id}');
    final desc  = prefs.getString('activity_desc_${_record.id}');
    if (mounted) {
      setState(() {
        if (title != null) _titleCtrl.text = title;
        if (desc  != null) _descCtrl.text  = desc;
      });
    }
  }

  // ✅ Ahora sí persiste los cambios en almacenamiento local
  Future<void> _saveChanges() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('activity_title_${_record.id}', _titleCtrl.text);
    await prefs.setString('activity_desc_${_record.id}',  _descCtrl.text);

    setState(() => _editing = false);
    widget.onUpdated(); // recarga el historial para reflejar el cambio en la lista
    if (mounted) ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Nombre actualizado'), backgroundColor: _purple));
  }

  @override
  Widget build(BuildContext context) {
    final points   = _record.points;
    final hasRoute = points.length >= 2;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F6FB),
      appBar: AppBar(
        backgroundColor: _purple,
        foregroundColor: Colors.white,
        title: _editing
            ? TextField(
                controller: _titleCtrl,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(border: InputBorder.none),
              )
            : Text(_titleCtrl.text,
                style: const TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
        actions: [
          if (_editing)
            IconButton(onPressed: _saveChanges, icon: const Icon(Icons.check))
          else
            IconButton(onPressed: () => setState(() => _editing = true),
              icon: const Icon(Icons.edit_outlined)),
        ],
      ),
      body: ListView(children: [
        if (hasRoute)
          SizedBox(height: 260, child: _MiniRouteMap(points: points))
        else
          Container(height: 120, color: const Color(0xFFEDE9FF),
            child: const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.location_off, color: Color(0xFF9B70FF), size: 32),
              SizedBox(height: 6),
              Text('Sin datos GPS para esta sesión',
                style: TextStyle(color: Color(0xFF9B70FF), fontSize: 13)),
            ]))),

        Padding(padding: const EdgeInsets.all(16), child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [

          if (_editing)
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14),
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 8, offset: const Offset(0, 3))]),
              child: TextField(
                controller: _descCtrl,
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  labelText: 'Descripción',
                  labelStyle: TextStyle(fontSize: 11, color: Color(0xFF8F8FA0)),
                  border: InputBorder.none,
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(_descCtrl.text,
                style: const TextStyle(color: Color(0xFF8F8FA0), fontSize: 13)),
            ),

          Text(_record.formattedDate,
            style: const TextStyle(color: Color(0xFF8F8FA0), fontSize: 12)),
          const SizedBox(height: 16),

          _buildReadGrid(),

          if (hasRoute) ...[
            const SizedBox(height: 20),
            _buildGpsStats(points),
          ],

          if (_editing) ...[
            const SizedBox(height: 20),
            SizedBox(width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _saveChanges,
                icon: const Icon(Icons.save_outlined),
                label: const Text('Guardar'),
                style: ElevatedButton.styleFrom(backgroundColor: _purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              )),
            const SizedBox(height: 8),
            Center(child: TextButton(
              onPressed: () => setState(() => _editing = false),
              child: const Text('Cancelar', style: TextStyle(color: Color(0xFF8F8FA0))))),
          ],
        ])),
      ]),
    );
  }

  Widget _buildReadGrid() => GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    mainAxisSpacing: 12, crossAxisSpacing: 12,
    childAspectRatio: 1.6,
    children: [
      _detailCard('Pasos',      '${_record.stepCount}',                              Icons.directions_walk,      Colors.blue),
      _detailCard('Distancia',  '${_record.distanceKm.toStringAsFixed(2)} km',       Icons.straighten,           Colors.green),
      _detailCard('Calorías',   '${_record.caloriesBurned.toStringAsFixed(0)} kcal', Icons.local_fire_department, Colors.orange),
      _detailCard('Duración',   _record.formattedDuration,                           Icons.timer,                _purple),
      _detailCard('Vel. media', '${_record.averageSpeed.toStringAsFixed(1)} km/h',   Icons.speed,                Colors.teal),
      _detailCard('Tipo',       _record.label,                                       Icons.category,             Colors.indigo),
    ],
  );

  Widget _detailCard(String label, String value, IconData icon, Color color) => Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16),
      boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05),
        blurRadius: 8, offset: const Offset(0, 3))]),
    child: Row(children: [
      Container(padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(10)),
        child: Icon(icon, color: color, size: 18)),
      const SizedBox(width: 10),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold,
          fontSize: 14, color: Color(0xFF1A1A2E))),
        Text(label, style: const TextStyle(fontSize: 11, color: Color(0xFF8F8FA0))),
      ])),
    ]),
  );

  Widget _buildGpsStats(List<dynamic> points) {
    double maxSpeed = 0, totalAlt = 0;
    for (final p in points) {
      if ((p.speed as double) > maxSpeed) maxSpeed = p.speed as double;
      totalAlt += p.altitude as double;
    }
    final avgAlt = totalAlt / points.length;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 8, offset: const Offset(0, 3))]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Row(children: [
          Icon(Icons.gps_fixed, color: _purple, size: 18), SizedBox(width: 6),
          Text('Datos GPS', style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 14, color: Color(0xFF1A1A2E))),
        ]),
        const SizedBox(height: 14),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _gpsStat('Vel. máx.', '${(maxSpeed * 3.6).toStringAsFixed(1)} km/h', Icons.speed),
          _gpsStat('Altitud',   '${avgAlt.toStringAsFixed(0)} m',               Icons.terrain),
          _gpsStat('Puntos',    '${points.length}',                              Icons.location_on),
        ]),
      ]),
    );
  }

  Widget _gpsStat(String label, String value, IconData icon) => Column(children: [
    Icon(icon, color: _purple, size: 20), const SizedBox(height: 4),
    Text(value, style: const TextStyle(fontWeight: FontWeight.bold,
      fontSize: 14, color: Color(0xFF1A1A2E))),
    Text(label, style: const TextStyle(fontSize: 11, color: Color(0xFF8F8FA0))),
  ]);
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\datasources\accelerometer_datasource.dart
================================================

import '../../domain/entities/step_data.dart';

/// Contrato abstracto para el DataSource del Acelerómetro.
/// La UI y los BLoCs SOLO deben conocer y depender de esta interfaz.
abstract class AccelerometerDataSource {
  Stream<StepData> get stepStream;

  Future<void> startCounting();
  Future<void> stopCounting();
  Future<bool> requestPermissions();
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\datasources\accelerometer_datasource_impl.dart
================================================

import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import '../../domain/entities/step_data.dart';
import 'accelerometer_datasource.dart'; // Importa el contrato

class AccelerometerDataSourceImpl implements AccelerometerDataSource {
  // ── 1. CONFIGURACIÓN FILTROS Y UMBRALES CORREGIDOS ──────────────────────
  static const double _alpha = 0.85; 
  static const double _stepThreshold = 1.35; 
  static const int _minStepIntervalMs = 360;

  // ── ESTRUCTURA DE ESTADO INTERNO ÚNICO ──────────────────────────────────
  int _stepCount = 0;
  double _gx = 0.0, _gy = 9.8, _gz = 0.0; // Componentes de gravedad por eje
  double _lastMotionMagnitude = 0.0;
  int _lastStepTime = 0;

  // Lazy & Broadcast: se crea una sola vez al inyectarse y se comparte limpiamente
  late final Stream<StepData> _sharedStream = _buildStream();

  Stream<StepData> _buildStream() {
    return accelerometerEventStream(
      samplingPeriod: SensorInterval.normalInterval, // ~50Hz constante
    ).map((AccelerometerEvent e) {
      final int now = DateTime.now().millisecondsSinceEpoch;

      // ── PASO 1: FILTRADO VECTORIAL DE GRAVEDAD (Low-Pass por componente) ──
      _gx = (_alpha * _gx) + ((1.0 - _alpha) * e.x);
      _gy = (_alpha * _gy) + ((1.0 - _alpha) * e.y);
      _gz = (_alpha * _gz) + ((1.0 - _alpha) * e.z);

      // ── PASO 2: EXTRACCIÓN DE ACELERACIÓN LINEAL NETO (High-Pass) ──
      final double userX = e.x - _gx;
      final double userY = e.y - _gy;
      final double userZ = e.z - _gz;

      final double motionMagnitude = sqrt(userX * userX + userY * userY + userZ * userZ);
      final double rawMagnitude = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);

      // ── PASO 3: DETECTOR DE PICOS CON DERIVADA NEGATIVA ──
      final bool isPeak = motionMagnitude > _stepThreshold &&
          motionMagnitude < _lastMotionMagnitude && 
          _lastMotionMagnitude >= _stepThreshold &&
          (now - _lastStepTime) > _minStepIntervalMs;

      if (isPeak) {
        _stepCount++;
        _lastStepTime = now;
      }

      _lastMotionMagnitude = motionMagnitude;

      // ── PASO 4: CLASIFICACIÓN DE ACTIVIDAD ASOCIADA ──
      final ActivityType type;
      if (motionMagnitude > 4.2) {
        type = ActivityType.running;
      } else if (motionMagnitude > _stepThreshold) {
        type = ActivityType.walking;
      } else {
        type = ActivityType.stationary;
      }

      return StepData(
        stepCount: _stepCount,
        activityType: type,
        magnitude: rawMagnitude,
      );
    }).asBroadcastStream(); // Permite múltiples escuchas sin duplicar subprocesos nativos
  }

  @override
  Stream<StepData> get stepStream => _sharedStream;

  @override
  Future<void> startCounting() async {
    _stepCount = 0;
    _gx = 0.0;
    _gy = 9.8;
    _gz = 0.0;
    _lastMotionMagnitude = 0.0;
    _lastStepTime = 0;
    debugPrint('⚡ AccelerometerDataSource: Conteo de pasos vectorizado e iniciado.');
  }

  @override
  Future<void> stopCounting() async {
    debugPrint('🛑 AccelerometerDataSource: Conteo detenido. Pasos finales: $_stepCount');
  }

  @override
  Future<bool> requestPermissions() async {
    final activityStatus = await Permission.activityRecognition.request();
    return activityStatus.isGranted;
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\datasources\biometric_datasource.dart
================================================

import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';
import '../../domain/entities/auth_result.dart';

abstract class BiometricDataSource {
  Future<bool> canAuthenticate();
  Future<List<BiometricType>> getAvailableBiometrics();
  Future<AuthResult> authenticate();
}

class BiometricDataSourceImpl implements BiometricDataSource {
  final LocalAuthentication _localAuth = LocalAuthentication();

  static const String _reason =
      'Autentica con huella dactilar para acceder a Fitness Tracker';

  @override
  Future<bool> canAuthenticate() async {
    try {
      return await _localAuth.canCheckBiometrics;
    } catch (e) {
      debugPrint('❌ Error verificando soporte biométrico: $e');
      return false;
    }
  }

  @override
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuth.getAvailableBiometrics();
    } catch (e) {
      debugPrint('❌ Error obteniendo biométricos disponibles: $e');
      return [];
    }
  }

  @override
  Future<AuthResult> authenticate() async {
    try {
      final isAuthenticated = await _localAuth.authenticate(
        localizedReason: _reason,
        // ✅ local_auth 3.x: parámetros directos, sin options
        biometricOnly: false,
        sensitiveTransaction: true,
        persistAcrossBackgrounding: true, // equivale a stickyAuth
      );

      return AuthResult(
        success: isAuthenticated,
        message: isAuthenticated
            ? 'Autenticación exitosa ✓'
            : 'Autenticación cancelada',
      );
    } on Exception catch (e) {
      return AuthResult(
        success: false,
        message: 'Error de autenticación: ${e.toString()}',
      );
    }
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\domain\entities\auth_result.dart
================================================

import 'package:equatable/equatable.dart';

/// Resultado de la autenticación biométrica
class AuthResult extends Equatable {
  final bool success;
  final String? message;

  const AuthResult({
    required this.success,
    this.message,
  });

  @override
  List<Object?> get props => [success, message];
}


          
================================================
📄 ARCHIVO: lib\features\auth\domain\entities\step_data.dart
================================================

import 'package:equatable/equatable.dart';

/// Tipos de actividad detectados
enum ActivityType {
  stationary,  // Quieto
  walking,     // Caminando
  running,     // Corriendo
}

/// Datos del acelerómetro
class StepData extends Equatable {
  final int stepCount;
  final ActivityType activityType;
  final double magnitude;

  const StepData({
    required this.stepCount,
    required this.activityType,
    required this.magnitude,
  });

  /// Calorías estimadas (0.04 cal por paso)
  double get estimatedCalories => stepCount * 0.04;

  /// Factory para crear desde Map del Platform Channel
  factory StepData.fromMap(Map<dynamic, dynamic> map) {
    final activityTypeString = map['activityType'] as String;

    return StepData(
      stepCount: map['stepCount'] as int,
      activityType: _parseActivityType(activityTypeString),
      magnitude: (map['magnitude'] as num).toDouble(),
    );
  }

  static ActivityType _parseActivityType(String type) {
    switch (type) {
      case 'walking':
        return ActivityType.walking;
      case 'running':
        return ActivityType.running;
      default:
        return ActivityType.stationary;
    }
  }

  @override
  List<Object> get props => [stepCount, activityType, magnitude];
}


          
================================================
📄 ARCHIVO: lib\features\auth\domain\usecases\authenticate_user.dart
================================================

import '../entities/auth_result.dart';
import '../../data/datasources/biometric_datasource.dart';

/// Use Case: lógica de negocio de autenticación
class AuthenticateUser {
  final BiometricDataSource dataSource;

  AuthenticateUser(this.dataSource);

  Future<AuthResult> call() async {
    // Verificar si el dispositivo soporta biometría
    final canAuth = await dataSource.canAuthenticate();

    if (!canAuth) {
      return const AuthResult(
        success: false,
        message: 'Biometría no disponible',
      );
    }

    // Autenticar
    return await dataSource.authenticate();
  }
}


          
================================================
📄 ARCHIVO: lib\features\auth\presentation\bloc\auth_bloc.dart
================================================

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/usecases/authenticate_user.dart';
import '../../domain/entities/auth_result.dart';

// EVENTS
abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticateRequested extends AuthEvent {}

// STATES
abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final AuthResult result;
  AuthSuccess(this.result);
  @override
  List<Object> get props => [result];
}

class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);
  @override
  List<Object> get props => [message];
}

// BLOC
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticateUser authenticateUser;

  AuthBloc(this.authenticateUser) : super(AuthInitial()) {
    on<AuthenticateRequested>(_onAuthenticateRequested);
  }

  Future<void> _onAuthenticateRequested(
    AuthenticateRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final result = await authenticateUser();
      if (result.success) {
        emit(AuthSuccess(result));
      } else {
        // ✅ message nunca es null en tu implementación, pero por seguridad
        emit(AuthFailure(result.message ?? 'Autenticación fallida'));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\presentation\pages\login_page.dart
================================================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback onAuthSuccess;

  const LoginPage({super.key, required this.onAuthSuccess});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            onAuthSuccess();
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                ),
              ),
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.fitness_center,
                        size: 100,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Fitness Tracker',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 48),

                      if (state is AuthLoading)
                        const CircularProgressIndicator(color: Colors.white)
                      else
                        ElevatedButton.icon(
                          onPressed: () {
                            context.read<AuthBloc>().add(AuthenticateRequested());
                          },
                          icon: const Icon(Icons.fingerprint),
                          label: const Text('Autenticar con Huella'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF6366F1),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


          
================================================
📄 ARCHIVO: lib\features\auth\steps\presentation\widgets\step_counter_widget.dart
================================================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitness_tracker/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:fitness_tracker/features/activity/domain/entities/activity_state.dart';

class StepCounterWidget extends StatelessWidget {
  const StepCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityBlocState>(
      builder: (context, state) {
        final data = state is ActivityTracking ? state.current : null;
        final steps = data?.stepCount ?? 0;
        final km = data?.distanceKm ?? 0.0;
        final cal = data?.calories ?? 0.0;
        final time = data?.duration ?? Duration.zero;
        final isFall = state is FallAlert;

        final config = _getConfig(state);

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(config.icon, size: 50, color: config.color),
                Text(
                  config.label.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: config.color,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  '$steps',
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const Text('PASOS', style: TextStyle(color: Colors.grey)),
                const Divider(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem("KM", km.toStringAsFixed(2)),
                    _buildStatItem("KCAL", cal.toStringAsFixed(0)),
                    _buildStatItem("TIEMPO", _formatDuration(time)),
                  ],
                ),
                // ✅ Sin botón — el control está en ActivityPage
                if (isFall)
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      '⚠️ Caída detectada',
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  ({IconData icon, Color color, String label}) _getConfig(ActivityBlocState state) {
    if (state is FallAlert) {
      return (icon: Icons.warning_amber_rounded, color: Colors.red, label: "¡Caída!");
    }
    if (state is ActivityTracking) {
      return switch (state.current.type) {
        UserActivityType.running    => (icon: Icons.directions_run,    color: Colors.redAccent, label: "Corriendo"),
        UserActivityType.walking    => (icon: Icons.directions_walk,   color: Colors.blue,      label: "Caminando"),
        UserActivityType.stationary => (icon: Icons.accessibility_new, color: Colors.green,     label: "En reposo"),
        UserActivityType.unknown    => (icon: Icons.help_outline,      color: Colors.amber,     label: "Analizando"),
      };
    }
    return (icon: Icons.pause_circle_outline, color: Colors.grey, label: "Detenido");
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\tracking\data\datasources\gps_datasource.dart
================================================

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../../domain/entities/location_point.dart';

abstract class GpsDataSource {
  Future<LocationPoint?> getCurrentLocation();
  Stream<LocationPoint> get locationStream;
  Future<bool> isLocationServiceEnabled();
  Future<bool> requestPermissions();
  Future<void> openLocationSettings();
}

class GpsDataSourceImpl implements GpsDataSource {
  // ✅ Stream persistente como campo, no recalculado en cada get
  late final Stream<LocationPoint> _locationStream = Geolocator.getPositionStream(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 5,
    ),
  ).map((Position position) => LocationPoint(
    latitude: position.latitude,
    longitude: position.longitude,
    altitude: position.altitude,
    speed: position.speed,
    accuracy: position.accuracy,
    timestamp: position.timestamp,
  ));

  @override
  Stream<LocationPoint> get locationStream => _locationStream;

  @override
  Future<LocationPoint?> getCurrentLocation() async {
    try {
      final isServiceEnabled = await isLocationServiceEnabled();
      if (!isServiceEnabled) return null;

      final position = await Geolocator.getCurrentPosition(
  locationSettings: const LocationSettings(
    accuracy: LocationAccuracy.best,
    timeLimit: Duration(seconds: 15),
  ),
);
      return _mapToEntity(position);
    } catch (e) {
      debugPrint('⚠️ Error GPS, intentando obtener última posición conocida: $e');
      final lastPosition = await Geolocator.getLastKnownPosition();
      return lastPosition != null ? _mapToEntity(lastPosition) : null;
    }
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<bool> requestPermissions() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.whileInUse ||
           permission == LocationPermission.always;
  }

  @override
  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }

  LocationPoint _mapToEntity(Position pos) {
    return LocationPoint(
      latitude: pos.latitude,
      longitude: pos.longitude,
      altitude: pos.altitude,
      speed: pos.speed,
      accuracy: pos.accuracy,
      timestamp: pos.timestamp,
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\tracking\domain\entities\location_point.dart
================================================

import 'package:equatable/equatable.dart';
import 'dart:math' as math;

/// Punto de ubicación GPS
class LocationPoint extends Equatable {
  final double latitude;
  final double longitude;
  final double altitude;
  final double speed;
  final double accuracy;
  final DateTime timestamp;

  const LocationPoint({
    required this.latitude,
    required this.longitude,
    this.altitude = 0,
    this.speed = 0,
    this.accuracy = 0,
    required this.timestamp,
  });

  factory LocationPoint.fromMap(Map<dynamic, dynamic> map) {
    return LocationPoint(
      latitude: (map['latitude'] as num).toDouble(),
      longitude: (map['longitude'] as num).toDouble(),
      altitude: (map['altitude'] as num?)?.toDouble() ?? 0,
      speed: (map['speed'] as num?)?.toDouble() ?? 0,
      accuracy: (map['accuracy'] as num?)?.toDouble() ?? 0,
      timestamp: DateTime.now(),
    );
  }

  /// Calcular distancia a otro punto (fórmula Haversine)
  double distanceTo(LocationPoint other) {
    const earthRadius = 6371000.0; // metros

    final lat1Rad = latitude * math.pi / 180;
    final lat2Rad = other.latitude * math.pi / 180;
    final deltaLat = (other.latitude - latitude) * math.pi / 180;
    final deltaLon = (other.longitude - longitude) * math.pi / 180;

    final a = math.sin(deltaLat / 2) * math.sin(deltaLat / 2) +
              math.cos(lat1Rad) * math.cos(lat2Rad) *
              math.sin(deltaLon / 2) * math.sin(deltaLon / 2);

    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return earthRadius * c;
  }

  @override
  List<Object?> get props => [latitude, longitude, timestamp];
}

/// Representa una ruta completa
class Route {
  final List<LocationPoint> points;
  final DateTime startTime;
  DateTime? endTime;

  Route({
    List<LocationPoint>? points,
    DateTime? startTime,
  }) : points = points ?? [],
       startTime = startTime ?? DateTime.now();

  void addPoint(LocationPoint point) {
    points.add(point);
  }

  void finish() {
    endTime = DateTime.now();
  }

  double get totalDistance {
    if (points.length < 2) return 0;

    double distance = 0;
    for (int i = 1; i < points.length; i++) {
      distance += points[i - 1].distanceTo(points[i]);
    }
    return distance;
  }

  double get distanceKm => totalDistance / 1000;

  Duration get duration {
    final end = endTime ?? DateTime.now();
    return end.difference(startTime);
  }

  double get averageSpeed {
    final hours = duration.inSeconds / 3600;
    if (hours == 0) return 0;
    return distanceKm / hours;
  }

  double get estimatedCalories => distanceKm * 60;
}


          
================================================
📄 ARCHIVO: lib\features\auth\tracking\domain\entities\route.dart
================================================

import 'location_point.dart';

class Route {
  final List<LocationPoint> points = [];
  DateTime? startTime;
  DateTime? endTime;
  bool isFinished = false;

  void addPoint(LocationPoint point) {
    if (isFinished) return;
    if (points.isEmpty) {
      startTime = point.timestamp;
    }
    points.add(point);
  }

  void finish() {
    isFinished = true;
    endTime = DateTime.now();
  }

  Duration get duration {
    if (startTime == null) return Duration.zero;
    final end = endTime ?? DateTime.now();
    return end.difference(startTime!);
  }

  double get distanceKm {
    if (points.length < 2) return 0.0;
    double totalDistance = 0.0;
    for (int i = 0; i < points.length - 1; i++) {
      totalDistance += points[i].distanceTo(points[i + 1]);
    }
    return totalDistance;
  }

  double get averageSpeed {
    final hours = duration.inSeconds / 3600.0;
    if (hours == 0) return 0.0;
    return distanceKm / hours;
  }

  double get estimatedCalories {
    // Estimación simple para actividad física basada en distancia
    return distanceKm * 65.0; 
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\tracking\presentation\widgets\route_map_widget.dart
================================================

import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:fitness_tracker/features/auth/tracking/data/datasources/gps_datasource.dart';
import 'package:fitness_tracker/features/auth/tracking/domain/entities/location_point.dart';
import 'package:fitness_tracker/features/auth/tracking/domain/entities/route.dart' as entity;
import '../../../../../injection_container.dart';

class RouteMapWidget extends StatefulWidget {
  const RouteMapWidget({super.key});
  @override
  State<RouteMapWidget> createState() => _RouteMapWidgetState();
}

class _RouteMapWidgetState extends State<RouteMapWidget> {
  final GpsDataSource _dataSource = sl<GpsDataSource>();
  entity.Route _route = entity.Route();
  bool _isTracking = false;
  bool _hasPermission = false;
  StreamSubscription<LocationPoint>? _subscription;

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  // ✅ Pedir permisos al iniciar
  Future<void> _checkPermissions() async {
    final granted = await _dataSource.requestPermissions();
    if (mounted) setState(() => _hasPermission = granted);
  }

  Future<void> _toggleTracking() async {
    if (_isTracking) {
      await _subscription?.cancel();
      setState(() => _isTracking = false);
    } else {
      // ✅ Verificar permisos antes de iniciar
      if (!_hasPermission) {
        final granted = await _dataSource.requestPermissions();
        if (!granted) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Se necesitan permisos de ubicación')),
            );
          }
          return;
        }
        setState(() => _hasPermission = true);
      }

      setState(() {
        _route = entity.Route();
        _isTracking = true;
      });

      _subscription = _dataSource.locationStream.listen((p) {
        if (_isTracking && mounted) {
          setState(() => _route.addPoint(p));
        }
      });
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "RUTA ACTUAL",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                Chip(
                  label: Text(
                    "${_route.points.length} puntos",
                    style: const TextStyle(fontSize: 12),
                  ),
                  // ✅ withOpacity reemplazado por withAlpha
                  backgroundColor: Colors.indigo.withAlpha(25),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Mapa
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: _route.points.length < 2
                  ? Center(
                      child: Text(
                        _isTracking
                            ? 'Esperando señal GPS...'
                            : 'Inicia la ruta para ver el mapa',
                        style: TextStyle(color: Colors.grey[400], fontSize: 13),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CustomPaint(
                        painter: RoutePainter(points: _route.points),
                        child: const SizedBox.expand(),
                      ),
                    ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: _toggleTracking,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isTracking ? Colors.redAccent : Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  _isTracking ? 'DETENER SEGUIMIENTO' : 'INICIAR RUTA',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoutePainter extends CustomPainter {
  final List<LocationPoint> points;
  RoutePainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length < 2) return;

    double minLat = points.map((p) => p.latitude).reduce(math.min);
    double maxLat = points.map((p) => p.latitude).reduce(math.max);
    double minLon = points.map((p) => p.longitude).reduce(math.min);
    double maxLon = points.map((p) => p.longitude).reduce(math.max);

    double latRange = (maxLat - minLat == 0) ? 0.0001 : maxLat - minLat;
    double lonRange = (maxLon - minLon == 0) ? 0.0001 : maxLon - minLon;

    const double padding = 20.0;
    double drawWidth = size.width - (padding * 2);
    double drawHeight = size.height - (padding * 2);

    Offset getOffset(LocationPoint p) {
      double x = padding + ((p.longitude - minLon) / lonRange) * drawWidth;
      double y = size.height - (padding + ((p.latitude - minLat) / latRange) * drawHeight);
      return Offset(x, y);
    }

    // ✅ Línea de ruta
    final path = Path();
    path.moveTo(getOffset(points.first).dx, getOffset(points.first).dy);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(getOffset(points[i]).dx, getOffset(points[i]).dy);
    }

    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.indigo
        ..strokeWidth = 3
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round,
    );

    // ✅ Punto de inicio (verde)
    canvas.drawCircle(
      getOffset(points.first),
      6,
      Paint()..color = Colors.green,
    );

    // ✅ Punto actual (rojo)
    canvas.drawCircle(
      getOffset(points.last),
      6,
      Paint()..color = Colors.red,
    );
  }

  @override
  bool shouldRepaint(covariant RoutePainter oldDelegate) =>
      oldDelegate.points.length != points.length;
}

          
================================================
📄 ARCHIVO: lib\injection_container.dart
================================================

import 'package:get_it/get_it.dart';

// Core
import 'core/database/database.dart';

// Features: Activity
import 'features/activity/data/datasources/activity_datasource.dart';
import 'features/activity/data/datasources/activity_datasource_impl.dart';
import 'features/activity/data/datasources/activity_repository.dart';
import 'features/activity/data/services/tts_service.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';

// Features: Auth & Tracking
import 'features/auth/tracking/data/datasources/gps_datasource.dart';
import 'features/auth/data/datasources/biometric_datasource.dart';
import 'features/auth/domain/usecases/authenticate_user.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // ─────────────────────────────────────────────────────────────
  // BASE DE DATOS (Drift - SQLite)
  // ─────────────────────────────────────────────────────────────
  final database = AppDatabase();
  sl.registerSingleton<AppDatabase>(database);

  // ─────────────────────────────────────────────────────────────
  // SERVICIOS
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<TtsService>(() => TtsService());

  // ─────────────────────────────────────────────────────────────
  // DATASOURCES
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<ActivityDataSource>(
    () => ActivityDataSourceImpl(),
  );

  sl.registerLazySingleton<GpsDataSource>(
    () => GpsDataSourceImpl(),
  );

  sl.registerLazySingleton<BiometricDataSource>(
    () => BiometricDataSourceImpl(),
  );

  // ─────────────────────────────────────────────────────────────
  // REPOSITORY
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<ActivityRepository>(
    () => ActivityRepository(sl<AppDatabase>()),
  );

  // ─────────────────────────────────────────────────────────────
  // USE CASES
  // ─────────────────────────────────────────────────────────────
  sl.registerLazySingleton<AuthenticateUser>(
    () => AuthenticateUser(sl<BiometricDataSource>()),
  );

  // ─────────────────────────────────────────────────────────────
  // BLOCS
  // ─────────────────────────────────────────────────────────────
  sl.registerFactory<AuthBloc>(
    () => AuthBloc(sl<AuthenticateUser>()),
  );

  // ✅ Cambiado de registerFactory → registerLazySingleton
  // Factory creaba una instancia nueva en cada context.read<ActivityBloc>()
  // causando que FallConfirmed llegara a un bloc diferente al que emitió FallAlert
  sl.registerLazySingleton<ActivityBloc>(
    () => ActivityBloc(
      dataSource: sl<ActivityDataSource>(),
      ttsService: sl<TtsService>(),
      repository: sl<ActivityRepository>(),
    ),
  );
}

          
================================================
📄 ARCHIVO: lib\main.dart
================================================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/auth/tracking/presentation/widgets/route_map_widget.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';
import 'features/activity/presentation/pages/activity_page.dart';
import 'features/activity/presentation/pages/historial_page.dart';
import 'features/auth/steps/presentation/widgets/step_counter_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => sl<AuthBloc>()),
        BlocProvider<ActivityBloc>(create: (_) => sl<ActivityBloc>()),
      ],
      child: MaterialApp(
        title: 'Fitness Tracker',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6366F1)),
          useMaterial3: true,
        ),
        home: const AuthWrapper(),
      ),
    );
  }
}

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});
  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool _isAuthenticated = false;
  @override
  Widget build(BuildContext context) {
    if (_isAuthenticated) return const HomePage();
    return LoginPage(onAuthSuccess: () => setState(() => _isAuthenticated = true));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  VoidCallback? _reloadHistorial;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ActivityBloc, ActivityBlocState>(
      // ✅ Se dispara justo cuando una sesión termina de guardarse
      // (ActivityTracking -> ActivityInitial, que ocurre DESPUÉS del await _saveSession())
      listenWhen: (previous, current) =>
          previous is ActivityTracking && current is ActivityInitial,
      listener: (context, state) {
        _reloadHistorial?.call();
      },
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: [
            const _HomeTab(),
            const ActivityPage(),
            HistorialPage(
              onRegisterReload: (fn) => _reloadHistorial = fn,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            // Se mantiene como refresco manual extra (ej. tras borrar registros)
            if (index == 2) _reloadHistorial?.call();
            setState(() => _currentIndex = index);
          },
          selectedItemColor: const Color(0xFF6366F1),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.accessibility_new_rounded), label: 'Detector'),
            BottomNavigationBarItem(icon: Icon(Icons.history_rounded), label: 'Historial'),
          ],
        ),
      ),
    );
  }
}

class _HomeTab extends StatelessWidget {
  const _HomeTab();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Tracker'),
        backgroundColor: const Color(0xFF6366F1),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            StepCounterWidget(),
            SizedBox(height: 16),
            RouteMapWidget(),
          ],
        ),
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: pubspec.yaml
================================================

name: fitness_tracker
description: App de fitness con detección de actividad y voz
version: 1.0.0
publish_to: 'none'

environment:
  sdk: '>=3.2.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  # Gestión de estado
  flutter_bloc: ^9.1.1
  equatable: ^2.0.5

  # Inyección de dependencias
  get_it: ^9.2.1

  # Manejo de permisos
  permission_handler: ^12.0.3

  # Sensores - acelerómetro crudo para detección de caídas
  sensors_plus: ^7.0.0

  # Clasificación de actividad (caminar / correr / quieto)
  activity_recognition_flutter: ^6.0.0

  # Síntesis de voz
  flutter_tts: ^4.0.2

  # Autenticación biométrica
  local_auth: ^3.0.1

  # GPS y ubicación
  geolocator: ^14.0.3

  # Base de datos local (Drift - Compatible con AGP 8.x)
  drift: ^2.14.1
  sqlite3_flutter_libs: ^0.6.0+eol

  cupertino_icons: ^1.0.8
  path_provider: ^2.1.6
  flutter_activity_recognition: ^4.0.0
  intl: ^0.20.2
  flutter_map: ^8.3.0
  latlong2: ^0.9.1
  bloc_concurrency: ^0.3.0
  shared_preferences: ^2.5.5

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
  
  # Generador de código Drift
  drift_dev: ^2.14.1
  build_runner: ^2.4.6

flutter:
  uses-material-design: true


          
================================================
📄 ARCHIVO: README.md
================================================

# fitness_tracker

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


          
================================================
📄 ARCHIVO: test\widget_test.dart
================================================

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fitness_tracker/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FitnessApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}


