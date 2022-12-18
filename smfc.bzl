# Based on https://github.com/smfrpc/smf/blob/master/cmake/smfc_generator.cmake

load("@com_github_google_flatbuffers//:build_defs.bzl", "flatbuffer_cc_library")

DEFAULT_FLATC_ARGS = [
    "--gen-name-strings",
    "--gen-object-api",
    "--force-empty",
    "--gen-compare",
    "--keep-prefix",
    "--json",
    "--reflect-names",
    "--defaults-json",
    "--gen-mutable",
    "--cpp-str-type 'seastar::sstring'",
    "--cpp-include 'seastar/core/sstring.hh'",
    "--cpp-str-flex-ctor",
]

def smfc_flatc(
        name,
        srcs,
        out_prefix = "",
        visibility = None):
    # Generate flatbuffers code
    flatbuffer_cc_library(
        name = name,
        srcs = srcs,
        out_prefix = out_prefix,
        visibility = visibility,
        flatc_args = DEFAULT_FLATC_ARGS,
    )

def smfc_cc_library(
        name,
        srcs,
        out_prefix = "",
        visibility = None):
    # Generate flatbuffers code
    fbs_name = name + "_fbs"
    smfc_flatc(fbs_name, srcs, out_prefix, visibility)

    # Generate smf code
    srcs_lib = name + "_smfc"
    output_headers = [
        (out_prefix + "%s.smf.fb.h") % (s.replace(".fbs", "").split("/")[-1])
        for s in srcs
    ]
    native.genrule(
        name = srcs_lib,
        srcs = srcs,
        outs = output_headers,
        cmd = " ".join([
            "$(location @smf//:smfc)",
            "--filename $<",
            "--output_path $(@D)",
            "--language cpp",
        ]),
        tools = ["@smf//:smfc"],
        visibility = visibility,
        output_to_bindir = False,
    )

    native.cc_library(
        name = name,
        hdrs = [
            ":" + srcs_lib,
            ":" + fbs_name,
        ],
        srcs = [
            ":" + srcs_lib,
        ],
        deps = [
            "@smf",
            ":" + fbs_name,
        ],
        visibility = visibility,
        linkstatic = 1,
        includes = [],
    )
