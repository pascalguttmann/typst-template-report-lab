#!/bin/bash -e

# ******************************************************************************
#
# author: P. Guttmann
#
# This script can be used to initialize a new empty report template.
#
# Usage:
#     ./init.sh <initpath>
#
# ******************************************************************************

initpath=$1

mkdir -p $1
cp --interactive --recursive --target-directory=$1 $(dirname $0)/template/*
cp --interactive --target-directory=$1 $(dirname $0)/template-report-lab.typ

