load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")
load(":file_collector.bzl", "file_collector")
load(":aspect_attr_rule.bzl", "aspect_attr_rule")

cc_library(
    name = "lib",
    srcs = [
        "lib.cc",
        "lib.h",
    ],
)

cc_binary(
    name = "app",
    srcs = [
        "app.cc",
    ],
    deps = ["lib"],
)

file_collector(
    name = "h_file_count",
    extension = "h",
    deps = ["app"],
)

aspect_attr_rule(
    name = "example_rule",
    files = ["lib.cc"],
    extension = "cc",
)

file_collector(
    name = "file_count",
    deps = [
        "app",
        "lib",
    ],
)