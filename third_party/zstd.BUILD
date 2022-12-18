licenses(["notice"])  # Apache 2.0

exports_files(["LICENSE"])

cc_library(
    name = "zstd",
    srcs = glob([
        "lib/common/*.c",
        "lib/compress/*.c",
        "lib/decompress/*.c",
    ]),
    hdrs = glob([
        "lib/common/*.h",
        "lib/compress/*.h",
        "lib/decompress/*.h",
    ]) + ["lib/zstd.h"],
    includes = [
        "lib",
        "lib/common",
    ],
    visibility = ["//visibility:public"],
)
