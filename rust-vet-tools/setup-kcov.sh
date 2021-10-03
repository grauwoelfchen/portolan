#!/bin/sh

set -eu

# NOTE:
# if set KCOV_DISCARD_CACHE=true, then it will force installing kcov)

force_install="${KCOV_DISCARD_CACHE:-false}"

dest_dir=${KCOV_PATH:-/usr/local}
work_dir="$(dirname $(readlink -f "${0}"))/kcov"

kcov_cmd="${dest_dir}/bin/kcov"
kcov_url="https://github.com/SimonKagstrom/kcov/archive"
kcov_ver="v38"

if [[ -f "${kcov_cmd}" && "${force_install}" != "true" ]]; then
  echo "kcov already installed at ${kcov_cmd}"
else
  rm -fr $work_dir
  mkdir $work_dir
  cd $work_dir

  curl -sLO ${kcov_url}/${kcov_ver}.tar.gz
  mkdir $kcov_ver
  tar zxvf ${kcov_ver}.tar.gz -C $kcov_ver --strip-components=1

  cd $kcov_ver
  mkdir build
  cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$dest_dir
  make
  make install
fi
