import 'package:firebase_messaging/firebase_messaging.dart';

subscribeToTobic() async{
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  await messaging.subscribeToTopic('dsp_project');
}