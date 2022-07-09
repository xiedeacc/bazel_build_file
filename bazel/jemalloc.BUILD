load("@rules_cc//cc:defs.bzl", "cc_library")
load("@rules_foreign_cc//foreign_cc:configure.bzl", "configure_make")
load("@bazel_skylib//lib:selects.bzl", "selects")

selects.config_setting_group(
    name = "linux_gcc11_armv7_none_musleabi",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        "@bazel_build_file//platforms:gcc_11",
        "@bazel_build_file//platforms:musleabi",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_aarch64_none_musleabi",
    match_all = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        "@bazel_build_file//platforms:gcc_11",
        "@bazel_build_file//platforms:musleabi",
    ],
)

filegroup(
    name = "all",
    srcs = glob(
        ["**"],
        exclude = [],
    ),
    visibility = ["//visibility:public"],
)

configure_make(
    name = "jemalloc_build",
    args = ["-j6"],
    autogen = True,
    configure_in_place = True,
    configure_options = select({
        ":linux_gcc11_armv7_none_musleabi": ["--host=armv7l-unknown-linux-musleabihf"],
        ":linux_gcc11_aarch64_none_musleabi": ["--host=aarch64-unknown-linux-musl"],
        "//conditions:default": [],
    }),
    lib_source = ":all",
    out_static_libs = ["libjemalloc.a"],
    targets = ["install_lib_static"],
)

# Workaround for https://github.com/bazelbuild/rules_foreign_cc/issues/227
cc_library(
    name = "jemalloc",
    visibility = ["//visibility:public"],
    deps = [
        "jemalloc_build",
    ],
)
