package(default_visibility = ["//visibility:public"])

filegroup(
    name = "all",
    srcs = glob(["**/**"]),
)

filegroup(
    name = "ar",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-ar"],
)

filegroup(
    name = "as",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-as"],
)

filegroup(
    name = "cpp",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-cpp"],
)

filegroup(
    name = "dwp",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-dwp"],
)

filegroup(
    name = "gcc",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-gcc"],
)

filegroup(
    name = "gcov",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-gcov"],
)

filegroup(
    name = "ld",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-ld"],
)

filegroup(
    name = "nm",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-nm"],
)

filegroup(
    name = "objcopy",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-objcopy"],
)

filegroup(
    name = "objdump",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-objdump"],
)

filegroup(
    name = "strip",
    srcs = ["bin/arm-openwrt-linux-muslgnueabi-strip"],
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

load("@bazel_build_file_repo//toolchains:gcc_arm_toolchain.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "toolchain_config",
    abi_libc_version = "unknown",
    abi_version = "musleabi",
    c_version = "c99",
    compile_flags = [
        "--sysroot=external/gcc11_arm_armv7_none_musleabi",
        "-pthread",
        "-mcpu=cortex-a9",
    ],
    compiler = "gcc",
    cpp_version = "c++11",
    cpu = "armv7a",
    cxx_builtin_include_directories = [
    ],
    dbg_compile_flags = [],
    link_flags = [
        "--sysroot=external/gcc11_arm_armv7_none_musleabi",
        "-pthread",
        "-mcpu=cortex-a9",
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
