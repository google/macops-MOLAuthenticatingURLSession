# MOLAuthenticatingURLSession
A wrapper around `NSURLSession` providing validation of server certificates
and easy-to-use client certificate authentication.

Requires ARC. Tested on OS X 10.11+.

## Usage

```objc

#import <MOLAuthenticatingURLSession/MOLAuthenticatingURLSession.h>

- (void)postToServer {
  MOLAuthenticatingURLSession *authURLSession = [[MOLAuthenticatingURLSession alloc] init];
  authURLSession.userAgent = @"MyUserAgent";
  authURLSession.refusesRedirects = YES;
  authURLSession.serverHostname = @"my-hostname.com";
  NSURLSession *session = authURLSession.session;
  // You can use the NSURLSession as you would normally..
}
```

If you'd like to print status/error information:

```objc
  authURLSession.loggingBlock = ^(NSString *line) {
    NSLog(@"%@", line);
  };
```

## Installation

#### Using CocoaPods

Add the following line to your Podfile:

```
pod 'MOLAuthenticatingURLSession'
```

#### Using [Bazel](http://bazel.build)

Add the following to your WORKSPACE:

```
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# Needed for MOLAuthenticatingURLSession
git_repository(
    name = "MOLCertificate",
    remote = "https://github.com/google/macops-molcertificate.git",
    tag = "v2.0",
)

git_repository(
    name = "MOLAuthenticatingURLSession",
    remote = "https://github.com/google/macops-molauthenticatingurlsession.git",
    tag = "v2.5",
)
```

And in your BUILD file, add MOLXPCConnection as a dependency:

<pre>
objc_library(
    name = "MyAwesomeApp_lib",
    srcs = ["src/MyAwesomeApp.m", "src/MyAwesomeApp.h"],
    <strong>deps = ["@MOLAuthenticatingURLSession//:MOLAuthenticatingURLSession"],</strong>
)
</pre>

## Documentation

Reference documentation is at CocoaDocs.org:

http://cocoadocs.org/docsets/MOLAuthenticatingURLSession

## Contributing

Patches to this library are very much welcome.
Please see the [CONTRIBUTING](https://github.com/google/macops-molauthenticatingurlsession/blob/master/CONTRIBUTING.md) file.
