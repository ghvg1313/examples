load(":file_collector.bzl", "FileCollector", "file_collector_aspect")


def aspect_attr_rule_imp(ctx):
    return FileCollector(files = ctx.attr.files)

aspect_attr_rule = rule(
    implementation = aspect_attr_rule_imp,
    attrs = {
        "files": attr.label_list(
            aspects = [file_collector_aspect],
            allow_files = False,
        ),
        "extension": attr.string()
    }
)