import 'package:bathra_hackathon/screens/challange_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription>? cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    // ignore: avoid_print
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChallengeScreen(cameras!),
      // routes: {
      //   // ChallengeScreen.id: (context) => ChallengeScreen(cameras),
      //   // DemoScreen.id: (context) => DemoScreen(),
      // },
    );
  }
}
