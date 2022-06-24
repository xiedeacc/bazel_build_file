def register_all_execution_platforms():
    native.register_execution_platforms(
        "@bazel_build_file//platforms:linux_gcc11_aarch64_none_elf",
        "@bazel_build_file//platforms:linux_gcc11_aarch64_none_gnueabi",
        "@bazel_build_file//platforms:linux_gcc11_aarch64_none_musleabi",
        "@bazel_build_file//platforms:linux_gcc11_armv7_none_eabi",
        "@bazel_build_file//platforms:linux_gcc11_armv7_none_gnueabihf",
        "@bazel_build_file//platforms:linux_gcc11_armv7_none_musleabi",
    )
