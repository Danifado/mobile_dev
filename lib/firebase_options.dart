// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCFiybENUjbcD7OsdSDEcanZLct48iBKqc',
    appId: '1:732056093788:web:6c22aa3258e18a14045299',
    messagingSenderId: '732056093788',
    projectId: 'proyecto-document',
    authDomain: 'proyecto-document.firebaseapp.com',
    storageBucket: 'proyecto-document.appspot.com',
    measurementId: 'G-RQC1WHSQGC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbyLhVYZ5TT_276WXYYqCBqIy8k7ljs5Q',
    appId: '1:732056093788:android:5e3cf1a20961329c045299',
    messagingSenderId: '732056093788',
    projectId: 'proyecto-document',
    storageBucket: 'proyecto-document.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8jzIry0uLMnJUepGojKpE3T_X6ZLS7BU',
    appId: '1:732056093788:ios:619cb3f8b485c119045299',
    messagingSenderId: '732056093788',
    projectId: 'proyecto-document',
    storageBucket: 'proyecto-document.appspot.com',
    iosClientId: '732056093788-tqb7g2d3jbgqnpj18tp207s1ldr3i3ec.apps.googleusercontent.com',
    iosBundleId: 'com.example.sprint1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8jzIry0uLMnJUepGojKpE3T_X6ZLS7BU',
    appId: '1:732056093788:ios:619cb3f8b485c119045299',
    messagingSenderId: '732056093788',
    projectId: 'proyecto-document',
    storageBucket: 'proyecto-document.appspot.com',
    iosClientId: '732056093788-tqb7g2d3jbgqnpj18tp207s1ldr3i3ec.apps.googleusercontent.com',
    iosBundleId: 'com.example.sprint1',
  );
}
