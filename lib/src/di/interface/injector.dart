abstract class Injector {
  put<T>({String? tag});
  putFactory<T>(T Function() caller, {String? tag});
  unregister<T>({String? tag});
  find<T>({String? tag});
  void clear();
}
