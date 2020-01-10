Portolan
========

A collection of dockerfiles for container ships steered by gentoo
penguin, to ``portage`` packages.

These images are all built on top of `gentoo linux`_ images which are hosted on
`Docker Hub`_ using automated build.

**Portolan** is a type of book of charts for the ship ;)

.. _gentoo linux: https://www.gentoo.org/
.. _Docker Hub: https://hub.docker.com/u/gentoo/


Registries
----------

* https://hub.docker.com/r/grauwoelfchen/
* https://gitlab.com/grauwoelfchen/portolan/container_registry


Base images
-----------

* `gentoo/portage`_
* `gentoo/stage3-amd64`_ (and/or nomultilib)

.. _gentoo/portage: https://hub.docker.com/r/gentoo/portage/
.. _gentoo/stage3-amd64: https://hub.docker.com/r/gentoo/stage3-amd64/


Docker images
-------------

+----------------------------+----------------------------------------------------+-----------------------------------------------+---------------------------------+
| Name                       | Description                                        | Tags                                          | Build                           |
+============================+====================================================+===============================================+=================================+
| `gentoo-amd64`_            | busybox base gentoo's stage3 for amd64 and portage | e.g.                                          | |gentoo-amd64-build|            |
|                            |                                                    | latest                                        |                                 |
|                            |                                                    | 20200104                                      |                                 |
+----------------------------+----------------------------------------------------+-----------------------------------------------+---------------------------------+
| `gentoo-amd64-nomultilib`_ | ``nomultilib`` version (amd64-nomultilib)          | e.g.                                          | |gentoo-amd64-nomultilib-build| |
|                            |                                                    | latest                                        |                                 |
|                            |                                                    | 20200104                                      |                                 |
+----------------------------+----------------------------------------------------+-----------------------------------------------+---------------------------------+
| `rust`_                    | xxx-fearless                                       | e.g.                                          | |rust-stable-build|             |
|                            | latest portage with ``emerge --sync`` ;-)          | stable, 1.40.0-stable                         | |rust-nightly-build|            |
|                            |                                                    | stable-fearless, 1.40.0-stable-fearless       |                                 |
|                            |                                                    | nightly, nightly-2020-01-02                   |                                 |
|                            |                                                    | nightly-fearless, nightly-fearless-2020-01-02 |                                 |
+----------------------------+----------------------------------------------------+-----------------------------------------------+---------------------------------+
| `rust-vet-tools`_          | rust default profile (rustfmt, clippy) with kcov   | e.g.                                          | |rust-vet-tools-stable-build|   |
|                            |                                                    | stable, 1.40.0-stable                         | |rust-vet-tools-nightly-build|  |
|                            |                                                    | stable-fearless, 1.40.0-stable-fearless       |                                 |
|                            |                                                    | nightly, nightly-2020-01-02                   |                                 |
|                            |                                                    | nightly-fearless, nightly-fearless-2020-01-02 |                                 |
+----------------------------+----------------------------------------------------+-----------------------------------------------+---------------------------------+
| `rust-dev-tools`_          | TODO                                               | TODO                                          |                                 |
|                            |                                                    |                                               |                                 |
|                            |                                                    |                                               |                                 |
+----------------------------+----------------------------------------------------+-----------------------------------------------+---------------------------------+

.. _gentoo-amd64: https://hub.docker.com/r/grauwoelfchen/gentoo-amd64/
.. _gentoo-amd64-nomultilib: https://hub.docker.com/r/grauwoelfchen/gentoo-amd64-nomultilib/
.. _rust: https://hub.docker.com/r/grauwoelfchen/rust/
.. _rust-dev-tools: https://hub.docker.com/r/grauwoelfchen/rust-dev-tools/
.. _rust-vet-tools: https://hub.docker.com/r/grauwoelfchen/rust-vet-tools/

.. |gentoo-amd64-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/gentoo-amd64/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/gentoo-amd64

.. |gentoo-amd64-nomultilib-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/gentoo-amd64-nomultilib/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/gentoo-amd64-nomultilib

.. |rust-stable-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-stable/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-stable

.. |rust-nightly-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-nightly/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-nightly

.. |rust-vet-tools-stable-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-vet-tools-stable/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-vet-tools-stable/pipeline.svg

.. |rust-vet-tools-nightly-build| image:: https://gitlab.com/grauwoelfchen/portolan/badges/rust-vet-tools-nightly/pipeline.svg
   :target: https://gitlab.com/grauwoelfchen/portolan/commits/rust-vet-tools-nightly/pipeline.svg




TODO
****

* Create rust-dev-tools
* Remove each build stages


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
   Copyright 2018-2020 Yasuhiro Яша Asaka

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
