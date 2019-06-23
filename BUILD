load("@build_bazel_rules_apple//apple:macos.bzl", "macos_unit_test")

objc_library(
    name = "MOLAuthenticatingURLSession",
    srcs = [
        "Source/MOLAuthenticatingURLSession/MOLAuthenticatingURLSession.m",
        "Source/MOLAuthenticatingURLSession/MOLDERDecoder.h",
        "Source/MOLAuthenticatingURLSession/MOLDERDecoder.m",
    ],
    hdrs = ["Source/MOLAuthenticatingURLSession/MOLAuthenticatingURLSession.h"],
    includes = ["Source"],
    sdk_frameworks = ["Security"],
    visibility = ["//visibility:public"],
    deps = ["@MOLCertificate//:MOLCertificate"],
)

objc_library(
    name = "MOLAuthenticatingURLSessionTestsLib",
    testonly = 1,
    srcs = [
        "Source/MOLAuthenticatingURLSession/MOLDERDecoder.h",
        "Tests/MOLDERDecoderTest.m",
    ],
    data = ["Tests/dn.plist"],
    deps = [":MOLAuthenticatingURLSession"],
)

macos_unit_test(
    name = "MOLAuthenticatingURLSessionTests",
    minimum_os_version = "10.11",
    deps = [":MOLAuthenticatingURLSessionTestsLib"],
)
