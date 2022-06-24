load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deps():
    http_archive(
        name = "gcc11_arm_aarch64_none_elf",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_elf.BUILD",
        sha256 = "b0a015a9e8cbb44ed2fe5ad755a7a7ae254d54f93df3bf47378485b0ba8b828b",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-aarch64-none-elf",
        urls = [
            #"file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-aarch64-none-elf.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-aarch64-none-elf.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_aarch64_none_gnueabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_gnueabi.BUILD",
        sha256 = "52dbac3eb71dbe0916f60a8c5ab9b7dc9b66b3ce513047baa09fae56234e53f3",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu",
        urls = [
            #"file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_aarch64_none_musleabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_musleabi.BUILD",
        sha256 = "425fefd8c83f1e7aa373ba0b36cd0e4a100403b2aab7e70d00a717c449fd3279",
        strip_prefix = "aarch64_generic_gcc-11.2.0_musl",
        urls = [
            #"file:///root/src/cpp/toolchains/aarch64_generic_gcc-11.2.0_musl.tar.gz",
            "https://raw.githubusercontent.com/xiedeacc/bazel_build_file/master/toolchains/toolchains/aarch64_generic_gcc-11.2.0_musl.tar.gz",
        ],
    )
    ################################################################################################

    http_archive(
        name = "gcc11_arm_armv7_none_eabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_eabi.BUILD",
        sha256 = "8c5acd5ae567c0100245b0556941c237369f210bceb196edfe5a2e7532c60326",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-arm-none-eabi",
        urls = [
            #"file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_armv7_none_gnueabihf",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_gnueabihf.BUILD",
        sha256 = "c254f7199261fe76c32ef42187502839bda7efad0a66646cf739d074eff45fad",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnueabihf",
        urls = [
            #"file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnueabihf.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnueabihf.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_armv7_none_musleabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_musleabi.BUILD",
        sha256 = "8d68b973b77c2d18cb347fcfe99f5aab94ef5faf0f685ade12686a4210674011",
        strip_prefix = "arm_generic_gcc-11.2.0_musl",
        urls = [
            #"file:///root/src/cpp/toolchains/arm_generic_gcc-11.2.0_musl.tar.gz",
            "https://raw.githubusercontent.com/xiedeacc/bazel_build_file/master/toolchains/toolchains/arm_generic_gcc-11.2.0_musl.tar.gz",
        ],
    )
