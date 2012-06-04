#!/bin/bash


UDID=5e0c30b9cd0ab087854d3a029e925687bc39748b
AUTOMATION_TEMPLATE=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Instruments/PlugIns/AutomationInstrument.bundle/Contents/Resources/Automation.tracetemplate
#MYAPP=/Users/user1/Library/Application\ Support/iPhone\ Simulator/5.1/Applications/SimpleUI/SimpleUI.app
MYAPP=SimpleUI.app

#SCRIPT=rhapBVT.js
SCRIPT=bvtScript.js
RESULT=

echo "Automation template: ${AUTOMATION_TEMPLATE}"
echo "app path: ${MYAPP}"
echo "script  : ${SCRIPT}"

instruments -w ${UDID} -t ${AUTOMATION_TEMPLATE} "${MYAPP}" -e UIASCRIPT ${SCRIPT} 

