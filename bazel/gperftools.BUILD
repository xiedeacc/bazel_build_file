load("@rules_cc//cc:defs.bzl", "cc_library")
load("@rules_foreign_cc//foreign_cc:configure.bzl", "configure_make")
load("@bazel_skylib//lib:selects.bzl", "selects")

filegroup(
    name = "all",
    srcs = glob(
        ["**"],
        exclude = [],
    ),
    visibility = ["//visibility:public"],
)

config_setting(
    name = "debug_tcmalloc",
    values = {"define": "tcmalloc=debug"},
)

selects.config_setting_group(
    name = "linux_gcc8_armv7_none_musleabi",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_8",
        "@bazel_build_file_repo//platforms:musleabi",
    ],
)

selects.config_setting_group(
    name = "linux_gcc10_armv7_none_eabi",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_10",
        "@bazel_build_file_repo//platforms:eabi",
    ],
)

selects.config_setting_group(
    name = "linux_gcc10_armv7_none_gnueabihf",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_10",
        "@bazel_build_file_repo//platforms:gnueabihf",
    ],
)

selects.config_setting_group(
    name = "linux_gcc10_aarch64_none_elf",
    match_all = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_10",
        "@bazel_build_file_repo//platforms:elf",
    ],
)

selects.config_setting_group(
    name = "linux_gcc10_aarch64_none_gnueabi",
    match_all = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_10",
        "@bazel_build_file_repo//platforms:gnueabi",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_armv7_none_eabi",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_11",
        "@bazel_build_file_repo//platforms:eabi",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_armv7_none_gnueabihf",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_11",
        "@bazel_build_file_repo//platforms:gnueabihf",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_armv7_none_musleabi",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_11",
        "@bazel_build_file_repo//platforms:musleabi",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_aarch64_none_elf",
    match_all = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_11",
        "@bazel_build_file_repo//platforms:elf",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_aarch64_none_gnueabi",
    match_all = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_11",
        "@bazel_build_file_repo//platforms:gnueabi",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_aarch64_none_musleabi",
    match_all = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        "@bazel_build_file_repo//platforms:gcc_11",
        "@bazel_build_file_repo//platforms:musleabi",
    ],
)

configure_make(
    name = "gperftools_build",
    args = ["-j6"],
    configure_options = [
        "--enable-shared=no",
        "--enable-frame-pointers",
        "--disable-libunwind",
    ] + select({
        ":linux_gcc8_armv7_none_musleabi": ["--host=armv7l-unknown-linux-musleabihf"],
        ":linux_gcc10_armv7_none_eabi": ["--host=armv7-none-eabi"],
        ":linux_gcc10_armv7_none_gnueabihf": ["--host=armv7-none-gnueabihf"],
        ":linux_gcc10_aarch64_none_elf": ["--host=aarch64-none-elf"],
        ":linux_gcc10_aarch64_none_gnueabi": ["--host=aarch64-none-gnueabi"],
        ":linux_gcc11_armv7_none_eabi": ["--host=armv7-none-eabi"],
        ":linux_gcc11_armv7_none_gnueabihf": ["--host=armv7-none-gnueabihf"],
        ":linux_gcc11_armv7_none_musleabi": ["--host=armv7l-unknown-linux-musleabihf"],
        ":linux_gcc11_aarch64_none_elf": ["--host=aarch64-none-elf"],
        ":linux_gcc11_aarch64_none_gnueabi": ["--host=aarch64-none-gnueabi"],
        ":linux_gcc11_aarch64_none_musleabi": ["--host=aarch64-unknown-linux-musl"],
        "//conditions:default": [],
    }),
    copts = [
        "-D_POSIX_C_SOURCE=199309L",
        "-std=c++17",
    ] + select({
        ":linux_gcc8_armv7_none_musleabi": [
            "-pthread",
            "-static",
        ],
        ":linux_gcc10_armv7_none_eabi": ["-mthumb"],
        ":linux_gcc10_armv7_none_gnueabihf": ["-pthread"],
        ":linux_gcc10_aarch64_none_elf": ["-pthread"],
        ":linux_gcc10_aarch64_none_gnueabi": ["-pthread"],
        ":linux_gcc11_armv7_none_eabi": ["-mthumb"],
        ":linux_gcc11_armv7_none_gnueabihf": ["-pthread"],
        ":linux_gcc11_armv7_none_musleabi": [
            "-pthread",
            "-static",
        ],
        ":linux_gcc11_aarch64_none_elf": ["-pthread"],
        ":linux_gcc11_aarch64_none_gnueabi": ["-pthread"],
        ":linux_gcc11_aarch64_none_musleabi": ["-pthread"],
        "//conditions:default": [],
    }),
    lib_source = ":all",
    linkopts = [],
    out_static_libs = select({
        ":debug_tcmalloc": ["libtcmalloc_debug.a"],
        "//conditions:default": ["libtcmalloc_and_profiler.a"],
    }),
    tags = ["skip_on_windows"],
)

# Workaround for https://github.com/bazelbuild/rules_foreign_cc/issues/227
cc_library(
    name = "gperftools",
    tags = ["skip_on_windows"],
    visibility = ["//visibility:public"],
    deps = [
        "gperftools_build",
    ],
)
