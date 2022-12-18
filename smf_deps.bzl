load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def smf_deps():
    if not native.existing_rule("hdrhistogram_c"):
        http_archive(
            name = "hdrhistogram_c",
            build_file = "@smf_bazel//:third_party/hdrhistogram_c.BUILD",
            sha256 = "ab4b8c5718779c7e3a16cb0bbe1d61842d64ad992ec6b42ddc73c32de383cb6a",
            strip_prefix = "HdrHistogram_c-733b470eced028fac82a3cbfd064f2dcf545c6bc",
            urls = [
                "https://github.com/HdrHistogram/HdrHistogram_c/archive/733b470.tar.gz",
            ],
        )

    if not native.existing_rule("com_github_google_flatbuffers"):
        http_archive(
            name = "com_github_google_flatbuffers",
            sha256 = "4aa372a30703e1801514c95281966bbd7c8fb4029ab73af0d911d43ef1d3ab11",
            strip_prefix = "flatbuffers-6df40a2471737b27271bdd9b900ab5f3aec746c7",
            urls = [
                "https://github.com/google/flatbuffers/archive/6df40a2471737b27271bdd9b900ab5f3aec746c7.tar.gz",
            ],
        )

    if not native.existing_rule("com_github_gflags_gflags"):
        http_archive(
            name = "com_github_gflags_gflags",
            strip_prefix = "gflags-2.2.2",
            sha256 = "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf",
            urls = [
                "https://mirror.bazel.build/github.com/gflags/gflags/archive/v2.2.2.tar.gz",
                "https://github.com/gflags/gflags/archive/v2.2.2.tar.gz",
            ],
        )

    if not native.existing_rule("com_github_google_glog"):
        http_archive(
            name = "com_github_google_glog",
            sha256 = "384a76736d99778ceb9ab0b65f5543b85067acb1c1c0faa3c9424997a6da30e0",
            strip_prefix = "glog-5d46e1bcfc92bf06a9ca3b3f1c5bb1dc024d9ecd",
            urls = [
                "https://github.com/google/glog/archive/5d46e1bcfc92bf06a9ca3b3f1c5bb1dc024d9ecd.tar.gz",
            ],
        )

    if not native.existing_rule("zstd"):
        http_archive(
            name = "zstd",
            build_file = "@smf_bazel//:third_party/zstd.BUILD",
            sha256 = "b3f1592e95aedebed38b70da0d67d7e2e61dc73f7d1c85eb7a1d4b0d54b739d1",
            strip_prefix = "zstd-470344d33e1d52a2ada75d278466da8d4ee2faf6",
            urls = [
                "https://github.com/facebook/zstd/archive/470344d33e1d52a2ada75d278466da8d4ee2faf6.tar.gz",
            ],
        )
