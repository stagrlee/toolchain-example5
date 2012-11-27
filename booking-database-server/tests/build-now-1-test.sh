#!/usr/bin/env roundup
#
# This file contains the test plan for the build-now command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m booking-database-server -p build-now
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "build-now"


it_needs_a_real_test() {
    exit 0
} 
