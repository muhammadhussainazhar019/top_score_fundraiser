import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

void initServices() async {
  if (kDebugMode) {
    print('Starting Services!');
  }
  await GetStorage.init();
  if (kDebugMode) {
    print('All Services Started!');
  }
}