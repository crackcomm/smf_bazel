workspace(name = "smf_bazel")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

local_repository(
    name = "seastar_bazel",
    path = "seastar_bazel",
)

load("@seastar_bazel//:seastar_deps.bzl", "seastar_deps")

seastar_deps(
    #gnutls_make = True,
)

new_local_repository(
    name = "seastar",
    build_file = "@seastar_bazel//:third_party/seastar.BUILD",
    path = "seastar_bazel/seastar",
)

load("@seastar_bazel//:seastar.bzl", "seastar")

seastar()

load("@smf_bazel//:smf_deps.bzl", "smf_deps")

smf_deps()

new_local_repository(
    name = "smf",
    build_file = "@smf_bazel//:third_party/smf.BUILD",
    path = "smf",
    workspace_file_content = "",
)
