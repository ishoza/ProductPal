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
        return macos;
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
    apiKey: 'AIzaSyALf-3AZbKjqYw-RmTSJXOND4dRUrQoHJ0',
    appId: '1:927378045396:web:c822d4dc245bc343d9fe41',
    messagingSenderId: '927378045396',
    projectId: 'hshm-project',
    authDomain: 'hshm-project.firebaseapp.com',
    storageBucket: 'hshm-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD36CeYLRTc2yldWelWOlgfDxGRGthtHno',
    appId: '1:927378045396:android:2511a7b4a1741636d9fe41',
    messagingSenderId: '927378045396',
    projectId: 'hshm-project',
    storageBucket: 'hshm-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxIIRP5uJxxqt0GoCJM1pZIZzWclvYQjU',
    appId: '1:927378045396:ios:7c2b2ec254b8ff91d9fe41',
    messagingSenderId: '927378045396',
    projectId: 'hshm-project',
    storageBucket: 'hshm-project.appspot.com',
    iosBundleId: 'com.example.hshm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxIIRP5uJxxqt0GoCJM1pZIZzWclvYQjU',
    appId: '1:927378045396:ios:7c2b2ec254b8ff91d9fe41',
    messagingSenderId: '927378045396',
    projectId: 'hshm-project',
    storageBucket: 'hshm-project.appspot.com',
    iosBundleId: 'com.example.hshm',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyALf-3AZbKjqYw-RmTSJXOND4dRUrQoHJ0',
    appId: '1:927378045396:web:972c0cf81d28bc38d9fe41',
    messagingSenderId: '927378045396',
    projectId: 'hshm-project',
    authDomain: 'hshm-project.firebaseapp.com',
    storageBucket: 'hshm-project.appspot.com',
  );
}
