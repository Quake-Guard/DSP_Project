import 'package:dsp_project/model/instruction_model.dart';
import 'package:dsp_project/model/status_model.dart';
import 'package:flutter/material.dart';

class Constant {
  static const Color mainColor = Color(0xff1B4242);
  static const Color backgroundColor = Color(0xffF5F4F2);
  static const String homeImage = 'assets/images/home.jpg';
  static const String roadImage = 'assets/images/road.jpg';
  static const String buildingImage = 'assets/images/building.jpg';
  static const String trainImage = 'assets/images/train.jpg';
  static const String carImage = 'assets/images/car.jpg';
  static const String seaImage = 'assets/images/sea.png';

  static List<StatusModel> images = [
    StatusModel(
      homeImage,
      'في المنزل',
      0,
      [
        InstructionModel(
          'assets/images/1.png',
          'احتمي تحت طاولة أو مكتب قوي',
        ),
        InstructionModel(
          'assets/images/2.jpg',
          'بمجرد توقف الهزات، قم بإطفاء أي لهب مفتوح على الفور',
        ),
        InstructionModel(
          'assets/images/3.jpg',
          'قم بإيقاف تشغيل القواطع وصمامات الغاز قبل الإخلاء',
        ),
        InstructionModel(
          'assets/images/4.jpg',
          'ومن المهم بشكل خاص الحماية من اندلاع الحرائق وانتشارها',
        ),
      ],
    ),
    StatusModel(
      roadImage,
      'في الخارج',
      1,
      [
        InstructionModel(
          'assets/images/5.jpg',
          'احذر من الحطام الناتج عن المباني المتضررة والجدران وأعمدة الهاتف وإشارات المرور والزجاج المتساقط واللوحات الإعلانية',
        ),
        InstructionModel(
          'assets/images/6.jpg',
          'شق طريقك إلى مكان مفتوح',
        ),
        InstructionModel(
          'assets/images/7.jpg',
          'تجنب المشي في الطرق بقدر الإمكان',
        ),
      ],
    ),
    StatusModel(
      buildingImage,
      'في المباني والمحلات',
      2,
      [
        InstructionModel(
          'assets/images/8.jpg',
          'ابتعد عن أي زجاج أو تركيبات إضاءة أو أرفف عرض',
        ),
        InstructionModel(
          'assets/images/9.jpg',
          'لا تستخدم المصاعد أو السلالم المتحركة',
        ),
        InstructionModel(
          'assets/images/10.jpg',
          'إذا كنت في المصعد عندما بدأت الهزات الأرضية، اضغط على جميع أزرار الأرضية وانزل في الطابق الأول الذي تتوقف فيه',
        ),
        InstructionModel(
          'assets/images/11.jpg',
          'الإخلاء عبر الدرج',
        ),
        InstructionModel(
          'assets/images/12.jpg',
          'تشكل المكاتب القديمة والمباني الشاهقة خطرًا كبيرًا للانهيار ويجب إخلاؤها على الفور',
        ),
      ],
    ),
    StatusModel(
      trainImage,
      'في محطات القطار والمترو',
      3,
      [
        InstructionModel(
          'assets/images/13.jpg',
          'التمسك بالدرابزين والأشرطة',
        ),
        InstructionModel(
          'assets/images/14.jpg',
          'احذر من التوقف المفاجئ',
        ),
        InstructionModel(
          'assets/images/15.jpg',
          'احذر من سقوط الأشياء من رف الأمتعة',
        ),
      ],
    ),
    StatusModel(
      carImage,
      'اثناء القيادة',
      4,
      [
        InstructionModel(
          'assets/images/16.jpg',
          'خفف من سرعتك برفق ثم توقف على الجانب الأيسر من الطريق',
        ),
        InstructionModel(
          'assets/images/17.jpg',
          'إذا كان هناك موقف للسيارات أو أي منطقة مفتوحة أخرى متاحة فمن الأفضل التوقف عند هذا الحد',
        ),
        InstructionModel(
          'assets/images/18.jpg',
          'بمجرد توقف الهزة، اخرج من سيارتك وابدأ في الإخلاء سيرًا على الأقدام',
        ),
        InstructionModel(
          'assets/images/19.jpg',
          'يجب إخلاء المناطق الجبلية والساحلية فوراً',
        ),
      ],
    ),
    StatusModel(
      seaImage,
      'في المناطق الساحلية',
      5,
      [
        InstructionModel(
          'assets/images/20.jpg',
          'بمجرد حدوث زلزال كبير، فمن الأفضل بشكل عام الإخلاء نحو الأراضي المرتفعة على الفور',
        ),
        InstructionModel(
          'assets/images/21.jpg',
          'وحتى لو لم يحدث تسونامي مباشرة بعد وقوع الزلزال، فمن الخطر العودة إلى المناطق الساحلية',
        ),
        InstructionModel(
          'assets/images/22.jpg',
          'كن حذرًا بشكل خاص إذا انحسرت مياه المحيط بشكل كبير، فهذه علامة على ضرورة الإخلاء الفوري',
        ),
      ],
    ),
  ];
}
