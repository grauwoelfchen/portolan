Rust
====

This image has ``rust`` with default toolchains and ``rust-src`` component.

``fearless`` is an image holds updated ebuilds via ``emerge --sync`` at
the build.


Tags
-----

* stable
* stable-fearless
* nightly
* nightly-fearless


Build
-----

.. code:: zsh

   # stable
   % docker image build -t grauwoelfchen/rust:stable stable
   % docker image build -t grauwoelfchen/rust:stable-fearless stable-fearless

   # nightly
   % docker image build -t grauwoelfchen/rust:nightly nightly
   % docker image build -t grauwoelfchen/rust:nightly-fearless nightly-fearless

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/rust:stable rustc -V
   % docker container run -it --rm grauwoelfchen/rust:stable-fearless rustc -V

   % docker container run -it --rm grauwoelfchen/rust:nightly rustc -V
   % docker container run -it --rm grauwoelfchen/rust:nightly-fearless rustc -V
