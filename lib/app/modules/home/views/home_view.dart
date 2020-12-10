import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carnivore_track/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Peso'),
              controller: controller.weightController,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Altura'),
              controller: controller.heightController,
            ),
            ElevatedButton(
              onPressed: controller.onCalcImcPressed,
              child: Text('confirmar'),
            ),
            Obx(() => Text(controller.imcValue.value.toString())),
          ],
        ),
      ),
    );
  }
}
