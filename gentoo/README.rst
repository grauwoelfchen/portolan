Gentoo
======

These images are built with stage3 for amd64.

``amd64-nomultilib`` is an image using nomultilib as base.


Types
-----

* amd64
* amd64-nomultilib


Build
-----

.. code:: zsh

   # latest
   % make build:amd64
   % make build:amd64-nomultilib

   # with date
   % make build:amd64:20191213
   % make build:amd64-nomultilib:20191213

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/gentoo-amd64:latest bash
   % docker container run -it --rm grauwoelfchen/gentoo-amd64-nomultilib:latest bash
