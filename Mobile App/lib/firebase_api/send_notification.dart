import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;

sendNotification() async {
  String url =
      'https://fcm.googleapis.com/fcm/send';
  String serverKey =
      'AAAAlcz6Bpo:APA91bHTLb0H73AZVk8GnWLYrIespyu4pKzropYOpk6aT3n6fy7mQ_weKb2RUDusK55_cNdYTPGB_xoN2IRn9jyHFVSLiGi18cVpXiGHCRn6TzCxjS81DFfYOUfcUA_cKQKm1ZOetV9P';
  String topic = 'dsp_project';
  Map<String, dynamic> body = {
    "to": "/topics/$topic",
    "notification": {
      "title": "تحذير !!!",
      "body": "هناك زلزال"
    }
  };

  final http.Response response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'key=$serverKey',
    },
    body: jsonEncode(body),
  );

  if (response.statusCode == 200) {
    print('FCM notification sent successfully!');
    FirebaseDatabase.instance.ref().child('isTrue').set(0);
  } else {
    print(
        'Failed to send FCM notification. Status code: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
