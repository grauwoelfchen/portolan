rust
====

This image has ``rust`` with default toolchains and ``rust-src`` component.

``fearless`` is an image holds updated ebuilds via ``emerge --sync`` at
the build.


Tags
-----

* latest
* latest-fearless
* nightly
* nightly-fearless


Build
-----

.. code:: zsh

   # latest
   % docker image build -t grauwoelfchen/rust:latest latest
   % docker image build -t grauwoelfchen/rust:latest-fearless latest-fearless

   # nightly
   % docker image build -t grauwoelfchen/rust:nightly nightly
   % docker image build -t grauwoelfchen/rust:nightly-fearless nightly-fearless

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/rust:latest rustc -V
   % docker container run -it --rm grauwoelfchen/rust:latest-fearless rustc -V

   % docker container run -it --rm grauwoelfchen/rust:nightly rustc -V
   % docker container run -it --rm grauwoelfchen/rust:nightly-fearless rustc -V
