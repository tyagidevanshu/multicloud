#!/bin/bash
#
# This is wrapper script for executing kud deployment
# in community CI jenkins.
# Purpose is to gate all repo commits.
# In addition to KUD deployment testing itself, also all tests are run for k8s plugin as well.
#

set -x -e -o pipefail

curr_dir=$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)
cd ${curr_dir}/../hosting_providers/baremetal
./aio.sh
