import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAYVqar3p5OppW96W3i0cPs69xfvHmmVq4",
            authDomain: "xflowapp-fc4b6.firebaseapp.com",
            projectId: "xflowapp-fc4b6",
            storageBucket: "xflowapp-fc4b6.appspot.com",
            messagingSenderId: "772665708682",
            appId: "1:772665708682:web:abfa019c495ccded941d73",
            measurementId: "G-N2RXKBGFHY"));
  } else {
    await Firebase.initializeApp();
  }
}
