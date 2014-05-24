#!/bin/sh

git submodule init
git submodule update
ln -s projects/rakefile/Rakefile ./