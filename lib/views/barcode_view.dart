// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/barcode_controller.dart';

class BarCodeView extends GetView<BarCodeController> {
  @override
  BarCodeController controller = Get.put(BarCodeController());
  BarCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BarCode')),
      body: const Center(
        child: Text('BarCode Page'),
      ),
    );
  }
}
