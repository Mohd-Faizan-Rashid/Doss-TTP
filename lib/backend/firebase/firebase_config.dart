import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB3oj4qeSQWQAPZoPrJ8QdFn2eRUL-W7wc",
            authDomain: "my-app-2vrxhv.firebaseapp.com",
            projectId: "my-app-2vrxhv",
            storageBucket: "my-app-2vrxhv.appspot.com",
            messagingSenderId: "17666284699",
            appId: "1:17666284699:web:69b6d019f3d047324d7a3e",
            measurementId: "G-5DQBBZ52D1"));
  } else {
    await Firebase.initializeApp();
  }
}
