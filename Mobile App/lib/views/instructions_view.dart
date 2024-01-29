import 'package:dsp_project/model/status_model.dart';
import 'package:dsp_project/utils/constant.dart';
import 'package:flutter/material.dart';

class InstructionsView extends StatelessWidget {
  final StatusModel statusModel;

  const InstructionsView({Key? key, required this.statusModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Constant.backgroundColor,
        appBar: AppBar(
          backgroundColor: Constant.mainColor,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          title: Text(
            statusModel.title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsetsDirectional.symmetric(vertical: 5),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Image.asset(
                      statusModel.instructions[index].image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        statusModel.instructions[index].instruction,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: statusModel.instructions.length,
        ),
      ),
    );
  }
}
