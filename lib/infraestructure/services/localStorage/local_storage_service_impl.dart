import 'package:shared_preferences/shared_preferences.dart';
import 'package:teachersguard/infraestructure/services/localStorage/local_storage_service.dart';

class LocalStorageServiceImpl extends LocalStorageService{
  Future<SharedPreferences> getSharedPrefs() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<T?> getValue<T>(String key) async {
    final prefs = await getSharedPrefs();

    switch (T) {
      case const (int):
        return prefs.getInt(key) as T?;

      case const (String):
        return prefs.getString(key) as T?;
        
      default:
        throw UnimplementedError(
            'GET not implemented for type ${T.runtimeType}');
    }
  }

  @override
  Future<bool> removeKey(String key) async {
    final prefs = await getSharedPrefs();
    return await prefs.remove(key);
  }

  @override
  Future<void> setKeyValue<T>(String key, T value) async {
    final prefs = await getSharedPrefs();

    switch (T) {
      case const (int):
        prefs.setInt(key, value as int);
        break;

      case const (String):
        prefs.setString(key, value as String);
        break;

      default:
        throw UnimplementedError(
            'SET not implemented for type ${T.runtimeType}');
    }
  }
}