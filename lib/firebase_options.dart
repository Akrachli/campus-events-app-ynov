import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDytNnHOY0iFbUU6lDnYDVHLgmu8-Bb9Gw',
    appId: '1:562943686436:web:e5a947d5927bb3535fe5b1',
    messagingSenderId: '562943686436',
    projectId: 'campus-events-app-ae5bd',
    authDomain: 'campus-events-app-ae5bd.firebaseapp.com',
    storageBucket: 'campus-events-app-ae5bd.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDytNnHOY0iFbUU6lDnYDVHLgmu8-Bb9Gw',
    appId: '1:562943686436:android:e19ea5a83ee7f4565fe5b1',
    messagingSenderId: '562943686436',
    projectId: 'campus-events-app-ae5bd',
    authDomain: 'campus-events-app-ae5bd.firebaseapp.com',
    storageBucket: 'campus-events-app-ae5bd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDytNnHOY0iFbUU6lDnYDVHLgmu8-Bb9Gw',
    appId: '1:562943686436:ios:e19ea5a83ee7f4565fe5b1',
    messagingSenderId: '562943686436',
    projectId: 'campus-events-app-ae5bd',
    authDomain: 'campus-events-app-ae5bd.firebaseapp.com',
    storageBucket: 'campus-events-app-ae5bd.firebasestorage.app',
    iosBundleId: 'com.example.campusEventsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDytNnHOY0iFbUU6lDnYDVHLgmu8-Bb9Gw',
    appId: '1:562943686436:macos:e19ea5a83ee7f4565fe5b1',
    messagingSenderId: '562943686436',
    projectId: 'campus-events-app-ae5bd',
    authDomain: 'campus-events-app-ae5bd.firebaseapp.com',
    storageBucket: 'campus-events-app-ae5bd.firebasestorage.app',
    iosBundleId: 'com.example.campusEventsApp',
  );
}
