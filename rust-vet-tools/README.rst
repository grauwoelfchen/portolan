Rust vet tools
==============

These images are based on `grauwoelfchen/rust`_, and have following components  
for testing or vetting like lint, coverage etc.

.. _grauwoelfchen/rust: https://hub.docker.com/r/grauwoelfchen/rust/

* kcov (with sys-libs/binutils-libs)
* rustfmt
* clippy


Tags
-----

* stable
* nightly


Build
-----

.. code:: zsh

   # stable
   % docker image build -t grauwoelfchen/rust-vet-tools:stable stable

   # nightly
   % docker image build -t grauwoelfchen/rust-vet-tools:nightly nightly

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/rust-vet-tools:stable \
     rustc --version; cargo fmt --version; cargo clippy --version; \
     kcov --version

   % docker container run -it --rm grauwoelfchen/rust-vet-tools:nightly \
     rustc --version; cargo fmt --version; cargo clippy --version; \
     kcov --version
