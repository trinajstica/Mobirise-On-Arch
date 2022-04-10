#!/bin/bash
rm *.deb *.zst 2> /dev/null
makepkg -ic
