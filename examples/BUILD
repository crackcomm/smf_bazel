licenses(["notice"])  # Apache 2.0

package(default_visibility = ["//visibility:public"])

load("@smf_bazel//:smfc.bzl", "smfc_cc_library")

cc_binary(
    name = "demo_server",
    srcs = ["demo_server.cc"],
    visibility = ["//visibility:public"],
    deps = [
        ":demo_service",
        "@smf",
    ],
)

smfc_cc_library(
    name = "demo_service",
    srcs = ["demo_service.fbs"],
)
