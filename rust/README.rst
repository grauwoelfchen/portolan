Rust
====

This image has ``rust`` with default toolchains and ``rust-src`` component.

``fearless`` is an image holds updated ebuilds via ``emerge --sync`` at
the build.


Types
-----

* stable
* stable-fearless
* ``MAJOR.MINOR.PATCH``-stable
* nightly
* nightly-fearless
* nightly-``YYYY-MM-DD``


Build
-----

.. code:: zsh

   # latest
   % make build:stable
   % make build:stable-fearless

   # with version
   % make build:stable:1.39.0

   # nightly
   % make build:nightly
   % make build:nightly-fearless

   # with date
   % make build:nightly:2019-12-23

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/rust:stable rustc -V
   % docker container run -it --rm grauwoelfchen/rust:stable-fearless rustc -V
   % docker container run -it --rm grauwoelfchen/rust:1.39.0-stable rustc -V

   % docker container run -it --rm grauwoelfchen/rust:nightly rustc -V
   % docker container run -it --rm grauwoelfchen/rust:nightly-fearless rustc -V
   % docker container run -it --rm grauwoelfchen/rust:nightly-2019-12-23 rustc -V
