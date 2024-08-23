import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  FirebaseNotificationService._();

  static final FirebaseNotificationService instance = FirebaseNotificationService._();

  Future<void> initialize () async {
     await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

     //TODO: app akhon use kortesi...
     FirebaseMessaging.onMessage.listen((RemoteMessage message) {});

     //TODO: app use akhon use kortesi na but kisu khon agye use korsi. backgournd / recent a ase...
     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});

     //TODO: app akdom e use kori nai...
     FirebaseMessaging.onBackgroundMessage(doNothing);
  }

}

Future<void> doNothing (RemoteMessage message) async {

}