# build examples:
```
bazel build //...
```

```
clear && bazel build --incompatible_enable_cc_toolchain_resolution --platforms=//platforms:linux_gcc11_aarch64_none_musleabi --spawn_strategy=local --verbose_failures -s  --copt=-g3 --strip=never //...
```
