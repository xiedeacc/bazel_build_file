load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

filegroup(
    name = "all",
    srcs = glob(
        ["**"],
        exclude = [],
    ),
    visibility = ["//visibility:public"],
)

cmake(
    name = "boringssl",
    cache_entries = {
        "CMAKE_VERBOSE_MAKEFILE": "ON",
    },
    lib_source = ":all",
    out_include_dir = "include",
    out_static_libs = ["libSMHasherSupport.a"],
    visibility = ["//visibility:public"],
)
