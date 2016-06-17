#!/bin/bash

# position to a relative path
HERE="$(dirname "$(test -L "$0" && readlink "$0" || echo "$0")")"
pushd $HERE >> /dev/null

# remove any existing code
rm -rf Pdf417Demo

# create a sample application
cordova create Pdf417Demo mobi.pdf417.demo Pdf417Demo --copy-from=www

# enter into demo project folder
cd Pdf417Demo

# add the PDF417 plugin
cordova plugin add ../Pdf417

# add ios, android and wp8 support to the project
cordova platform add android
cordova platform add ios
cordova platform add wp8

# build app
cordova build

# how to run
echo "To run iOS demo application open Xcode project Pdf417Demo.xcodeproj"
echo "To run Android demo application type cordova run android"
echo "To run Windows Phone demo application open Visual Studio solution Pdf417Demo.sln"
