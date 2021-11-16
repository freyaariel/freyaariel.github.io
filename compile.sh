#!/bin/sh

pushd ~/Projects/sql-formatting
xcodebuild docbuild -scheme sql-formatting -derivedDataPath /tmp -destination "platform=macOS"
popd

pushd ~/Projects/javascript-formatting
xcodebuild docbuild -scheme javascript-formatting -derivedDataPath /tmp -destination "platform=macOS"
popd

pushd ~/Projects/watch-date-picker
xcodebuild docbuild -scheme watch-date-picker -derivedDataPath /tmp -destination "platform=watchOS Simulator,name=Apple Watch Series 5 - 44mm"
popd

file /tmp/Build/Products/Debug*/*.doccarchive
cp -r /tmp/Build/Products/Debug*/*.doccarchive/data/documentation/* data/documentation
