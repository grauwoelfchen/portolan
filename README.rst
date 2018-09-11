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

* `rust`_ (``rust:latest``, ``rust:nightly``)
* `rust-ci-tools`_ (``rust-ci-tools:nightly``)

.. _rust: https://hub.docker.com/r/grauwoelfchen/rust/
.. _rust-ci-tools: https://hub.docker.com/r/grauwoelfchen/rust-ci-tools/

.. |rust-latest-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-latest/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-latest

.. |rust-nightly-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-nightly/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-nightly

.. |rust-ci-tools-nightly-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-ci-tools-nightly/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-ci-tools-nightly/pipeline.svg


+------------------+---------+-------------------------------+
| Image            | Tag     | Build                         |
+==================+=========+===============================+
| `rust`_          | latest  | |rust-latest-build|           |
+------------------+---------+-------------------------------+
| `rust`_          | nightly | |rust-nightly-build|          |
+------------------+---------+-------------------------------+
| `rust-ci-tools`_ | nightly | |rust-ci-tools-nightly-build| |
+------------------+---------+-------------------------------+


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
