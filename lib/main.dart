import 'package:commerce_app/core/app/env.variables.dart';
import 'package:commerce_app/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCOhEziP_CyyxxwU1pyqHZwa9TaaaGIGlU',
      appId: '1:892316346093:android:00cd5f5761829622d24ee4',
      messagingSenderId: '892316346093',
      projectId: 'store-app-e25e2',
    ),
  );

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp], ).then((_){
        runApp(const MyApp());
      });

  
}
