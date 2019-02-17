Portolan
========

A collection of dockerfiles for container ships steered by gentoo
penguin, to ``portage`` packages.

These images are all built on top of `gentoo linux`_ images which are hosted on
`Docker Hub`_ using automated build.

**Portolan** is a type of book of charts for the ship ;)

.. _gentoo linux: https://www.gentoo.org/
.. _Docker Hub: https://hub.docker.com/u/gentoo/

https://hub.docker.com/r/grauwoelfchen/


Base images
-----------

* `gentoo/portage`_
* `gentoo/stage3-amd64`_ (nomultilib)

.. _gentoo/portage: https://hub.docker.com/r/gentoo/portage/
.. _gentoo/stage3-amd64: https://hub.docker.com/r/gentoo/stage3-amd64/


Docker images
-------------

* `rust`_

  * ``rust:stable`` ... stable rust and toolchains with source

  * ``rust:stable-fearless`` ... + `emerge --sync`

  * ``rust:nightly`` ... nightly rust and toolchains with source

  * ``rust:nightly-fearless`` ... + `emerge --sync`

* `rust-ci-tools`_

  * ``rust-ci-tools:nightly`` ... rustfmt-preview, clippy-preview and kcov
    (nightly only)

.. _rust: https://hub.docker.com/r/grauwoelfchen/rust/
.. _rust-ci-tools: https://hub.docker.com/r/grauwoelfchen/rust-ci-tools/

.. |rust-stable-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-stable/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-stable

.. |rust-stable-fearless-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-stable-fearless/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-stable-fearless

.. |rust-nightly-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-nightly/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-nightly

.. |rust-nightly-fearless-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-nightly-fearless/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-nightly-fearless

.. |rust-ci-tools-stable-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-ci-tools-stable/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-ci-tools-stable/pipeline.svg

.. |rust-ci-tools-nightly-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-ci-tools-nightly/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-ci-tools-nightly/pipeline.svg


+------------------+------------------+-------------------------------+
| Image            | Tag              | Build                         |
+==================+==================+===============================+
| `rust`_          | stable           | |rust-stable-build|           |
+------------------+------------------+-------------------------------+
| `rust`_          | stable-fearless  | |rust-stable-fearless-build|  |
+------------------+------------------+-------------------------------+
| `rust`_          | nightly          | |rust-nightly-build|          |
+------------------+------------------+-------------------------------+
| `rust`_          | nightly-fearless | |rust-nightly-fearless-build| |
+------------------+------------------+-------------------------------+
| `rust-ci-tools`_ | stable           | |rust-ci-tools-stable-build|  |
+------------------+------------------+-------------------------------+
| `rust-ci-tools`_ | nightly          | |rust-ci-tools-nightly-build| |
+------------------+------------------+-------------------------------+


Development
-----------

Copy ``pre-commit`` script into ``.git/hooks/``.


.. code:: zsh

   : see pre-commit script
   % ./pre-commit; echo $?
   % COMMIT_ON_MASTER=1 ./pre-commit; echo $?

License
-------


.. code:: text

   Portolan
   Copyright 2018 Yasuhiro Asaka

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
