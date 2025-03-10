// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA9QHzGop-a03ltcM0taATkkNYaLovnDM8',
    appId: '1:732353763662:web:cf2b99620e8d71e5b2661f',
    messagingSenderId: '732353763662',
    projectId: 'quizapp-2310f',
    authDomain: 'quizapp-2310f.firebaseapp.com',
    storageBucket: 'quizapp-2310f.appspot.com',
    measurementId: 'G-85STTGG0JH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANGx_gsLhWfjJwprChYlqiq-Vbc6YNZqo',
    appId: '1:732353763662:android:ee1353cc46abe3b7b2661f',
    messagingSenderId: '732353763662',
    projectId: 'quizapp-2310f',
    storageBucket: 'quizapp-2310f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdtYXntD2l6XJX5MpLtTPJWcWv5byExj8',
    appId: '1:732353763662:ios:966efc6831f32833b2661f',
    messagingSenderId: '732353763662',
    projectId: 'quizapp-2310f',
    storageBucket: 'quizapp-2310f.appspot.com',
    iosBundleId: 'com.example.quiz',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA9QHzGop-a03ltcM0taATkkNYaLovnDM8',
    appId: '1:732353763662:web:4bfb40a517fa9731b2661f',
    messagingSenderId: '732353763662',
    projectId: 'quizapp-2310f',
    authDomain: 'quizapp-2310f.firebaseapp.com',
    storageBucket: 'quizapp-2310f.appspot.com',
    measurementId: 'G-4RRMXZS5E3',
  );
}
