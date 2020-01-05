Gentoo
======

These images are built with stage3 for amd64.

``amd64-nomultilib`` is an image using nomultilib as base.


Images
------

* amd64
* amd64-nomultilib


Types
-----

* latest (e.g. ``gentoo-amd64:latest``)
* ``YYYYMMDD`` (e.g. ``gentoo-amd64:20200104``)


Build
-----

.. code:: zsh

   $ export NAMESPACE=grauwoelfchen

   # latest
   % make build:amd64
   % make build:amd64-nomultilib

   # with date
   % make build:amd64:20191213
   % make build:amd64-nomultilib:20191213

Run
---

.. code:: zsh

   % docker container run -it --rm <NAMESPACE>/gentoo-amd64:latest bash
   % docker container run -it --rm <NAMESPACE>/gentoo-amd64:20200105 bash

   % docker container run -it --rm <NAMESPACE>/gentoo-amd64-nomultilib:latest \
     bash
   % docker container run -it --rm <NAMESPACE>/gentoo-amd64-nomultilib:20200104 \
     bash
