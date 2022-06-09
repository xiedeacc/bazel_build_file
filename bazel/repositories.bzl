load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def deps():
    http_archive(
        name = "gcc8_arm_armv7_none_musleabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_musleabi.BUILD",
        sha256 = "18f3b9ffdb090957a1e93e14f55f4c6afc4b9a071a2347326b99475e658781af",
        strip_prefix = "arm_cortex-a9_gcc-8.4.0_musl",
        urls = [
            "file:///root/src/cpp/toolchains/arm_cortex-a9_gcc-8.4.0_musl.tar.gz",
            "https://media.githubusercontent.com/media/xiedeacc/bazel_build_file/master/toolchains/toolchains/arm_cortex-a9_gcc-8.4.0_musl.tar.gz",
        ],
    )
    ################################################################################################

    http_archive(
        name = "gcc10_arm_aarch64_none_elf",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_elf.BUILD",
        sha256 = "6f74b1ee370caeb716688d2e467e5b44727fdc0ed56023fe5c72c0620019ecef",
        strip_prefix = "gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu-a/10.3-2021.07/binrel/gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf.tar.xz",
        ],
    )

    http_archive(
        name = "gcc10_arm_aarch64_none_gnueabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_gnueabi.BUILD",
        sha256 = "1e33d53dea59c8de823bbdfe0798280bdcd138636c7060da9d77a97ded095a84",
        strip_prefix = "gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu-a/10.3-2021.07/binrel/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu.tar.xz",
        ],
    )
    ################################################################################################

    http_archive(
        name = "gcc10_arm_armv7_none_eabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_eabi.BUILD",
        sha256 = "45225813f74e0c3f76af2715d30d1fbebb873c1abe7098f9c694e5567cc2279c",
        strip_prefix = "gcc-arm-10.3-2021.07-x86_64-arm-none-eabi",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-10.3-2021.07-x86_64-arm-none-eabi.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu-a/10.3-2021.07/binrel/gcc-arm-10.3-2021.07-x86_64-arm-none-eabi.tar.xz",
        ],
    )

    http_archive(
        name = "gcc10_arm_armv7_none_gnueabihf",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_gnueabihf.BUILD",
        sha256 = "aa074fa8371a4f73fecbd16bd62c8b1945f23289e26414794f130d6ccdf8e39c",
        strip_prefix = "gcc-arm-10.3-2021.07-x86_64-arm-none-linux-gnueabihf",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-10.3-2021.07-x86_64-arm-none-linux-gnueabihf.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu-a/10.3-2021.07/binrel/gcc-arm-10.3-2021.07-x86_64-arm-none-linux-gnueabihf.tar.xz",
        ],
    )
    ################################################################################################

    http_archive(
        name = "gcc11_arm_aarch64_none_elf",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_elf.BUILD",
        sha256 = "b0a015a9e8cbb44ed2fe5ad755a7a7ae254d54f93df3bf47378485b0ba8b828b",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-aarch64-none-elf",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-aarch64-none-elf.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-aarch64-none-elf.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_aarch64_none_gnueabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_gnueabi.BUILD",
        sha256 = "52dbac3eb71dbe0916f60a8c5ab9b7dc9b66b3ce513047baa09fae56234e53f3",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-aarch64-none-linux-gnu.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_aarch64_none_musleabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_aarch64_none_musleabi.BUILD",
        sha256 = "425fefd8c83f1e7aa373ba0b36cd0e4a100403b2aab7e70d00a717c449fd3279",
        strip_prefix = "aarch64_generic_gcc-11.2.0_musl",
        urls = [
            "file:///root/src/cpp/toolchains/aarch64_generic_gcc-11.2.0_musl.tar.gz",
            "https://media.githubusercontent.com/media/xiedeacc/bazel_build_file/master/toolchains/toolchains/aarch64_generic_gcc-11.2.0_musl.tar.gz",
        ],
    )
    ################################################################################################

    http_archive(
        name = "gcc11_arm_armv7_none_eabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_eabi.BUILD",
        sha256 = "8c5acd5ae567c0100245b0556941c237369f210bceb196edfe5a2e7532c60326",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-arm-none-eabi",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_armv7_none_gnueabihf",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_gnueabihf.BUILD",
        sha256 = "c254f7199261fe76c32ef42187502839bda7efad0a66646cf739d074eff45fad",
        strip_prefix = "gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnueabihf",
        urls = [
            "file:///root/src/cpp/toolchains/gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnueabihf.tar.xz",
            "https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnueabihf.tar.xz",
        ],
    )

    http_archive(
        name = "gcc11_arm_armv7_none_musleabi",
        build_file = "@bazel_build_file//bazel:gcc_arm_armv7_none_musleabi.BUILD",
        sha256 = "8d68b973b77c2d18cb347fcfe99f5aab94ef5faf0f685ade12686a4210674011",
        strip_prefix = "arm_generic_gcc-11.2.0_musl",
        urls = [
            "file:///root/src/cpp/toolchains/arm_generic_gcc-11.2.0_musl.tar.gz",
            "https://media.githubusercontent.com/media/xiedeacc/bazel_build_file/master/toolchains/toolchains/arm_generic_gcc-11.2.0_musl.tar.gz",
        ],
    )
