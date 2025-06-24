import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAxp30Tj0WJ5_jRwVzJmmtfQxUDoaSrC-s",
            authDomain: "ypc-companion.firebaseapp.com",
            projectId: "ypc-companion",
            storageBucket: "ypc-companion.firebasestorage.app",
            messagingSenderId: "466277154970",
            appId: "1:466277154970:web:70950ce2fd9f4c3b4c1f23",
            measurementId: "G-W7ZMZR16C3"));
  } else {
    await Firebase.initializeApp();
  }
}
