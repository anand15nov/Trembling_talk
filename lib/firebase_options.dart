
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// 
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
   apiKey: 'AIzaSyAFoTdCEhixy_FHB4CGdzdEFsO-nxDQLDE',
    appId: '1:163691408612:android:514159e48e2ee57a9a50f1',
    messagingSenderId: '163691408612',
    projectId: 'trembling-talk',
    storageBucket: 'trembling-talk.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
     apiKey: 'AIzaSyB23ucMD0cgHRsHo77K55wNrFr3vSLTNTI',
    appId: '1:163691408612:ios:69952ce378317cf79a50f1',
    messagingSenderId: '163691408612',
    projectId: 'trembling-talk',
    storageBucket: 'trembling-talk.appspot.com',
    iosBundleId: 'com.example.tremblingTalk',
  );
}
