#!/bin/sh
rm bin/*
echo "building..."
crystal build mass_convert.cr -o bin/mass_convert --release || exit 1
echo "running..."
./bin/mass_convert ~/Desktop/Jaboody\ Dubs/
echo "done."
