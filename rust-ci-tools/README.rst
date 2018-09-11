rust-ci-tools
=============

These images are based on `grauwoelfchen/rust`_, and have following components
for CI.

.. _grauwoelfchen/rust: https://hub.docker.com/r/grauwoelfchen/rust/

* kcov (v34)
* rustfmt (rustfmt-preview)
* clippy


Tags
-----

* nightly


Build
-----

.. code:: zsh

    % docker image build -t grauwoelfchen/rust-ci-tools:nightly nightly

Run
---

.. code:: zsh

   % docker container run -it grauwoelfchen/rust-ci-tools:nightly \
     rustc --version; cargo fmt --version; cargo clippy --version; \
     kcov --version
