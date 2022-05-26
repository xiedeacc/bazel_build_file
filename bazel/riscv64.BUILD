package(default_visibility = ["//visibility:public"])

filegroup(
    name = "all",
    srcs = glob(["**/**"]),
)

filegroup(
    name = "gcc",
    srcs = glob(["bin/*-gcc"]),
)

filegroup(
    name = "ar",
    srcs = glob(["bin/*-ar"]),
)

filegroup(
    name = "cpp",
    srcs = glob(["bin/*-cpp"]),
)

filegroup(
    name = "gcov",
    srcs = glob(["bin/*-gcov"]),
)

filegroup(
    name = "ld",
    srcs = glob(["bin/*-ld"]),
)

filegroup(
    name = "nm",
    srcs = glob(["bin/*-nm"]),
)

filegroup(
    name = "objcopy",
    srcs = glob(["bin/*-objcopy"]),
)

filegroup(
    name = "objdump",
    srcs = glob(["bin/*-objdump"]),
)

filegroup(
    name = "strip",
    srcs = glob(["bin/*-strip"]),
)

filegroup(
    name = "as",
    srcs = glob(["bin/*-as"]),
)

filegroup(
    name = "compiler_components",
    srcs = [
        ":ar",
        ":as",
        ":cpp",
        ":gcc",
        ":gcov",
        ":ld",
        ":nm",
        ":objcopy",
        ":objdump",
        ":strip",
    ],
)

load("@bazel_build_file_repo//toolchains:gcc_aarch64_toolchain.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "toolchain_config",
    tool_paths = ":compiler_components",
)

cc_toolchain(
    name = "cc_toolchain",
    all_files = ":all",
    ar_files = ":all",
    as_files = ":all",
    compiler_files = ":all",
    dwp_files = ":all",
    linker_files = ":all",
    objcopy_files = ":all",
    strip_files = ":all",
    supports_param_files = 0,
    toolchain_config = ":toolchain_config",
)
