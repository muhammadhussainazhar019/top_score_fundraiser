// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/contacts_controller.dart';

class ContactsView extends GetView<ContactsController> {
  @override
  ContactsController controller = Get.put(ContactsController());
  ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: const Center(
        child: Text('Contacts Page'),
      ),
    );
  }
}
