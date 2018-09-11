rust
====

This image has ``rust`` with default toolchains and ``rust-src`` component.


Tags
-----

* latest
* nightly


Build
-----

.. code:: zsh

    % docker build -t grauwoelfchen/rust:latest latest
    % docker build -t grauwoelfchen/rust:nightly nightly

Run
---

.. code:: zsh

   % docker run -it grauwoelfchen/rust:latest rustc --version
   % docker run -it grauwoelfchen/rust:nightly rustc --version
