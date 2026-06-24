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

{"info":"This is a generated file; do not edit or check into version control.","plugins":{"ios":[{"name":"activity_recognition_flutter","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\activity_recognition_flutter-6.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_darwin","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_darwin-1.6.1\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_foundation","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_foundation-2.6.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_apple","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_apple-9.4.10\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-5.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sqlite3_flutter_libs","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sqlite3_flutter_libs-0.5.42\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false}],"android":[{"name":"activity_recognition_flutter","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\activity_recognition_flutter-6.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_plugin_android_lifecycle","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_plugin_android_lifecycle-2.0.35\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_android-4.6.2\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"jni_flutter","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni_flutter-1.0.1\\\\","native_build":true,"dependencies":["jni"],"dev_dependency":false},{"name":"local_auth_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_android-1.0.56\\\\","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"],"dev_dependency":false},{"name":"path_provider_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_android-2.3.1\\\\","native_build":false,"dependencies":["jni","jni_flutter"],"dev_dependency":false},{"name":"permission_handler_android","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_android-12.1.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-5.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sqlite3_flutter_libs","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sqlite3_flutter_libs-0.5.42\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"macos":[{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_darwin","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_darwin-1.6.1\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_foundation","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_foundation-2.6.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"sqlite3_flutter_libs","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sqlite3_flutter_libs-0.5.42\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false}],"linux":[{"name":"jni","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_linux","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_linux-2.2.1\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"sqlite3_flutter_libs","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sqlite3_flutter_libs-0.5.42\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"windows":[{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_windows-0.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"jni","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\jni-1.0.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_windows-1.0.11\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_windows-2.3.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_windows","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_windows-0.2.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sqlite3_flutter_libs","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sqlite3_flutter_libs-0.5.42\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"web":[{"name":"flutter_tts","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","dependencies":[],"dev_dependency":false},{"name":"geolocator_web","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_web-2.2.1\\\\","dependencies":[],"dev_dependency":false},{"name":"permission_handler_html","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_html-0.1.3+5\\\\","dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\Zulay\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-5.0.1\\\\","dependencies":[],"dev_dependency":false}]},"dependencyGraph":[{"name":"activity_recognition_flutter","dependencies":[]},{"name":"flutter_plugin_android_lifecycle","dependencies":[]},{"name":"flutter_tts","dependencies":[]},{"name":"geolocator","dependencies":["geolocator_android","geolocator_apple","geolocator_web","geolocator_windows"]},{"name":"geolocator_android","dependencies":[]},{"name":"geolocator_apple","dependencies":[]},{"name":"geolocator_web","dependencies":[]},{"name":"geolocator_windows","dependencies":[]},{"name":"jni","dependencies":[]},{"name":"jni_flutter","dependencies":["jni"]},{"name":"local_auth","dependencies":["local_auth_android","local_auth_darwin","local_auth_windows"]},{"name":"local_auth_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"local_auth_darwin","dependencies":[]},{"name":"local_auth_windows","dependencies":[]},{"name":"path_provider","dependencies":["path_provider_android","path_provider_foundation","path_provider_linux","path_provider_windows"]},{"name":"path_provider_android","dependencies":["jni","jni_flutter"]},{"name":"path_provider_foundation","dependencies":[]},{"name":"path_provider_linux","dependencies":[]},{"name":"path_provider_windows","dependencies":[]},{"name":"permission_handler","dependencies":["permission_handler_android","permission_handler_apple","permission_handler_html","permission_handler_windows"]},{"name":"permission_handler_android","dependencies":[]},{"name":"permission_handler_apple","dependencies":[]},{"name":"permission_handler_html","dependencies":[]},{"name":"permission_handler_windows","dependencies":[]},{"name":"sensors_plus","dependencies":[]},{"name":"sqlite3_flutter_libs","dependencies":[]}],"date_created":"2026-06-23 08:53:42.584143","version":"3.44.2","swift_package_manager_enabled":{"ios":false,"macos":false}}

          
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
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

/// Tabla de registros de actividad física
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
}

@DriftDatabase(tables: [ActivityRecords])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ActivityRecord>> getAllActivities() {
    final query = select(activityRecords)
      ..orderBy([(t) => OrderingTerm(
            expression: t.createdAt,
            mode: OrderingMode.desc,
          )]);
    return query.get();
  }

  Future<List<ActivityRecord>> getActivitiesByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) {
    return (select(activityRecords)
          ..where((t) => t.createdAt.isBetweenValues(startDate, endDate))
          ..orderBy([(t) => OrderingTerm(
                expression: t.createdAt,
                mode: OrderingMode.desc,
              )]))
        .get();
  }

  Future<List<ActivityRecord>> getTodayActivities() {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    return getActivitiesByDateRange(startOfDay, endOfDay);
  }

  Future<List<ActivityRecord>> getWeekActivities() {
    final now = DateTime.now();
    return getActivitiesByDateRange(now.subtract(const Duration(days: 7)), now);
  }

  Future<List<ActivityRecord>> getMonthActivities() {
    final now = DateTime.now();
    return getActivitiesByDateRange(now.subtract(const Duration(days: 30)), now);
  }

  Future<ActivityRecord?> getActivityById(int id) {
    return (select(activityRecords)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Future<ActivityStats> getStats() async {
    final records = await getAllActivities();
    if (records.isEmpty) return ActivityStats.empty();

    final totalSteps = records.fold<int>(0, (sum, r) => sum + r.stepCount);
    final totalDistance =
        records.fold<double>(0, (sum, r) => sum + r.distanceKm);
    final totalCalories =
        records.fold<double>(0, (sum, r) => sum + r.caloriesBurned);
    final totalSeconds =
        records.fold<int>(0, (sum, r) => sum + r.durationSeconds);

    return ActivityStats(
      totalActivities: records.length,
      totalSteps: totalSteps,
      totalDistanceKm: totalDistance,
      totalCaloriesBurned: totalCalories,
      totalDurationSeconds: totalSeconds,
      averageSpeed:
          totalDistance / (totalSeconds > 0 ? totalSeconds / 3600 : 1),
    );
  }

  Future<int> createActivity(ActivityRecordsCompanion activity) {
    return into(activityRecords).insert(activity);
  }

  Future<bool> updateActivity(ActivityRecord activity) async {
    return await update(activityRecords).replace(activity);
  }

  Future<bool> deleteActivity(int id) async {
    final deleted =
        await (delete(activityRecords)..where((t) => t.id.equals(id))).go();
    return deleted > 0;
  }

  Future<int> deleteAllActivities() {
    return delete(activityRecords).go();
  }

  Future<int> deleteActivitiesBefore(DateTime date) {
    return (delete(activityRecords)
          ..where((t) => t.createdAt.isSmallerThanValue(date)))
        .go();
  }
}

// ─── Estadísticas ────────────────────────────────────────────────────────────

class ActivityStats {
  final int totalActivities;
  final int totalSteps;
  final double totalDistanceKm;
  final double totalCaloriesBurned;
  final int totalDurationSeconds;
  final double averageSpeed;

  ActivityStats({
    required this.totalActivities,
    required this.totalSteps,
    required this.totalDistanceKm,
    required this.totalCaloriesBurned,
    required this.totalDurationSeconds,
    required this.averageSpeed,
  });

  factory ActivityStats.empty() => ActivityStats(
        totalActivities: 0,
        totalSteps: 0,
        totalDistanceKm: 0.0,
        totalCaloriesBurned: 0.0,
        totalDurationSeconds: 0,
        averageSpeed: 0.0,
      );

  String get formattedTotalDuration {
    final hours = totalDurationSeconds ~/ 3600;
    final minutes = (totalDurationSeconds % 3600) ~/ 60;
    return hours > 0 ? '${hours}h ${minutes}m' : '${minutes}m';
  }
}

// ─── Extension ───────────────────────────────────────────────────────────────

extension ActivityRecordExtension on ActivityRecord {
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

  String get formattedDuration {
    final hours = durationSeconds ~/ 3600;
    final minutes = (durationSeconds % 3600) ~/ 60;
    final seconds = durationSeconds % 60;
    return hours > 0 ? '${hours}h ${minutes}m' : '${minutes}m ${seconds}s';
  }

  String get formattedDate =>
      '${startTime.day}/${startTime.month}/${startTime.year} '
      '${startTime.hour}:${startTime.minute.toString().padLeft(2, '0')}';
}

enum ActivityRecordType { walking, running, stationary, unknown }

// ─── Conexión a BD ────────────────────────────────────────────────────────────
// ✅ Sin path_provider — usa dart:io puro con directorio de caché del sistema

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // Platform.environment['EXTERNAL_STORAGE'] en Android apunta a /sdcard
    // pero para datos privados usamos el directorio de caché interno
    final Directory appDir;

    if (Platform.isAndroid || Platform.isIOS) {
      // Directorio temporal seguro disponible sin plugins extra
      appDir = Directory.systemTemp;
    } else {
      appDir = Directory.systemTemp;
    }

    // Subdirectorio exclusivo de la app para evitar colisiones
    final dbDir = Directory(p.join(appDir.path, 'fitness_db'));
    if (!dbDir.existsSync()) {
      await dbDir.create(recursive: true);
    }

    final file = File(p.join(dbDir.path, 'fitness_app.db'));
    return NativeDatabase(file);
  });
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
        durationSeconds
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
      required this.durationSeconds});
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
          int? durationSeconds}) =>
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
          ..write('durationSeconds: $durationSeconds')
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
      durationSeconds);
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
          other.durationSeconds == this.durationSeconds);
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
      Value<int>? durationSeconds}) {
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
          ..write('durationSeconds: $durationSeconds')
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
📄 ARCHIVO: lib\features\activity\data\datasources\activity_datasource_impl.dart
================================================

import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';

/// DataSource de actividad usando sensors_plus directamente.
///
/// CAMBIO: Ya no depende de AccelerometerDataSource (que usaba
/// activity_recognition_flutter via EventChannel nativo).
/// Ahora todo viene de sensors_plus, igual que la detección de caídas,
/// eliminando la dependencia al plugin nativo de reconocimiento de actividad
/// que requería permisos especiales y podía fallar silenciosamente.
///
/// CLASIFICACIÓN:
///   magnitude < 9.5  → stationary  (solo gravedad, sin movimiento)
///   9.5 – 13.5       → walking     (pasos normales ~1G adicional)
///   > 13.5           → running     (impacto mayor al correr ~1.5G+)
class ActivityDataSourceImpl {
  // ── Umbrales de clasificación ──────────────────────────────────────────
  static const double _stationaryMax = 9.5;   // m/s²
  static const double _walkingMax    = 13.5;  // m/s²

  // ── Detección de caídas ───────────────────────────────────────────────
  static const double   _fallThreshold = 42.0;          // ~4.3 G
  static const Duration _fallCooldown  = Duration(seconds: 3);
  DateTime? _lastFallTime;

  // ── Stream de actividad ───────────────────────────────────────────────
  //
  // Usamos una ventana deslizante de 20 muestras (~400 ms a 50 Hz) para
  // calcular la magnitud promedio. Esto elimina el ruido puntual y evita
  // que un solo paso cambie el estado de "corriendo" a "quieto" en
  // milisegundos.
  Stream<ActivityState> get activityStream {
    final List<double> window = [];
    const int windowSize = 20;

    return accelerometerEventStream(
      samplingPeriod: SensorInterval.normalInterval, // ~50 Hz
    ).map((AccelerometerEvent e) {
      final double raw = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);

      window.add(raw);
      if (window.length > windowSize) window.removeAt(0);

      // Magnitud promedio de la ventana
      final double avg = window.reduce((a, b) => a + b) / window.length;

      debugPrint('📡 Acelerómetro avg=$avg x=${e.x.toStringAsFixed(2)} '
          'y=${e.y.toStringAsFixed(2)} z=${e.z.toStringAsFixed(2)}');

      final UserActivityType type;
      if (avg <= _stationaryMax) {
        type = UserActivityType.stationary;
      } else if (avg <= _walkingMax) {
        type = UserActivityType.walking;
      } else {
        type = UserActivityType.running;
      }

      return ActivityState(type: type, detectedAt: DateTime.now());
    })
    // Throttle: emitir como máximo 1 evento por segundo para no saturar el BLoC
    .transform(_throttle(const Duration(seconds: 1)));
  }

  // ── Stream de caídas ──────────────────────────────────────────────────
  Stream<FallEvent> get fallStream {
    final List<double> buffer = [];
    const int bufferSize = 3;

    return accelerometerEventStream().where((AccelerometerEvent e) {
      final double raw = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);

      buffer.add(raw);
      if (buffer.length > bufferSize) buffer.removeAt(0);

      final double magnitude = buffer.reduce((a, b) => a + b) / buffer.length;
      final DateTime now = DateTime.now();

      if (magnitude < _fallThreshold) return false;

      if (_lastFallTime != null &&
          now.difference(_lastFallTime!) < _fallCooldown) {
        return false;
      }

      _lastFallTime = now;
      return true;
    }).map((AccelerometerEvent e) {
      final double magnitude = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);
      return FallEvent(magnitude: magnitude, occurredAt: DateTime.now());
    });
  }

  // ── Permisos ───────────────────────────────────────────────────────────
  //
  // sensors_plus NO requiere permiso en Android para el acelerómetro
  // (es un sensor "non-dangerous"). Solo pedimos activityRecognition
  // porque algunos fabricantes lo exigen, pero el stream funciona
  // aunque el usuario lo deniegue.
  Future<bool> requestPermissions() async {
    final activity = await Permission.activityRecognition.request();
    final sensors  = await Permission.sensors.request();

    debugPrint('Permisos → activityRecognition: ${activity.name}, '
        'sensors: ${sensors.name}');

    // Retornar true aunque sensors esté denegado (acelerómetro no lo necesita)
    return activity.isGranted || sensors.isGranted;
  }
}

// ── Transformer: throttle ─────────────────────────────────────────────────────
//
// Emite el último evento recibido dentro de cada ventana de [duration].
// Evita que el BLoC procese 50 eventos/segundo desde el acelerómetro.
StreamTransformer<T, T> _throttle<T>(Duration duration) {
  return StreamTransformer.fromBind((Stream<T> input) {
    late StreamController<T> controller;
    StreamSubscription<T>? subscription;
    Timer? timer;
    T? lastEvent;
    bool hasPending = false;

    controller = StreamController<T>(
      onListen: () {
        subscription = input.listen(
          (event) {
            lastEvent = event;
            hasPending = true;

            timer ??= Timer.periodic(duration, (_) {
              if (hasPending && lastEvent != null) {
                controller.add(lastEvent as T);
                hasPending = false;
              }
            });
          },
          onError: controller.addError,
          onDone: () {
            timer?.cancel();
            controller.close();
          },
        );
      },
      onCancel: () {
        timer?.cancel();
        subscription?.cancel();
      },
    );

    return controller.stream;
  });
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

  Future<void> init() async {
    await _tts.setLanguage('es-ES');
    await _tts.setSpeechRate(0.5);
    await _tts.setVolume(1.0);
  }

  Future<void> speak(String text) async {
    await _tts.stop();
    await _tts.speak(text);
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

/// Enum propio de la app (renombrado a UserActivityType
/// para evitar colisión con el enum ActivityType del plugin
/// activity_recognition_flutter)
enum UserActivityType {
  walking,
  running,
  stationary,
  unknown,
}

class ActivityState extends Equatable {
  final UserActivityType type;
  final DateTime detectedAt;

  const ActivityState({
    required this.type,
    required this.detectedAt,
  });

  /// Texto que se muestra en la UI
  String get label {
    switch (type) {
      case UserActivityType.walking:
        return 'Caminando';
      case UserActivityType.running:
        return 'Corriendo';
      case UserActivityType.stationary:
        return 'Detenido';
      case UserActivityType.unknown:
        return 'Detectando...';
    }
  }

  /// Texto que lee flutter_tts en voz alta
  String get voiceMessage {
    switch (type) {
      case UserActivityType.walking:
        return 'Estás caminando';
      case UserActivityType.running:
        return 'Estás corriendo';
      case UserActivityType.stationary:
        return 'Te has detenido';
      case UserActivityType.unknown:
        return '';
    }
  }

  @override
  List<Object?> get props => [type, detectedAt];
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
import 'package:drift/drift.dart' as drift;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../data/datasources/activity_repository.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
import '../../data/services/tts_service.dart';
import '../../../../core/database/database.dart'; 


// ═══════════════════════════════════════════════════════════════
// EVENTOS
// ═══════════════════════════════════════════════════════════════

abstract class ActivityEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ActivityStarted extends ActivityEvent {}

class ActivityStopped extends ActivityEvent {}

class ActivityChanged extends ActivityEvent {
  final ActivityState state;
  ActivityChanged(this.state);
  @override
  List<Object?> get props => [state];
}

class FallDetected extends ActivityEvent {
  final FallEvent event;
  FallDetected(this.event);
  @override
  List<Object?> get props => [event];
}

class FallConfirmed extends ActivityEvent {}

class FallDismissed extends ActivityEvent {}

// ═══════════════════════════════════════════════════════════════
// ESTADOS
// ═══════════════════════════════════════════════════════════════

abstract class ActivityBlocState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ActivityInitial extends ActivityBlocState {}

class ActivityTracking extends ActivityBlocState {
  final ActivityState current;
  ActivityTracking(this.current);
  @override
  List<Object?> get props => [current];
}

class FallAlert extends ActivityBlocState {
  final FallEvent event;
  FallAlert(this.event);
  @override
  List<Object?> get props => [event];
}

class FallResolved extends ActivityBlocState {}

// ═══════════════════════════════════════════════════════════════
// BLOC
// ═══════════════════════════════════════════════════════════════

class ActivityBloc extends Bloc<ActivityEvent, ActivityBlocState> {
  final ActivityDataSourceImpl _dataSource;
  final TtsService _ttsService;
  final ActivityRepository _repository;

  StreamSubscription<ActivityState>? _activitySub;
  StreamSubscription<FallEvent>? _fallSub;

  static const Duration _debounceDuration = Duration(milliseconds: 1500);
  UserActivityType? _lastAnnouncedType;
  UserActivityType? _pendingType;
  Timer? _debounceTimer;

  // NUEVO: guardar hora inicio y ultimo movimiento
  DateTime? _sessionStart;
  ActivityState? _lastActivityState;

  ActivityBloc({
    required ActivityDataSourceImpl dataSource,
    required TtsService ttsService,
    required ActivityRepository repository,
  })  : _dataSource = dataSource,
        _ttsService = ttsService,
        _repository = repository,
        super(ActivityInitial()) {
    on<ActivityStarted>(_onStarted);
    on<ActivityStopped>(_onStopped);
    on<ActivityChanged>(_onActivityChanged);
    on<FallDetected>(_onFallDetected);
    on<FallConfirmed>(_onFallConfirmed);
    on<FallDismissed>(_onFallDismissed);
  }

  Future<void> _onStarted(
    ActivityStarted event,
    Emitter<ActivityBlocState> emit,
  ) async {
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) return;

    await _ttsService.init();

    // NUEVO: marcar hora de inicio
    _sessionStart = DateTime.now();
    _lastActivityState = null;

    emit(ActivityTracking(ActivityState(
      type: UserActivityType.unknown,
      detectedAt: DateTime.now(),
    )));

    _activitySub = _dataSource.activityStream.listen((activityState) {
      _lastActivityState = activityState; // NUEVO: recordar ultimo estado
      add(ActivityChanged(activityState));
    });

    _fallSub = _dataSource.fallStream.listen((fallEvent) {
      add(FallDetected(fallEvent));
    });
  }

  // NUEVO: guardar antes de parar
  Future<void> _onStopped(
    ActivityStopped event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _saveSession();
    await _cancelSubscriptions();
    emit(ActivityInitial());
  }

  // NUEVO: metodo que graba sesion en piedra... digo en BD
  Future<void> _saveSession() async {
    final start = _sessionStart;
    if (start == null) return;

    final end = DateTime.now();
    final durationSeconds = end.difference(start).inSeconds;

    if (durationSeconds < 5) return; // sesion muy corta, no guardar

    final activityType = _lastActivityState?.type.name ?? 'unknown';

    final steps = activityType == 'walking'
        ? (durationSeconds * 1.5).round()
        : activityType == 'running'
            ? (durationSeconds * 2.8).round()
            : 0;

    final calories = activityType == 'walking'
        ? durationSeconds * 0.05
        : activityType == 'running'
            ? durationSeconds * 0.13
            : 0.0;

    final distanceKm = steps * 0.0008;

    final averageSpeed = durationSeconds > 0
        ? distanceKm / (durationSeconds / 3600)
        : 0.0;

    try {
      await _repository.createActivity(
        ActivityRecordsCompanion.insert(
          activityType: activityType,
          startTime: start,
          endTime: drift.Value(end),
          stepCount: drift.Value(steps),
          distanceKm: drift.Value(distanceKm),
          caloriesBurned: drift.Value(calories),
          createdAt: end,
          averageSpeed: drift.Value(averageSpeed),
          durationSeconds: drift.Value(durationSeconds),
        ),
      );
    } catch (_) {
      // si falla, no explotar app
    } finally {
      _sessionStart = null;
      _lastActivityState = null;
    }
  }

  void _onActivityChanged(
    ActivityChanged event,
    Emitter<ActivityBlocState> emit,
  ) {
    if (state is FallAlert) return;

    final incoming = event.state.type;

    if (incoming != _lastAnnouncedType) {
      if (incoming != _pendingType) {
        _debounceTimer?.cancel();
        _pendingType = incoming;

        if (incoming != UserActivityType.unknown) {
          _debounceTimer = Timer(_debounceDuration, () {
            if (_pendingType == incoming &&
                _pendingType != _lastAnnouncedType) {
              _ttsService.speak(event.state.voiceMessage);
              _lastAnnouncedType = _pendingType;
            }
          });
        }
      }
    } else {
      _debounceTimer?.cancel();
      _pendingType = null;
    }

    emit(ActivityTracking(event.state));
  }

  Future<void> _onFallDetected(
    FallDetected event,
    Emitter<ActivityBlocState> emit,
  ) async {
    _debounceTimer?.cancel();
    _pendingType = null;
    await _ttsService.speak(
        '¡Atención! Se detectó una posible caída. ¿Estás bien?');
    emit(FallAlert(event.event));
  }

  Future<void> _onFallConfirmed(
    FallConfirmed event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _ttsService
        .speak('Me alegra que estés bien. Continuando el seguimiento.');
    emit(FallResolved());
  }

  Future<void> _onFallDismissed(
    FallDismissed event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _ttsService.speak('Entendido. Por favor busca ayuda de inmediato.');
    emit(FallResolved());
  }

  Future<void> _cancelSubscriptions() async {
    await _activitySub?.cancel();
    await _fallSub?.cancel();
    _activitySub = null;
    _fallSub = null;
    _debounceTimer?.cancel();
    _debounceTimer = null;
    _lastAnnouncedType = null;
    _pendingType = null;
  }

  @override
  Future<void> close() async {
    await _cancelSubscriptions();
    _ttsService.dispose();
    return super.close();
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\presentation\pages\activity_page.dart
================================================

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_bloc.dart';
import '../../domain/entities/activity_state.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../../../../injection_container.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {

  @override
  void initState() {
    super.initState();
    _requestPermissionsAndStart();
  }

  Future<void> _requestPermissionsAndStart() async {
    final datasource = sl<ActivityDataSourceImpl>();
    final granted = await datasource.requestPermissions();

    if (!mounted) return;

    if (granted) {
      context.read<ActivityBloc>().add(ActivityStarted());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Permisos denegados. Ve a Ajustes > Permisos de la app y activa "Actividad física" y "Sensores corporales".',
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 6),
        ),
      );
    }
  }

  void _showFallDialog(BuildContext context, FallAlert state) {
    bool showSecondary = false;
    Timer? secondaryTimer;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (ctx, setDialogState) {

            secondaryTimer ??= Timer(
              const Duration(seconds: 15),
              () {
                setDialogState(() {
                  showSecondary = true;
                });
              },
            );

            return AlertDialog(
              title: const Row(
                children: [
                  Icon(Icons.warning_amber_rounded,
                      color: Colors.orange, size: 28),
                  SizedBox(width: 8),
                  Text('¿Estás bien?'),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Se detectó una posible caída.'),
                  const SizedBox(height: 8),
                  if (showSecondary)
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.red),
                      ),
                      child: const Text(
                        '¡Por favor responde! ¿Necesitas ayuda?',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    secondaryTimer?.cancel();
                    context.read<ActivityBloc>().add(FallConfirmed());
                    Navigator.pop(dialogContext);
                  },
                  child: const Text('Estoy bien'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    secondaryTimer?.cancel();
                    context.read<ActivityBloc>().add(FallDismissed());
                    Navigator.pop(dialogContext);
                  },
                  child: const Text('Necesito ayuda'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detector de Actividad'),
        backgroundColor: const Color(0xFF6366F1),
        foregroundColor: Colors.white,
      ),
      body: BlocListener<ActivityBloc, ActivityBlocState>(
        listener: (context, state) {
          if (state is FallAlert) {
            _showFallDialog(context, state);
          }
        },
        child: BlocBuilder<ActivityBloc, ActivityBlocState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _getIcon(state),
                    size: 100,
                    color: const Color(0xFF6366F1),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    _getLabel(state),
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (state is ActivityTracking) {
                        context.read<ActivityBloc>().add(ActivityStopped());
                      } else {
                        _requestPermissionsAndStart();
                      }
                    },
                    icon: Icon(
                      state is ActivityTracking ? Icons.stop : Icons.play_arrow,
                    ),
                    label: Text(
                      state is ActivityTracking ? 'Detener' : 'Iniciar',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: state is ActivityTracking
                          ? Colors.red
                          : Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  IconData _getIcon(ActivityBlocState state) {
    if (state is ActivityTracking) {
      switch (state.current.type) {
        case UserActivityType.walking:
          return Icons.directions_walk;
        case UserActivityType.running:
          return Icons.directions_run;
        case UserActivityType.stationary:
          return Icons.accessibility_new;
        case UserActivityType.unknown:
          return Icons.help_outline;
      }
    }
    return Icons.fitness_center;
  }

  String _getLabel(ActivityBlocState state) {
    if (state is ActivityTracking) {
      return state.current.label;
    }
    return 'Presiona Iniciar';
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\presentation\pages\historial_page.dart
================================================

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/datasources/activity_repository.dart';
import '../../../../core/database/database.dart';
import '../../../../../injection_container.dart';

/// Pantalla de historial de actividad física (CRUD)
///
/// FIX: [loadAllRecords] es público para que [HomePage] lo llame
/// vía [GlobalKey] cada vez que el usuario navega a esta pestaña.
/// Esto resuelve el problema de [IndexedStack] que mantiene el widget
/// vivo pero no re-ejecuta [initState].
class HistorialPage extends StatefulWidget {
  /// Callback que permite a [HomePage] registrar la función de recarga.
  /// Cuando el usuario navega a la pestaña Historial, HomePage llama
  /// la función registrada → se ejecuta [loadAllRecords] aunque
  /// [IndexedStack] no haya destruido el widget.
  final void Function(VoidCallback reload)? onRegisterReload;

  const HistorialPage({super.key, this.onRegisterReload});

  @override
  State<HistorialPage> createState() => _HistorialPageState();
}

class _HistorialPageState extends State<HistorialPage> {
  final ActivityRepository _repository = sl<ActivityRepository>();

  DateTimeRange? _selectedRange;
  List<ActivityRecord> _filteredRecords = [];
  ActivityStats? _stats;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // Registrar la función de recarga en el padre (HomePage)
    // para que pueda invocarla al cambiar de pestaña.
    widget.onRegisterReload?.call(loadAllRecords);
    loadAllRecords();
  }

  /// Público para que [HomePage] pueda llamarlo via GlobalKey al cambiar de pestaña
  Future<void> loadAllRecords() async {
    setState(() => _isLoading = true);
    try {
      final records = await _repository.getAllActivities();
      final stats = await _repository.getStats();
      if (mounted) {
        setState(() {
          _filteredRecords = records;
          _stats = stats;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error cargando registros: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _filterByDateRange() async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime.now(),
      initialDateRange: _selectedRange,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Color(0xFF6366F1),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() => _selectedRange = picked);
      try {
        final records = await _repository.getActivitiesByDateRange(
          picked.start,
          picked.end,
        );
        if (mounted) setState(() => _filteredRecords = records);
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error filtrando registros: $e')),
          );
        }
      }
    }
  }

  // ─── DELETE ───────────────────────────────────────────────────────────────

  Future<void> _deleteRecord(int id) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar registro'),
        content:
            const Text('¿Estás seguro de que deseas eliminar este registro?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await _repository.deleteActivity(id);
        await loadAllRecords();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Registro eliminado ✓')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error al eliminar: $e')),
          );
        }
      }
    }
  }

  Future<void> _deleteAllRecords() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar todos los registros'),
        content: const Text(
          '⚠️ Eliminará permanentemente TODOS los registros. No se puede deshacer.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Eliminar todo'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await _repository.deleteAllActivities();
        await loadAllRecords();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Todos los registros eliminados ✓')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: $e')),
          );
        }
      }
    }
  }

  // ─── UPDATE (editar manualmente un registro) ──────────────────────────────

  Future<void> _editRecord(ActivityRecord record) async {
    final stepsController =
        TextEditingController(text: record.stepCount.toString());
    final notesController = TextEditingController();

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Editar registro'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              record.label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: stepsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Pasos',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: notesController,
              decoration: const InputDecoration(
                labelText: 'Notas (opcional)',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6366F1),
              foregroundColor: Colors.white,
            ),
            child: const Text('Guardar'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      final newSteps = int.tryParse(stepsController.text) ?? record.stepCount;
      final newCalories = newSteps * 0.04;
      final newDistance = newSteps * 0.0008;

      try {
        await _repository.updateActivity(record.copyWith(
          stepCount: newSteps,
          caloriesBurned: newCalories,
          distanceKm: newDistance,
        ));
        await loadAllRecords();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Registro actualizado ✓')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error al actualizar: $e')),
          );
        }
      }
    }

    stepsController.dispose();
    notesController.dispose();
  }

  // ─── BUILD ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de Actividad'),
        backgroundColor: const Color(0xFF6366F1),
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          if (_selectedRange != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  '${DateFormat('dd/MM').format(_selectedRange!.start)} - '
                  '${DateFormat('dd/MM').format(_selectedRange!.end)}',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          IconButton(
            onPressed: loadAllRecords,
            icon: const Icon(Icons.refresh),
            tooltip: 'Recargar',
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // Estadísticas
                if (_stats != null) _buildStatsCard(),

                // Filtros
                _buildFilterBar(),

                // Lista
                Expanded(
                  child: _filteredRecords.isEmpty
                      ? _buildEmptyState()
                      : ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: _filteredRecords.length,
                          itemBuilder: (context, index) {
                            return _buildActivityCard(
                                _filteredRecords[index]);
                          },
                        ),
                ),

                // Botón eliminar todo
                if (_filteredRecords.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: _deleteAllRecords,
                        icon: const Icon(Icons.delete_outline),
                        label: const Text('Eliminar todo'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[300],
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }

  Widget _buildStatsCard() {
    return Container(
      color: const Color(0xFF6366F1).withOpacity(0.1),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Estadísticas Totales',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatChip(
                icon: Icons.directions_walk,
                label: 'Pasos',
                value: _stats!.totalSteps.toString(),
                color: Colors.blue,
              ),
              _buildStatChip(
                icon: Icons.straighten,
                label: 'Distancia',
                value: '${_stats!.totalDistanceKm.toStringAsFixed(1)} km',
                color: Colors.green,
              ),
              _buildStatChip(
                icon: Icons.local_fire_department,
                label: 'Calorías',
                value: _stats!.totalCaloriesBurned.toStringAsFixed(0),
                color: Colors.orange,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Sesiones: ${_stats!.totalActivities} · '
            'Tiempo: ${_stats!.formattedTotalDuration}',
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: _filterByDateRange,
              icon: const Icon(Icons.calendar_today),
              label: const Text('Filtrar fechas'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6366F1),
                foregroundColor: Colors.white,
              ),
            ),
          ),
          if (_selectedRange != null) ...[
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: () {
                setState(() => _selectedRange = null);
                loadAllRecords();
              },
              icon: const Icon(Icons.clear),
              label: const Text('Limpiar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.history, size: 80, color: Colors.grey[300]),
          const SizedBox(height: 16),
          const Text(
            'Sin registros',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Text(
            'Inicia una sesión en la pestaña Detector\npara ver tu historial aquí.',
            style: TextStyle(fontSize: 13, color: Colors.grey[400]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard(ActivityRecord record) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado: tipo + fecha + acciones
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: _getActivityColor(record.type).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        _getActivityIcon(record.type),
                        color: _getActivityColor(record.type),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          record.label,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          record.formattedDate,
                          style: TextStyle(
                              fontSize: 11, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ── UPDATE ─────────────────────────────────────────
                    IconButton(
                      onPressed: () => _editRecord(record),
                      icon: const Icon(Icons.edit_outlined,
                          color: Color(0xFF6366F1)),
                      iconSize: 20,
                      tooltip: 'Editar',
                    ),
                    // ── DELETE ─────────────────────────────────────────
                    IconButton(
                      onPressed: () => _deleteRecord(record.id),
                      icon: const Icon(Icons.delete_outline, color: Colors.red),
                      iconSize: 20,
                      tooltip: 'Eliminar',
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            // Métricas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMetricColumn('Pasos', record.stepCount.toString()),
                _buildMetricColumn(
                  'Distancia',
                  '${record.distanceKm.toStringAsFixed(2)} km',
                ),
                _buildMetricColumn(
                  'Calorías',
                  record.caloriesBurned.toStringAsFixed(0),
                ),
                _buildMetricColumn('Duración', record.formattedDuration),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatChip({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(value,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        Text(label,
            style: TextStyle(fontSize: 10, color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildMetricColumn(String label, String value) {
    return Column(
      children: [
        Text(value,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        Text(label,
            style: TextStyle(fontSize: 10, color: Colors.grey[600])),
      ],
    );
  }

  IconData _getActivityIcon(ActivityRecordType type) {
    switch (type) {
      case ActivityRecordType.walking:
        return Icons.directions_walk;
      case ActivityRecordType.running:
        return Icons.directions_run;
      case ActivityRecordType.stationary:
        return Icons.accessibility_new;
      case ActivityRecordType.unknown:
        return Icons.help_outline;
    }
  }

  Color _getActivityColor(ActivityRecordType type) {
    switch (type) {
      case ActivityRecordType.walking:
        return Colors.blue;
      case ActivityRecordType.running:
        return Colors.red;
      case ActivityRecordType.stationary:
        return Colors.grey;
      case ActivityRecordType.unknown:
        return Colors.amber;
    }
  }
}

// ─── Extension para copyWith en ActivityRecord ────────────────────────────────
extension ActivityRecordCopyWith on ActivityRecord {
  ActivityRecord copyWith({
    int? id,
    String? activityType,
    DateTime? startTime,
    DateTime? endTime,
    int? stepCount,
    double? distanceKm,
    double? caloriesBurned,
    DateTime? createdAt,
    double? averageSpeed,
    int? durationSeconds,
  }) {
    return ActivityRecord(
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
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\datasources\accelerometer_datasource.dart
================================================

import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import '../../domain/entities/step_data.dart';

/// DataSource para acelerómetro usando el plugin sensors_plus.
///
/// ANTES usaba EventChannel + MethodChannel hacia código nativo propio
/// (PlatformChannels.accelerometer), lo que requería implementación
/// en MainActivity.kt / AppDelegate.swift y causaba crash si no existía.
///
/// AHORA usa sensors_plus directamente:
/// - Sin código nativo adicional
/// - Funciona en Android e iOS sin configuración extra
/// - Consistente con activity_datasource_impl.dart y gps_datasource.dart
abstract class AccelerometerDataSource {
  Stream<StepData> get stepStream;

  /// Mantiene la firma original para no romper injection_container.dart
  /// ni StepCounterWidget. Con sensors_plus no hay start/stop explícito;
  /// el stream se activa al suscribirse y se cancela al hacer cancel().
  Future<void> startCounting();
  Future<void> stopCounting();
  Future<bool> requestPermissions();
}

class AccelerometerDataSourceImpl implements AccelerometerDataSource {
  // ── Parámetros del clasificador ──────────────────────────────────────────

  /// Umbral de magnitud para considerar que hay movimiento activo.
  /// 9.8 m/s² = gravedad en reposo. Con 11 m/s² (~1.12 G) detectamos
  /// pasos/carrera pero ignoramos vibraciones leves.
  static const double _movementThreshold = 11.0;

  /// Por encima de este umbral clasificamos como "corriendo" (~2.5 G).
  /// Correr genera picos de aceleración mayores que caminar.
  static const double _runThreshold = 24.5;

  /// Pasos acumulados durante la sesión activa.
  int _stepCount = 0;

  /// Última magnitud procesada (para el debounce de pasos).
  double _lastMagnitude = 0;

  /// Mínimo de muestras entre dos pasos consecutivos (~300 ms a 50 Hz).
  static const int _stepDebounce = 15;
  int _samplesSinceLastStep = 0;

  // ── Stream compartido ────────────────────────────────────────────────────

  /// Stream único y lazy: se crea una sola vez y se reutiliza en toda la app.
  /// Evita múltiples suscripciones al sensor nativo que podrían causar
  /// lecturas duplicadas o mayor consumo de batería.
  late final Stream<StepData> _sharedStream = _buildStream();

  Stream<StepData> _buildStream() {
    return accelerometerEventStream(
      samplingPeriod: SensorInterval.normalInterval, // ~50 Hz
    ).map((AccelerometerEvent e) {
      // Magnitud del vector de aceleración (incluye gravedad ~9.8)
      final double magnitude = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);

      // ── Clasificación de actividad ─────────────────────────────────
      final ActivityType activityType;
      if (magnitude >= _runThreshold) {
        activityType = ActivityType.running;
      } else if (magnitude >= _movementThreshold) {
        activityType = ActivityType.walking;
      } else {
        activityType = ActivityType.stationary;
      }

      // ── Conteo de pasos por detección de pico ─────────────────────
      // Detecta un paso cuando la magnitud sube y luego baja (cruce de pico).
      // El debounce evita contar el mismo paso múltiples veces.
      _samplesSinceLastStep++;
      if (magnitude > _movementThreshold &&
          magnitude > _lastMagnitude &&
          _samplesSinceLastStep >= _stepDebounce) {
        _stepCount++;
        _samplesSinceLastStep = 0;
      }
      _lastMagnitude = magnitude;

      return StepData(
        stepCount: _stepCount,
        activityType: activityType,
        magnitude: magnitude,
      );
    }).asBroadcastStream(); // BroadcastStream: múltiples listeners sin conflicto
  }

  @override
  Stream<StepData> get stepStream => _sharedStream;

  /// Con sensors_plus no hay un "iniciar" explícito: la suscripción
  /// al stream activa el sensor automáticamente. Este método existe
  /// para mantener la interfaz pública sin cambios.
  @override
  Future<void> startCounting() async {
    _stepCount = 0; // Reiniciar contador al iniciar nueva sesión
    _samplesSinceLastStep = 0;
    _lastMagnitude = 0;
    debugPrint('AccelerometerDataSource: sesión iniciada (sensors_plus)');
  }

  /// Análogamente, detener se hace cancelando la StreamSubscription
  /// desde el widget/bloc que la consume. Este método limpia el estado.
  @override
  Future<void> stopCounting() async {
    debugPrint(
        'AccelerometerDataSource: sesión detenida — $_stepCount pasos registrados');
  }

  @override
  Future<bool> requestPermissions() async {
    final activityStatus = await Permission.activityRecognition.request();
    final sensorsStatus = await Permission.sensors.request();
    return activityStatus.isGranted && sensorsStatus.isGranted;
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\datasources\biometric_datasource.dart
================================================

import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';
import '../../domain/entities/auth_result.dart';

/// DataSource para autenticación biométrica usando plugin local_auth
/// - Reemplaza Platform Channels por plugin
/// - Soporta huella dactilar, reconocimiento facial, PIN
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
      debugPrint('❌ Error obteniendo biometría disponible: $e');
      return [];
    }
  }

  @override
  Future<AuthResult> authenticate() async {
    try {
      final isAuthenticated = await _localAuth.authenticate(
        localizedReason: _reason,
        options: const AuthenticationOptions(
          stickyAuth: true, // Mantener auth activa mientras la app está en foreground
          biometricOnly: false, // Permitir PIN/patrón como fallback
        ),
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
        emit(AuthFailure(result.message ?? 'Error desconocido'));
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
import 'dart:async';
import '../../../data/datasources/accelerometer_datasource.dart';
import '../../../domain/entities/step_data.dart';
import '../../../../../injection_container.dart';

/// Widget que muestra el contador de pasos
///
/// EXPLICACIÓN DIDÁCTICA:
/// - Usa StreamSubscription para escuchar el EventChannel
/// - Actualiza UI cada vez que llegan nuevos datos
class StepCounterWidget extends StatefulWidget {
  const StepCounterWidget({super.key});

  @override
  State<StepCounterWidget> createState() => _StepCounterWidgetState();
}

class _StepCounterWidgetState extends State<StepCounterWidget> {
  final AccelerometerDataSource _dataSource = sl<AccelerometerDataSource>();

  StreamSubscription<StepData>? _subscription;
  StepData? _currentData;
  bool _isTracking = false;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  void _toggleTracking() {
    if (_isTracking) {
      _stopTracking();
    } else {
      _startTracking();
    }
  }

  void _startTracking() async {
    // Solicitar permisos
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Permisos de sensores denegados'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    await _dataSource.startCounting();

    // SUSCRIBIRSE AL STREAM
    _subscription = _dataSource.stepStream.listen(
      (data) {
        setState(() {
          _currentData = data;
        });
      },
      onError: (Object error) {
        debugPrint('Error en stream: $error');
      },
    );

    setState(() {
      _isTracking = true;
    });
  }

  void _stopTracking() async {
    await _dataSource.stopCounting();
    _subscription?.cancel();

    setState(() {
      _isTracking = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Contador de Pasos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  onPressed: _toggleTracking,
                  icon: Icon(_isTracking ? Icons.stop : Icons.play_arrow),
                  label: Text(_isTracking ? 'Detener' : 'Iniciar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isTracking ? Colors.red : Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const Divider(),

            // Contador
            Text(
              '${_currentData?.stepCount ?? 0}',
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6366F1),
              ),
            ),
            const Text('pasos', style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 16),

            // Indicadores
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfoChip(
                  icon: _getActivityIcon(_currentData?.activityType),
                  label: _getActivityLabel(_currentData?.activityType),
                  color: Colors.blue,
                ),
                _buildInfoChip(
                  icon: Icons.local_fire_department,
                  label: '${_currentData?.estimatedCalories.toStringAsFixed(1) ?? "0"} cal',
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withAlpha((0.1 * 255).round()),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: color),
          const SizedBox(width: 6),
          Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  IconData _getActivityIcon(ActivityType? type) {
    switch (type) {
      case ActivityType.walking:
        return Icons.directions_walk;
      case ActivityType.running:
        return Icons.directions_run;
      case ActivityType.stationary:
        return Icons.accessibility_new;
      default:
        return Icons.help_outline;
    }
  }

  String _getActivityLabel(ActivityType? type) {
    switch (type) {
      case ActivityType.walking:
        return 'Caminando';
      case ActivityType.running:
        return 'Corriendo';
      case ActivityType.stationary:
        return 'Quieto';
      default:
        return 'Detectando...';
    }
  }
}


          
================================================
📄 ARCHIVO: lib\features\auth\tracking\data\datasources\gps_datasource.dart
================================================

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../../domain/entities/location_point.dart';

/// DataSource para GPS y ubicación usando plugin geolocator
/// - Reemplaza Platform Channels por plugin
/// - Maneja permisos automáticamente
abstract class GpsDataSource {
  Future<LocationPoint?> getCurrentLocation();
  Stream<LocationPoint> get locationStream;
  Future<bool> isLocationServiceEnabled();
  Future<bool> requestPermissions();
  Future<void> openLocationSettings();
}

class GpsDataSourceImpl implements GpsDataSource {
  /// Stream compartido para reutilizar en toda la app
  late final Stream<LocationPoint> _sharedStream =
      Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.best,
          distanceFilter: 1, // Mínimo 1 metro de cambio para emitir evento
          timeLimit: Duration(seconds: 10),
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
  Future<LocationPoint?> getCurrentLocation() async {
    try {
      final isServiceEnabled = await isLocationServiceEnabled();
      if (!isServiceEnabled) {
        debugPrint('⚠️ Servicio de ubicación desactivado');
        return null;
      }

      final position = await Geolocator.getCurrentPosition(
        timeLimit: const Duration(seconds: 15),
        forceAndroidLocationManager: false,
      );

      return LocationPoint(
        latitude: position.latitude,
        longitude: position.longitude,
        altitude: position.altitude,
        speed: position.speed,
        accuracy: position.accuracy,
        timestamp: position.timestamp,
      );
    } catch (e) {
      debugPrint('❌ Error obteniendo ubicación: $e');
      return null;
    }
  }

  @override
  Stream<LocationPoint> get locationStream => _sharedStream;

  @override
  Future<bool> isLocationServiceEnabled() async {
    try {
      return await Geolocator.isLocationServiceEnabled();
    } catch (e) {
      debugPrint('❌ Error verificando servicio: $e');
      return false;
    }
  }

  @override
  Future<bool> requestPermissions() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        debugPrint('⚠️ Permisos denegados permanentemente');
        return false;
      }

      return permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always;
    } catch (e) {
      debugPrint('❌ Error solicitando permisos: $e');
      return false;
    }
  }

  @override
  Future<void> openLocationSettings() async {
    try {
      await Geolocator.openLocationSettings();
    } catch (e) {
      debugPrint('❌ Error abriendo ajustes: $e');
    }
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
📄 ARCHIVO: lib\features\auth\tracking\presentation\widgets\route_map_widget.dart
================================================


import 'package:flutter/material.dart' hide Route;
import 'dart:async';
import '../../data/datasources/gps_datasource.dart';
import '../../domain/entities/location_point.dart';
import '../../../../../injection_container.dart';

class RouteMapWidget extends StatefulWidget {
  const RouteMapWidget({super.key});

  @override
  State<RouteMapWidget> createState() => _RouteMapWidgetState();
}

class _RouteMapWidgetState extends State<RouteMapWidget> {
  final GpsDataSource _dataSource = sl<GpsDataSource>();
  Route _route = Route();
  GpsKalmanFilter _kalmanFilter = GpsKalmanFilter();

  StreamSubscription<LocationPoint>? _subscription;
  bool _isTracking = false;
  String _statusMessage = 'Presiona Iniciar';

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> _toggleTracking() async {
    if (_isTracking) {
      _stopTracking();
    } else {
      await _startTracking();
    }
  }

  Future<void> _startTracking() async {
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) {
      setState(() {
        _statusMessage = 'Permisos denegados';
      });
      _showPermissionDeniedDialog();
      return;
    }

    final gpsEnabled = await _dataSource.isLocationServiceEnabled();
    if (!gpsEnabled) {
      setState(() {
        _statusMessage = 'GPS desactivado';
      });
      final shouldOpen = await _showGpsDisabledDialog();
      if (shouldOpen) {
        await _dataSource.openLocationSettings();
      }
      return;
    }

    setState(() {
      _route = Route();
      _kalmanFilter = GpsKalmanFilter();
      _isTracking = true;
      _statusMessage = 'Buscando señal GPS...';
    });

    // Obtener la ubicación inicial (última conocida) de forma inmediata
    final initialPoint = await _dataSource.getCurrentLocation();
    if (initialPoint != null && _isTracking) {
      // Solo usar punto inicial si tiene buena precisión
      if (initialPoint.accuracy <= 35) {
        final filteredInitial = _kalmanFilter.filter(initialPoint);
        setState(() {
          _route.addPoint(filteredInitial);
          _statusMessage = 'Tracking - ${_route.points.length} puntos';
        });
      }
    }

    _subscription = _dataSource.locationStream.listen(
      (LocationPoint point) {
        debugPrint('📍 GPS: ${point.latitude}, ${point.longitude}, acc=${point.accuracy}m');

        // Ignorar puntos de muy baja precisión (como redes de celular en interiores)
        if (point.accuracy > 35) {
          debugPrint('⚠️ GPS: Ignorando punto por baja precisión (${point.accuracy}m)');
          return;
        }

        // Filtrar coordenada usando filtro de Kalman
        final filteredPoint = _kalmanFilter.filter(point);

        if (_route.points.isEmpty) {
          setState(() {
            _route.addPoint(filteredPoint);
            _statusMessage = 'Tracking - ${_route.points.length} puntos';
          });
        } else {
          final lastPoint = _route.points.last;
          final distance = lastPoint.distanceTo(filteredPoint);

          if (distance >= 1.5) {
            setState(() {
              _route.addPoint(filteredPoint);
              _statusMessage = 'Tracking - ${_route.points.length} puntos';
            });
          }
        }
      },
      onError: (Object error) {
        debugPrint('❌ GPS Error: $error');
        setState(() {
          _statusMessage = 'Error: $error';
        });
      },
    );
  }

  void _stopTracking() {
    _subscription?.cancel();
    _route.finish();

    setState(() {
      _isTracking = false;
      _statusMessage = 'Ruta finalizada';
    });
  }

  Future<bool> _showGpsDisabledDialog() async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.location_off, color: Colors.red),
              SizedBox(width: 8),
              Text('GPS Desactivado'),
            ],
          ),
          content: const Text(
            'El servicio de ubicación (GPS) está desactivado. Para poder registrar tu ruta, necesitas activarlo en la configuración de tu dispositivo.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6366F1),
                foregroundColor: Colors.white,
              ),
              child: const Text('Activar'),
            ),
          ],
        );
      },
    ) ?? false;
  }

  void _showPermissionDeniedDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.security, color: Colors.red),
              SizedBox(width: 8),
              Text('Permiso Denegado'),
            ],
          ),
          content: const Text(
            'El permiso de ubicación es indispensable para trazar tu ruta. Por favor, actívalo en los ajustes de la aplicación.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ruta GPS',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton.icon(
                      onPressed: _toggleTracking,
                      icon: Icon(_isTracking ? Icons.stop : Icons.play_arrow),
                      label: Text(_isTracking ? 'Detener' : 'Iniciar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isTracking ? Colors.red : Colors.green,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  _statusMessage,
                  style: TextStyle(
                    color: _isTracking ? Colors.green : Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // Mapa (Canvas)
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomPaint(
                painter: RoutePainter(route: _route),
                size: Size.infinite,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Métricas
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMetric(
                  icon: Icons.straighten,
                  value: '${_route.distanceKm.toStringAsFixed(2)} km',
                  label: 'Distancia',
                ),
                _buildMetric(
                  icon: Icons.timer,
                  value: _formatDuration(_route.duration),
                  label: 'Tiempo',
                ),
                _buildMetric(
                  icon: Icons.speed,
                  value: '${_route.averageSpeed.toStringAsFixed(1)} km/h',
                  label: 'Velocidad',
                ),
                _buildMetric(
                  icon: Icons.local_fire_department,
                  value: _route.estimatedCalories.toStringAsFixed(0),
                  label: 'Calorías',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetric({
    required IconData icon,
    required String value,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFF6366F1)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
      ],
    );
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    }
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

/// CustomPainter para dibujar la ruta
class RoutePainter extends CustomPainter {
  final Route route;

  RoutePainter({required this.route});

  @override
  void paint(Canvas canvas, Size size) {
    if (route.points.isEmpty) {
      final textPainter = TextPainter(
        text: const TextSpan(
          text: 'Sin datos de ruta',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(
          (size.width - textPainter.width) / 2,
          (size.height - textPainter.height) / 2,
        ),
      );
      return;
    }

    // Calcular bounds
    double minLat = route.points.first.latitude;
    double maxLat = route.points.first.latitude;
    double minLon = route.points.first.longitude;
    double maxLon = route.points.first.longitude;

    for (final point in route.points) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLon) minLon = point.longitude;
      if (point.longitude > maxLon) maxLon = point.longitude;
    }

    const padding = 20.0;
    final drawWidth = size.width - padding * 2;
    final drawHeight = size.height - padding * 2;

    Offset toPixel(LocationPoint point) {
      final latRange = maxLat - minLat;
      final lonRange = maxLon - minLon;

      final x = lonRange == 0
          ? drawWidth / 2
          : ((point.longitude - minLon) / lonRange) * drawWidth;
      final y = latRange == 0
          ? drawHeight / 2
          : ((maxLat - point.latitude) / latRange) * drawHeight;

      return Offset(x + padding, y + padding);
    }

    // Dibujar línea
    final linePaint = Paint()
      ..color = const Color(0xFF6366F1)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    path.moveTo(toPixel(route.points.first).dx, toPixel(route.points.first).dy);

    for (int i = 1; i < route.points.length; i++) {
      final pixel = toPixel(route.points[i]);
      path.lineTo(pixel.dx, pixel.dy);
    }

    canvas.drawPath(path, linePaint);

    // Punto inicio (verde)
    final startPaint = Paint()..color = Colors.green;
    canvas.drawCircle(toPixel(route.points.first), 8, startPaint);

    // Punto final (rojo)
    final endPaint = Paint()..color = Colors.red;
    canvas.drawCircle(toPixel(route.points.last), 8, endPaint);
  }

  @override
  bool shouldRepaint(RoutePainter oldDelegate) {
    return true;
  }
}

/// Filtro de Kalman unidimensional en tiempo real para Latitud y Longitud
///
/// EXPLICACIÓN DIDÁCTICA:
/// - Reduce las oscilaciones (ruido estático de ±2-5m) del GPS al caminar en línea recta.
/// - Ajusta dinámicamente el factor de suavizado en función de la precisión (accuracy) reportada.
/// - Cuando la precisión del GPS es alta (R pequeño), confía en el nuevo punto.
/// - Cuando la precisión es baja (R grande), suaviza más la coordenada apoyándose en el histórico.
class GpsKalmanFilter {
  double? _lat;
  double? _lng;
  double _variance = -1.0;

  // Ruido de proceso estimado por segundo en grados cuadrados.
  // Equivale a ~2 metros de movimiento esperado por segundo: (2 / 111111.0)^2 ≈ 3.24e-10
  static const double _processNoise = 3.24e-10;

  LocationPoint filter(LocationPoint point) {
    if (_lat == null || _lng == null || _variance < 0) {
      _lat = point.latitude;
      _lng = point.longitude;
      _variance = (point.accuracy / 111111.0) * (point.accuracy / 111111.0);
      return point;
    }

    // Predicción del estado futuro (la incertidumbre/varianza aumenta por el ruido de proceso)
    double predictedVariance = _variance + _processNoise;

    // Convertir precisión en metros a grados cuadrados para la varianza de medición (R)
    double accuracyDegrees = point.accuracy / 111111.0;
    double r = accuracyDegrees * accuracyDegrees;

    // Calcular la Ganancia de Kalman (K)
    double k = predictedVariance / (predictedVariance + r);

    // Actualizar estimación del estado (Latitud y Longitud)
    _lat = _lat! + k * (point.latitude - _lat!);
    _lng = _lng! + k * (point.longitude - _lng!);
    _variance = (1.0 - k) * predictedVariance;

    return LocationPoint(
      latitude: _lat!,
      longitude: _lng!,
      altitude: point.altitude,
      speed: point.speed,
      accuracy: point.accuracy,
      timestamp: point.timestamp,
    );
  }
}


          
================================================
📄 ARCHIVO: lib\injection_container.dart
================================================

import 'package:get_it/get_it.dart';
import 'core/database/database.dart';
import 'features/activity/data/datasources/activity_datasource_impl.dart';
import 'features/activity/data/services/tts_service.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';
import 'features/activity/data/datasources/activity_repository.dart';
import 'features/auth/data/datasources/accelerometer_datasource.dart';
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

  // Para el StepCounterWidget de la pestaña Inicio
  sl.registerLazySingleton<AccelerometerDataSource>(
    () => AccelerometerDataSourceImpl(),
  );

  sl.registerLazySingleton<GpsDataSource>(
    () => GpsDataSourceImpl(),
  );

  sl.registerLazySingleton<BiometricDataSource>(
    () => BiometricDataSourceImpl(),
  );

  // CAMBIO: ActivityDataSourceImpl ya no recibe AccelerometerDataSource.
  // Ahora usa sensors_plus directamente (ver activity_datasource_impl.dart).
  sl.registerLazySingleton<ActivityDataSourceImpl>(
    () => ActivityDataSourceImpl(),
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

  sl.registerFactory<ActivityBloc>(
    () => ActivityBloc(
      dataSource: sl<ActivityDataSourceImpl>(),
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

// Steps and Tracking
import 'features/auth/steps/presentation/widgets/step_counter_widget.dart';
import 'features/auth/tracking/presentation/widgets/route_map_widget.dart';

// Actividad
import 'features/activity/presentation/bloc/activity_bloc.dart';
import 'features/activity/presentation/pages/activity_page.dart';
import 'features/activity/presentation/pages/historial_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🆕 Inicializar dependencias (incluye Isar)
  // Esta función es ahora async
  await initDependencies();

  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener AuthBloc desde el contenedor de inyección
    final authBloc = sl<AuthBloc>();

    return MaterialApp(
      title: 'Fitness Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6366F1)),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => authBloc,
        child: const AuthWrapper(),
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

  void _onAuthSuccess() {
    setState(() {
      _isAuthenticated = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isAuthenticated) {
      return const HomePage();
    }
    return LoginPage(onAuthSuccess: _onAuthSuccess);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // 📱 Pestaña 0: Inicio (Pasos y Ruta)
          Scaffold(
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
          ),

          // 🏃 Pestaña 1: Detector de Actividad
          BlocProvider(
            create: (_) => sl<ActivityBloc>(),
            child: const ActivityPage(),
          ),

          // 📊 Pestaña 2: Historial (🆕 NUEVO)
          const HistorialPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF6366F1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            label: 'Detector',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historial',
          ),
        ],
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
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5

  # Inyección de dependencias
  get_it: ^7.6.4

  # Manejo de permisos
  permission_handler: ^11.0.1

  # Sensores - acelerómetro crudo para detección de caídas
  sensors_plus: ^5.0.1

  # Clasificación de actividad (caminar / correr / quieto)
  activity_recognition_flutter: ^6.0.0

  # Síntesis de voz
  flutter_tts: ^4.0.2

  # Autenticación biométrica
  local_auth: ^2.2.0

  # GPS y ubicación
  geolocator: ^10.0.0

  # Base de datos local (Drift - Compatible con AGP 8.x)
  drift: ^2.14.1
  sqlite3_flutter_libs: ^0.5.24

  cupertino_icons: ^1.0.8
  path_provider: ^2.1.6

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
  
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


