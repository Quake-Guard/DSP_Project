import 'package:flutter/material.dart';

showCustomDialog(context) async{
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.14,
        child: Column(
          children: [
            const Icon(
              Icons.warning,
              color: Colors.red,
              size: 60,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const Text(
              'تحذير، هناك زلزال',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}