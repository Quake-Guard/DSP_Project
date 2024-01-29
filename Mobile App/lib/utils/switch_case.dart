import 'package:dsp_project/utils/constant.dart';
import 'package:dsp_project/views/instructions_view.dart';
import 'package:flutter/material.dart';

Widget switchBetweenViews(int id) {
  switch (id) {
    case 0:
      return InstructionsView(
        statusModel: Constant.images[0],
      );
    case 1:
      return InstructionsView(
        statusModel: Constant.images[1],
      );
    case 2:
      return InstructionsView(
        statusModel: Constant.images[2],
      );
    case 3:
      return InstructionsView(
        statusModel: Constant.images[3],
      );
    case 4:
      return InstructionsView(
        statusModel: Constant.images[4],
      );
    case 5:
      return InstructionsView(
        statusModel: Constant.images[5],
      );
    default:
      return Container();
  }
}
