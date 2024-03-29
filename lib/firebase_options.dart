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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyANDYUmfkPN6WBptkczMGCntyT86F78gC0',
    appId: '1:376554326936:web:77f030f7a69f80bb45b9ed',
    messagingSenderId: '376554326936',
    projectId: 'dere-vip-app',
    authDomain: 'dere-vip-app.firebaseapp.com',
    storageBucket: 'dere-vip-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATYRn6icZQYfdDkBwvRiPU_1pRV4AG8Bw',
    appId: '1:376554326936:android:c55c7e3170f388e145b9ed',
    messagingSenderId: '376554326936',
    projectId: 'dere-vip-app',
    storageBucket: 'dere-vip-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBa-xlhwhbr5_cwTsh04wMkKamM5eEUQO0',
    appId: '1:376554326936:ios:813d1bba61bf324445b9ed',
    messagingSenderId: '376554326936',
    projectId: 'dere-vip-app',
    storageBucket: 'dere-vip-app.appspot.com',
    iosBundleId: 'com.example.dereVipApp',
  );
}
