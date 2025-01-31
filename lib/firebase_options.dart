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
    apiKey: 'AIzaSyAHWdD-h0QCkWdPnAUMocGGsoNJbJWrB-k',
    appId: '1:885098730762:web:002780a16cd899bf9556f3',
    messagingSenderId: '885098730762',
    projectId: 'movies-app-6af58',
    authDomain: 'movies-app-6af58.firebaseapp.com',
    storageBucket: 'movies-app-6af58.firebasestorage.app',
    measurementId: 'G-D4SF6VWSZF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQXyOXf_DEugBje4wCkZgXxphSs3aLIUU',
    appId: '1:885098730762:android:1d6b60c31c24d89b9556f3',
    messagingSenderId: '885098730762',
    projectId: 'movies-app-6af58',
    storageBucket: 'movies-app-6af58.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbs3lvjLL32m-ucM9MVL8DXz-GdNSl9XY',
    appId: '1:885098730762:ios:f1af58e488ce89919556f3',
    messagingSenderId: '885098730762',
    projectId: 'movies-app-6af58',
    storageBucket: 'movies-app-6af58.firebasestorage.app',
    iosBundleId: 'com.example.moviesApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbs3lvjLL32m-ucM9MVL8DXz-GdNSl9XY',
    appId: '1:885098730762:ios:f1af58e488ce89919556f3',
    messagingSenderId: '885098730762',
    projectId: 'movies-app-6af58',
    storageBucket: 'movies-app-6af58.firebasestorage.app',
    iosBundleId: 'com.example.moviesApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAHWdD-h0QCkWdPnAUMocGGsoNJbJWrB-k',
    appId: '1:885098730762:web:1584e872260236e49556f3',
    messagingSenderId: '885098730762',
    projectId: 'movies-app-6af58',
    authDomain: 'movies-app-6af58.firebaseapp.com',
    storageBucket: 'movies-app-6af58.firebasestorage.app',
    measurementId: 'G-JV5TS3FJTD',
  );
}
