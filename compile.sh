#!/bin/sh

pushd ~/Projects/perl-core
xcodebuild docbuild -scheme perl-core -derivedDataPath /tmp -destination "platform=macOS"
popd

pushd ~/Projects/prettier-formatting
xcodebuild docbuild -scheme prettier-formatting -derivedDataPath /tmp -destination "platform=macOS"
popd

pushd ~/Projects/sql-formatting
xcodebuild docbuild -scheme sql-formatting -derivedDataPath /tmp -destination "platform=macOS"
popd

pushd ~/Projects/watch-date-picker
xcodebuild docbuild -scheme watch-date-picker -derivedDataPath /tmp -destination "platform=watchOS Simulator,name=Apple Watch Series 5 - 44mm"
popd

file /tmp/Build/Products/Debug*/*.doccarchive
cp -r /tmp/Build/Products/Debug*/*.doccarchive/data/documentation/* data/documentation
