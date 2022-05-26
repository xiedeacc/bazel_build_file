workspace(name = "bazel_build_repo")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@//bazel:repositories.bzl", "deps")
load("@//toolchains:toolchains.bzl", "register_all_toolchains")
load("@//platforms:platforms.bzl", "register_all_execution_platforms")

git_repository(
    name = "bazel_skylib",
    remote = "https://github.com/bazelbuild/bazel-skylib.git",
    tag = "1.2.1",
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

deps()

register_all_toolchains()

register_all_execution_platforms()

http_archive(
    name = "com_github_nelhage_rules_boost",
    sha256 = "1557e4e1f2d009f14919dbf49b167f6616136d0cef1ca1cfada6ce0d4e3d6146",
    strip_prefix = "rules_boost-ef58870fe00ecb8047cd34324b8c21221387d5fc",
    urls = ["https://github.com/nelhage/rules_boost/archive/ef58870fe00ecb8047cd34324b8c21221387d5fc.tar.gz"],
)

load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")

boost_deps()
