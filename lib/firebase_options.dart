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
    apiKey: 'AIzaSyCNTZdsyh_xBlK3r4mki4rZoTemKimnygg',
    appId: '1:603332936324:web:7685b91ef735562ebdb8d1',
    messagingSenderId: '603332936324',
    projectId: 'whpro6633',
    authDomain: 'whpro6633.firebaseapp.com',
    storageBucket: 'whpro6633.appspot.com',
    measurementId: 'G-B0XS4L4VFQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-2Hdnhyn8Dh_0rYwtYQB3x2YbyDbgRVk',
    appId: '1:603332936324:android:bd3d214edf206643bdb8d1',
    messagingSenderId: '603332936324',
    projectId: 'whpro6633',
    storageBucket: 'whpro6633.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNKVzQJv0UN2wHiJqI9bMNG3Y-ocnUjQo',
    appId: '1:603332936324:ios:3d480f10adedc744bdb8d1',
    messagingSenderId: '603332936324',
    projectId: 'whpro6633',
    storageBucket: 'whpro6633.appspot.com',
    iosClientId: '603332936324-7mbh5edumk6c0jq21skrsebsccq9n48p.apps.googleusercontent.com',
    iosBundleId: 'com.whpro.whpro',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNKVzQJv0UN2wHiJqI9bMNG3Y-ocnUjQo',
    appId: '1:603332936324:ios:3d480f10adedc744bdb8d1',
    messagingSenderId: '603332936324',
    projectId: 'whpro6633',
    storageBucket: 'whpro6633.appspot.com',
    iosClientId: '603332936324-7mbh5edumk6c0jq21skrsebsccq9n48p.apps.googleusercontent.com',
    iosBundleId: 'com.whpro.whpro',
  );
}
