#!/bin/bash

IPHONE51SDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator5.1.sdk

echo "Hello world";
echo "iPhone 5.1i SDK=$IPHONE51SDK"

xcodebuild -sdk iphonesimulator5.1 -configuration Debug
