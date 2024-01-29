import 'package:dsp_project/firebase_api/firebase_api.dart';
import 'package:dsp_project/firebase_api/send_notification.dart';
import 'package:dsp_project/utils/constant.dart';
import 'package:dsp_project/utils/switch_case.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ref = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    super.initState();
    FirebaseApi().initNotification(context);
    ref.child('isTrue').onValue.listen((event) {
      if (event.snapshot.value == 1) {
        sendNotification();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      appBar: AppBar(
        backgroundColor: Constant.mainColor,
        title: const Text(
          'وَعْي',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.24,
        ),
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  int id = index;
                  return switchBetweenViews(id);
                },
              ),
            );
          },
          child: Container(
            padding: const EdgeInsetsDirectional.all(8),
            margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    Constant.images[index].image,
                  ),
                ),
                Text(
                  Constant.images[index].title,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        itemCount: Constant.images.length,
      ),
    );
  }
}
