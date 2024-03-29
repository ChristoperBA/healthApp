import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA2RtVJMr4_XnjX2EP-QR7xmky3DsVjazs",
            authDomain: "health-app-areiqs.firebaseapp.com",
            projectId: "health-app-areiqs",
            storageBucket: "health-app-areiqs.appspot.com",
            messagingSenderId: "876116438315",
            appId: "1:876116438315:web:aa2f0e2a21e27991c0696e"));
  } else {
    await Firebase.initializeApp();
  }
}
