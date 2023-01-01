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
    apiKey: 'AIzaSyA2VJdak8t1-GS-3op5eWIU_FVrzemuFc0',
    appId: '1:194732532548:web:dcd9dfd52510959717ed11',
    messagingSenderId: '194732532548',
    projectId: 'whatsapp-backend-84c61',
    authDomain: 'whatsapp-backend-84c61.firebaseapp.com',
    storageBucket: 'whatsapp-backend-84c61.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfVSi1KAdi6jiEI7QVUoStmb7QIHGtqks',
    appId: '1:194732532548:android:cd4fd5b8b3be5b3b17ed11',
    messagingSenderId: '194732532548',
    projectId: 'whatsapp-backend-84c61',
    storageBucket: 'whatsapp-backend-84c61.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtYLUXez449zrC9fPFnk49nEdtj_yh66g',
    appId: '1:194732532548:ios:040b1953a6c514b117ed11',
    messagingSenderId: '194732532548',
    projectId: 'whatsapp-backend-84c61',
    storageBucket: 'whatsapp-backend-84c61.appspot.com',
    iosClientId: '194732532548-71uue66aqqa9oricnea0krrs1jtilgt8.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterWhatsappClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtYLUXez449zrC9fPFnk49nEdtj_yh66g',
    appId: '1:194732532548:ios:040b1953a6c514b117ed11',
    messagingSenderId: '194732532548',
    projectId: 'whatsapp-backend-84c61',
    storageBucket: 'whatsapp-backend-84c61.appspot.com',
    iosClientId: '194732532548-71uue66aqqa9oricnea0krrs1jtilgt8.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterWhatsappClone',
  );
}
