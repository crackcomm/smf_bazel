# Copied from TensorFlow with omitted Python parts.
# Platforms are also removed.
#
# See source for more information:
# https://github.com/tensorflow/tensorflow/blob/master/third_party/flatbuffers/flatbuffers.BUILD

licenses(["notice"])  # Apache 2.0

exports_files(["LICENSE.txt"])

# Public flatc library to compile flatbuffer files at runtime.
cc_library(
    name = "flatbuffers",
    hdrs = ["//:public_headers"],
    linkstatic = 1,
    strip_include_prefix = "/include",
    visibility = ["//visibility:public"],
    deps = ["//src:flatbuffers"],
)

# Public C++ headers for the Flatbuffers library.
filegroup(
    name = "public_headers",
    srcs = glob(["include/flatbuffers/*.h"]),
    visibility = ["//:__subpackages__"],
)

# Public flatc compiler library.
cc_library(
    name = "flatc_library",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "//src:flatc_library",
    ],
)

# Public flatc compiler.
cc_binary(
    name = "flatc",
    visibility = ["//visibility:public"],
    deps = [
        "//src:flatc",
    ],
)

filegroup(
    name = "flatc_headers",
    srcs = [
        "include/flatbuffers/flatc.h",
    ],
    visibility = ["//:__subpackages__"],
)

# Library used by flatbuffer_cc_library rules.
cc_library(
    name = "runtime_cc",
    hdrs = [
        "include/flatbuffers/allocator.h",
        "include/flatbuffers/array.h",
        "include/flatbuffers/base.h",
        "include/flatbuffers/buffer.h",
        "include/flatbuffers/buffer_ref.h",
        "include/flatbuffers/default_allocator.h",
        "include/flatbuffers/detached_buffer.h",
        "include/flatbuffers/flatbuffer_builder.h",
        "include/flatbuffers/flatbuffers.h",
        "include/flatbuffers/flexbuffers.h",
        "include/flatbuffers/stl_emulation.h",
        "include/flatbuffers/string.h",
        "include/flatbuffers/struct.h",
        "include/flatbuffers/table.h",
        "include/flatbuffers/util.h",
        "include/flatbuffers/vector.h",
        "include/flatbuffers/vector_downward.h",
        "include/flatbuffers/verifier.h",
    ],
    linkstatic = 1,
    strip_include_prefix = "/include",
    visibility = ["//visibility:public"],
)
