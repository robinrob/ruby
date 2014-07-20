#!/usr/bin/env sh

for file in `find . -name \*`
do
	mv $file ./
done