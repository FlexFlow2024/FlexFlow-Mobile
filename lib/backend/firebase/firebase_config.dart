import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCZDdnFY_5S6CbVF44YnUIsYzJvgIJN-34",
            authDomain: "flexflow-jhdc66.firebaseapp.com",
            projectId: "flexflow-jhdc66",
            storageBucket: "flexflow-jhdc66.appspot.com",
            messagingSenderId: "280462630169",
            appId: "1:280462630169:web:bee6c5a9f003c4c4bdb988"));
  } else {
    await Firebase.initializeApp();
  }
}
