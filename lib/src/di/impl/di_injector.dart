import 'package:mesh_di/src/di/di.dart';

class MeshInjector {
  // ignore: library_private_types_in_public_api
  _InternalMeshInjector get instance => _InternalMeshInjector();
}

class _InternalMeshInjector implements Injector {
  final Map<ComposedType, dynamic> _map = {};

  @override
  put<T>({String? tag}) {
    _map[ComposedType(T, tag)];
  }

  @override
  putFactory<T>(T Function() caller, {String? tag}) {
    _map[ComposedType(T, tag)] = caller;
  }

  @override
  unregister<T>({String? tag}) {
    _map.removeWhere((key, val) => key.tag == tag && key.type == T);
  }

  @override
  void clear() {
    _map.clear();
  }
}
