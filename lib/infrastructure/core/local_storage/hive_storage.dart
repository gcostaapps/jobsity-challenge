import 'package:hive/hive.dart';

import '../../../domain/core/local_storage/i_local_storage.dart';

class HiveStorage implements ILocalStorage {
  HiveStorage() {
    _instance = Hive.openBox('localStorage');
  }

  late Future<Box> _instance;
  Future<Box> get instance => _instance;

  @override
  Future<void> clear() async {
    final box = await instance;
    box.clear();
  }

  @override
  Future<bool> contains(String key) async {
    final box = await instance;
    return box.containsKey(key);
  }

  @override
  Future<T?> read<T>(String key) async {
    final box = await instance;
    return box.get(key);
  }

  @override
  Future<void> remove(String key) async {
    final box = await instance;
    return box.delete(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    final box = await instance;
    return box.put(key, value);
  }
}
