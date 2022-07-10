package(default_visibility = ["//visibility:public"])

filegroup(
    name = "all",
    srcs = glob(["**/**"]),
)

filegroup(
    name = "ar",
    srcs = ["bin/aarch64-openwrt-linux-musl-ar"],
)

filegroup(
    name = "as",
    srcs = ["bin/aarch64-openwrt-linux-musl-as"],
)

filegroup(
    name = "cpp",
    srcs = ["bin/aarch64-openwrt-linux-musl-cpp"],
)

filegroup(
    name = "dwp",
    srcs = ["bin/aarch64-openwrt-linux-musl-dwp"],
)

filegroup(
    name = "gcc",
    srcs = ["bin/aarch64-openwrt-linux-musl-gcc"],
)

filegroup(
    name = "gcov",
    srcs = ["bin/aarch64-openwrt-linux-musl-gcov"],
)

filegroup(
    name = "ld",
    srcs = ["bin/aarch64-openwrt-linux-musl-ld"],
)

filegroup(
    name = "nm",
    srcs = ["bin/aarch64-openwrt-linux-musl-nm"],
)

filegroup(
    name = "objcopy",
    srcs = ["bin/aarch64-openwrt-linux-musl-objcopy"],
)

filegroup(
    name = "objdump",
    srcs = ["bin/aarch64-openwrt-linux-musl-objdump"],
)

filegroup(
    name = "strip",
    srcs = ["bin/aarch64-openwrt-linux-musl-strip"],
)

filegroup(
    name = "compiler_components",
    srcs = [
        "ar",
        "as",
        "cpp",
        "dwp",
        "gcc",
        "gcov",
        "ld",
        "nm",
        "objcopy",
        "objdump",
        "strip",
    ],
)

load("@bazel_build_file//toolchains:gcc_arm_toolchain.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "toolchain_config",
    abi_libc_version = "unknown",
    abi_version = "musleabi",
    c_version = "c99",
    compile_flags = [
        "--sysroot=external/gcc11_arm_aarch64_none_musleabi",
        "-tune=cortex-a72.cortex-a53",
        "-march=armv8-a",
        "-pthread",
    ],
    compiler = "gcc",
    cpp_version = "c++17",
    cpu = "aarch64",
    cxx_builtin_include_directories = [
    ],
    dbg_compile_flags = [],
    link_flags = [
        "--sysroot=external/gcc11_arm_aarch64_none_musleabi",
        "-tune=cortex-a72.cortex-a53",
        "-march=armv8-a",
        "-pthread",
    ],
    link_libs = [],
    opt_compile_flags = [],
    opt_link_flags = [],
    target_libc = "unknown",
    tool_paths = ":compiler_components",
    unfiltered_compile_flags = [],
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
