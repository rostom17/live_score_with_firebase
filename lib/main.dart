import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:live_score_with_firebase/app.dart';
import 'package:live_score_with_firebase/firebase_notification_service.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseNotificationService.instance.initialize();

  runApp(const LiveScoreApp());
}


