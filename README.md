# Build Cygwin Cross-Compiler for Linux

This is a collection of scripts that build a Cygwin cross-compiler for
x86_64 Linux. Edit 000-settings.sh to your liking.

The current Cygwin version is 3.5.4. When the build is done you can extract
binary releases of the libraries you need from one of the
[Cygwin mirrors](https://cygwin.com/mirrors.html)
directly into the sysroot directory.
Applications need to be installed by the host package manager.
