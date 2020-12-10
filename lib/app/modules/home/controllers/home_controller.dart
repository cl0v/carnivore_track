import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  final imcValue = 0.0.obs;

  onCalcImcPressed() {
    final weight = double.parse(weightController.text);
    final height = double.parse(heightController.text);
    final h = height * height;
    imcValue.value = (weight /h);
  }
}
