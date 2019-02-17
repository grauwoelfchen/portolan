Rust CI Tools
=============

These images are based on `grauwoelfchen/rust`_, and have following components
for CI.

.. _grauwoelfchen/rust: https://hub.docker.com/r/grauwoelfchen/rust/

* kcov (with sys-libs/binutils-libs)
* rustfmt
* clippy


Tags
-----

* latest
* nightly


Build
-----

.. code:: zsh

   # latest
   % docker image build -t grauwoelfchen/rust-ci-tools:latest latest

   # nightly
   % docker image build -t grauwoelfchen/rust-ci-tools:nightly nightly

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/rust-ci-tools:latest \
     rustc --version; cargo fmt --version; cargo clippy --version; \
     kcov --version

   % docker container run -it --rm grauwoelfchen/rust-ci-tools:nightly \
     rustc --version; cargo fmt --version; cargo clippy --version; \
     kcov --version
