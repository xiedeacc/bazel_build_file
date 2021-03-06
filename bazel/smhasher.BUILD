load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")
load("@bazel_skylib//lib:selects.bzl", "selects")

filegroup(
    name = "all",
    srcs = glob(
        ["**"],
        exclude = [],
    ),
    visibility = ["//visibility:public"],
)

selects.config_setting_group(
    name = "linux_gcc11_aarch64_none_musleabi",
    match_all = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
    ],
)

selects.config_setting_group(
    name = "linux_gcc11_armv7_none_musleabi",
    match_all = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
    ],
)

cmake(
    name = "smhasher",
    build_data = ["@bazel_build_file//bazel:smhasher_postfix"],
    cache_entries = select({
        ":linux_gcc11_armv7_none_musleabi": {
            "CMAKE_CROSSCOMPILING": "TRUE",
            "CMAKE_SYSTEM_NAME": "Linux",
        },
        ":linux_gcc11_aarch64_none_musleabi": {
            "CMAKE_CROSSCOMPILING": "TRUE",
            "CMAKE_SYSTEM_NAME": "Linux",
        },
        "//conditions:default": {},
    }),
    copts = select({
        ":linux_gcc11_armv7_none_musleabi": ["-march=armv7-a"],
        ":linux_gcc11_aarch64_none_musleabi": ["-march=armv8-a"],
        "//conditions:default": [],
    }),
    lib_source = ":all",
    linkopts = select({
        ":linux_gcc11_armv7_none_musleabi": ["-march=armv7-a"],
        ":linux_gcc11_aarch64_none_musleabi": ["-march=armv8-a"],
        "//conditions:default": [],
    }),
    out_include_dir = "include",
    out_static_libs = ["libSMHasherSupport.a"],
    #postfix_script = "tree . ; exit 1",
    #postfix_script = "cp $BUILD_TMPDIR/libSMHasherSupport.a $INSTALLDIR/lib && cd $EXT_BUILD_ROOT/external/smhasher && for file in $(ls {,**/}*.h); do cp --parents -rf $file $INSTALLDIR/include; done && cd -",
    #postfix_script = "/bin/bash $EXT_BUILD_ROOT/bazel/smhasher_postfix.sh",
    #targets = ["SMHasherSupport"],
    visibility = ["//visibility:public"],
)
