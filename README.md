# vcpkg-registry

This is the main vcpkg registry for centor cpp components

### How to use
- First you need to have buildsystem using [vcpkg manifest](https://github.com/microsoft/vcpkg/blob/master/docs/examples/versioning.getting-started.md)
- Second add a [vcpkg-configuration.json](https://github.com/microsoft/vcpkg/blob/master/docs/specifications/registries-2.md)
```json
{  
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/j-bruel/vcpkg-registry.git",
      "packages": [ "centor-cmake-helpers", "cpplog" ]
    }
  ]
}
```