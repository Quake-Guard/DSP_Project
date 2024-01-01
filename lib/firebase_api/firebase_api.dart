import 'package:dsp_project/firebase_api/subscribe_to_tobic.dart';
import 'package:dsp_project/utils/show_custom_dialog.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {}

class FirebaseApi {
  final firebaseMessaging = FirebaseMessaging.instance;

  Future initNotification(context) async {
    await firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    await subscribeToTobic();
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessage.listen((event) {
      showCustomDialog(context);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      showCustomDialog(context);
    });
  }
}
