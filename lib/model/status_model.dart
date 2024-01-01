import 'package:dsp_project/model/instruction_model.dart';

class StatusModel {
  final int id;
  final String image;
  final String title;
  final List<InstructionModel> instructions;

  StatusModel(
    this.image,
    this.title,
    this.id,
    this.instructions,
  );
}
