package(default_visibility = ["//visibility:public"])

constraint_setting(name = "gcc_version")

constraint_value(
    name = "gcc_11",
    constraint_setting = ":gcc_version",
)

constraint_setting(name = "abi_version")

constraint_value(
    name = "eabi",
    constraint_setting = ":abi_version",
)

constraint_value(
    name = "elf",
    constraint_setting = ":abi_version",
)

constraint_value(
    name = "gnueabi",
    constraint_setting = ":abi_version",
)

constraint_value(
    name = "gnueabihf",
    constraint_setting = ":abi_version",
)

constraint_value(
    name = "musleabi",
    constraint_setting = ":abi_version",
)

platform(
    name = "linux_gcc11_aarch64_none_elf",
    constraint_values = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        ":gcc_11",
        ":elf",
    ],
)

platform(
    name = "linux_gcc11_aarch64_none_gnueabi",
    constraint_values = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        ":gcc_11",
        ":gnueabi",
    ],
)

platform(
    name = "linux_gcc11_aarch64_none_musleabi",
    constraint_values = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        ":gcc_11",
        ":musleabi",
    ],
)

############################################################
platform(
    name = "linux_gcc11_armv7_none_eabi",
    constraint_values = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        ":gcc_11",
        ":eabi",
    ],
)

platform(
    name = "linux_gcc11_armv7_none_gnueabihf",
    constraint_values = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        ":gcc_11",
        ":gnueabihf",
    ],
)

platform(
    name = "linux_gcc11_armv7_none_musleabi",
    constraint_values = [
        "@platforms//cpu:armv7",
        "@platforms//os:linux",
        ":gcc_11",
        ":musleabi",
    ],
)
