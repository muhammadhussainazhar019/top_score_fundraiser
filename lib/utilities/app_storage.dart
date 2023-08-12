import 'package:get_storage/get_storage.dart';

class MyStorage {
  static final GetStorage myStorage = GetStorage();

  static Future<void> clearAll() async {
    await myStorage.erase();
  }

  static Future<void> setData<T>(String key, T value) async {
    await myStorage.write(key, value);
  }

  static Future<void> removeData(String key) async {
    await myStorage.remove(key);
  }

  static Future<T?> getData<T>(String key) async {
    return myStorage.read<T>(key);
  }

  static Future<bool?> checkForAccessToken() async {
    var accessToken = await myStorage.read('agentAccessToken');
    if(accessToken != null) {
      if(accessToken!.isEmpty) {
        return false;
      }
      else if(accessToken!.isNotEmpty) {
        return true;
      }
    }
    return false;
  }
}