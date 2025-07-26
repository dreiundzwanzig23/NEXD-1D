#!/bin/sh
# Simple dependency installer for NEXD-1D on Debian/Ubuntu systems

set -e
sudo apt-get update
sudo apt-get install -y gfortran mpich liblapack-dev libblas-dev pgplot5 tcsh

