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
   % make build:stable
   % make build:stable-fearless

   # nightly
   % make build:nightly
   % make build:nightly-fearless

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/rust:stable rustc -V
   % docker container run -it --rm grauwoelfchen/rust:stable-fearless rustc -V

   % docker container run -it --rm grauwoelfchen/rust:nightly rustc -V
   % docker container run -it --rm grauwoelfchen/rust:nightly-fearless rustc -V
