# bspatch-ios

[![CI Status](https://img.shields.io/travis/krmao/bspatch-ios.svg?style=flat)](https://travis-ci.org/krmao/bspatch-ios)
[![Version](https://img.shields.io/cocoapods/v/bspatch-ios.svg?style=flat)](https://cocoapods.org/pods/bspatch-ios)
[![License](https://img.shields.io/cocoapods/l/bspatch-ios.svg?style=flat)](https://cocoapods.org/pods/bspatch-ios)
[![Platform](https://img.shields.io/cocoapods/p/bspatch-ios.svg?style=flat)](https://cocoapods.org/pods/bspatch-ios)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

bspatch-ios is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'bspatch-ios'
```

## Quick use


```
    #import "BSPatch.h"
    
    // bsdiff
    int bsdiffResult = bsdiff([oldPath UTF8String], [newPath UTF8String], [patchPath UTF8String]);
    NSLog(@"bsdiffResult = %d", bsdiffResult);

    NSData *patchData = [NSData dataWithContentsOfFile:patchPath];
    NSLog(@"patchData = %@", patchData);

    // bspatch
    int bspatchResult = bspatch([oldPath UTF8String], [new2Path UTF8String], [patchPath UTF8String]);
    NSLog(@"bspatchResult = %d", bspatchResult);
```

## Author

krmao, kr.mao@trip.com

## License

bspatch-ios is available under the MIT license. See the LICENSE file for more info.
