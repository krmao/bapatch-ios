# bspatch-android
```
https://github.com/krmao/bspatch/tree/master
```

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
> the details please see the exmples project

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

## Steps of push lib to CocosPods

- new repository of github
- pod lib create bspatch-ios
- add/change code
- check code lint
    - pod lib lint bspatch-ios.podspec --allow-warnings
- change the version in bspatch-ios.podspec
-   s.version          = '0.1.0'
- add/push new tag, tag name == new version
    - git tag 0.1.0 && git push --tags
- pod trunk register "kr.mao@qq.com" "krmao" --description="ios libs of krmao"
- pod trunk push bspatch-ios.podspec --allow-warnings
- check is pushed success 
    - https://cocoapods.org/pods/bspatch-ios
    - https://github.com/CocoaPods/Specs/commits/master/Specs

## Author

krmao, kr.mao@qq.com

## License

bspatch-ios is available under the MIT license. See the LICENSE file for more info.
