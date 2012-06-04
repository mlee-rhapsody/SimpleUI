#!/bin/bash

PROV_PROFILE='/Users/user1/Library/MobileDevice/Provisioning Profiles/88E3E127-3F41-4524-9DBE-96913A744A9E.mobileprovision'
APP_PATH=/Users/user1/ObjCProjects/AGoodStart/SimpleUI/build/Debug-iphoneos

xcodebuild clean
xcrun -sdk iphoneos5.1 xcodebuild -configuration Debug
pushd build/Debug-iphoneos
xcrun -sdk iphoneos5.1 PackageApplication -v $APP_PATH/SimpleUI.app -o $APP_PATH/SimpleUI.ipa --embed $PROV_PROFILE 
