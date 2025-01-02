import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _internal = TLocalStorage._instance();

  factory TLocalStorage() {
    return _internal;
  }

  TLocalStorage._instance();

  final _storage = GetStorage();

  // generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // generic method to get data
  T? getData<T>(String key) {
    return _storage.read<T>(key);
  }

  // generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // generic method to clear all data
  Future<void> clearAllData() async {
    await _storage.erase();
  }
}
