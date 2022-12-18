licenses(["notice"])

exports_files(["LICENSE.txt"])

cc_library(
    name = "hdrhistogram_c",
    srcs = glob(
        [
            "src/*.c",
            "src/*.h",
        ],
        exclude = [
            "src/hdr_histogram_log_no_op.c",
        ],
    ),
    hdrs = glob(["include/hdr/*.h"]),
    copts = [
        "-std=gnu99",
        "-Wno-implicit-function-declaration",
        "-Wno-error",
    ],
    includes = ["include"],
    strip_include_prefix = "include/hdr",
    visibility = ["//visibility:public"],
    deps = ["@zlib"],
)
