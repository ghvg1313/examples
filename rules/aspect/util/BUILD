load("@rules_python//python:defs.bzl", "py_binary", "py_library")

py_binary(
    name = "UtilBin",
    main = "main.py",
    visibility = ["//visibility:public"],
    deps = [
        ":UtilLibrary",
    ],
)

py_library(
    name = "UtilLibrary",
    srcs = ["a.py"],
    imports = ["."],
)