# mesh_di

A sample dependencies injector to use, mesh_di.

Example:

final _instance = MeshInjector().instance;
  
_instance.put<Dependency>();

_instance.putFactory<Dependency>(() => DependencyImpl());

_instance.find<Dependency>();
