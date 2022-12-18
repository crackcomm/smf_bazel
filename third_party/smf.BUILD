licenses(["notice"])  # Apache 2.0

load("@smf_bazel//:smfc.bzl", "smfc_flatc")

exports_files(["LICENSE"])

COPTS = ["-std=c++20"]

cc_binary(
    name = "smfc",
    srcs = glob([
        "src/smfc/*.cc",
        "src/smfc/*.h",
    ]),
    copts = COPTS,
    visibility = ["//visibility:public"],
    deps = [
        "@boost//:crc",
        "@boost//:algorithm",
        "@boost//:filesystem",
        "@com_github_gflags_gflags//:gflags",
        "@com_github_google_flatbuffers//:flatbuffers",
        "@com_github_google_glog//:glog",
    ],
)

cc_library(
    name = "smf",
    srcs = glob(["src/core/*.cc"]),
    hdrs = glob(["src/include/smf/*.h"]),
    copts = COPTS,
    strip_include_prefix = "src/include",
    visibility = ["//visibility:public"],
    deps = [
        ":rpc",
        "@hdrhistogram_c",
        "@seastar",
        "@zstd",
    ],
)

smfc_flatc(
    name = "rpc",
    srcs = ["src/core/rpc.fbs"],
    out_prefix = "smf/",
    visibility = ["//visibility:public"],
)
