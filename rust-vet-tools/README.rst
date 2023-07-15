Rust Vet Tools
==============

These images are based on `grauwoelfchen/rust`_, and have following components  
for testing or vetting like lint, coverage etc.

.. _grauwoelfchen/rust: https://hub.docker.com/r/grauwoelfchen/rust/

* profile: ``default`` (``rustmfmt``, ``clippy``)
* additional components: ``rust-src``
* kcov (with ``sys-libs/binutils-libs`` and its dependencies)
* xmllint (from ``dev-libs/libxml2``)

Build
-----

.. code:: zsh

   % export NAMESPACE=grauwoelfchen

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

   % docker container run -it --rm <NAMESPACE>/rust-vet-tools:stable \
     rustc --version; \
     cargo fmt --version; \
     cargo clippy --version; \
     kcov --version; \
     xmllint --version;

   % docker container run --rm <NAMESPACE>/rust:stable-fearless ...<snip>
   % docker container run --rm <NAMESPACE>/rust:1.39.0-stable ...<snip>

   % docker container run --rm <NAMESPACE>/rust:nightly ...<snip>
   % docker container run --rm <NAMESPACE>/rust:nightly-fearless ...<snip>
   % docker container run --rm <NAMESPACE>/rust:nightly-2019-12-23 ...<snip>
