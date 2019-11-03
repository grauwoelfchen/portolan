Gentoo
======

These images are built with stage3 for amd64.

``amd64-nomultilib`` is an image using nomultilib as base.


Tags
-----

* amd64
* amd64-nomultilib


Build
-----

.. code:: zsh

   % make build:amd64
   % make build:amd64-nomultilib

Run
---

.. code:: zsh

   % docker container run -it --rm grauwoelfchen/gentoo:amd64 bash
   % docker container run -it --rm grauwoelfchen/gentoo:amd64-nomultilib bash
