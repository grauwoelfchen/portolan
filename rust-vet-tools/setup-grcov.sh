#!/bin/sh

base_url=https://github.com/mozilla/grcov/releases/latest/download

curl -L $base_url/grcov-x86_64-unknown-linux-gnu.tar.bz2 | tar jxf -
mv grcov /usr/local/bin/grcov
