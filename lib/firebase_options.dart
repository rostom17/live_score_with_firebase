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
    apiKey: 'AIzaSyCF4xMEvXZ2kg0UPM7sp4Jn-727yc7AQQI',
    appId: '1:670667809848:web:b229c9f3324372ea2332cd',
    messagingSenderId: '670667809848',
    projectId: 'live-score-app-6a805',
    authDomain: 'live-score-app-6a805.firebaseapp.com',
    storageBucket: 'live-score-app-6a805.appspot.com',
    measurementId: 'G-H340GR6G28',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAV3dvMaArMR8sgRhWhQlb0h7Q1mHlfzA',
    appId: '1:670667809848:android:1b921d130567d8872332cd',
    messagingSenderId: '670667809848',
    projectId: 'live-score-app-6a805',
    storageBucket: 'live-score-app-6a805.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFXT_qckh8C1MRe6puFmymnKwwhqmpehE',
    appId: '1:670667809848:ios:b31b6694d2302e412332cd',
    messagingSenderId: '670667809848',
    projectId: 'live-score-app-6a805',
    storageBucket: 'live-score-app-6a805.appspot.com',
    iosBundleId: 'com.example.liveScoreWithFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFXT_qckh8C1MRe6puFmymnKwwhqmpehE',
    appId: '1:670667809848:ios:b31b6694d2302e412332cd',
    messagingSenderId: '670667809848',
    projectId: 'live-score-app-6a805',
    storageBucket: 'live-score-app-6a805.appspot.com',
    iosBundleId: 'com.example.liveScoreWithFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCF4xMEvXZ2kg0UPM7sp4Jn-727yc7AQQI',
    appId: '1:670667809848:web:55b308850c0cbe502332cd',
    messagingSenderId: '670667809848',
    projectId: 'live-score-app-6a805',
    authDomain: 'live-score-app-6a805.firebaseapp.com',
    storageBucket: 'live-score-app-6a805.appspot.com',
    measurementId: 'G-S571P2C60L',
  );
}
