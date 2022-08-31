//
//  BSViewController.m
//  bspatch-ios
//
//  Created by krmao on 08/31/2022.
//  Copyright (c) 2022 krmao. All rights reserved.
//

#import "BSViewController.h"
#import "BSPatch.h"

@interface BSViewController ()
@property (nonatomic, copy) NSString *dirPath;
@end

@implementation BSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createDir];
        NSString *oldString = @"i am";
        NSString *newString = @"i am a progrommer";
        [oldString writeToFile:[NSString stringWithFormat:@"%@/old.data", self.dirPath] atomically:YES encoding:NSUTF8StringEncoding error:nil];
        [newString writeToFile:[NSString stringWithFormat:@"%@/new.data", self.dirPath] atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
        NSData *oldData = [NSData dataWithContentsOfFile:[NSString stringWithFormat:@"%@/old.data", self.dirPath]];
        NSData *newData = [NSData dataWithContentsOfFile:[NSString stringWithFormat:@"%@/new.data", self.dirPath]];
    
        NSLog(@"oldData = %@", [[NSString alloc]initWithData:oldData encoding:NSUTF8StringEncoding]);
        NSLog(@"newData = %@", [[NSString alloc]initWithData:newData encoding:NSUTF8StringEncoding]);
    
        NSString *oldPath = [NSString stringWithFormat:@"%@/old.data", self.dirPath];
        NSString *newPath = [NSString stringWithFormat:@"%@/new.data", self.dirPath];
        NSString *patchPath = [NSString stringWithFormat:@"%@/patch.data", self.dirPath];
        NSString *new2Path = [NSString stringWithFormat:@"%@/new2Path.data", self.dirPath];

        int bsdiffResult = bsdiff([oldPath UTF8String], [newPath UTF8String], [patchPath UTF8String]);
        NSLog(@"bsdiffResult = %d", bsdiffResult);
    
        NSData *patchData = [NSData dataWithContentsOfFile:patchPath];
        NSLog(@"patchData = %@", patchData);
    
        int bspatchResult = bspatch([oldPath UTF8String], [new2Path UTF8String], [patchPath UTF8String]);
        NSLog(@"bspatchResult = %d", bspatchResult);
    
        NSData *new2Data = [NSData dataWithContentsOfFile:new2Path];
        NSLog(@"new2Data = %@", [[NSString alloc]initWithData:new2Data encoding:NSUTF8StringEncoding]);
}

- (void)createDir {
    BOOL isDir = YES;
    NSError *err = nil;
    NSFileManager *manager = [NSFileManager defaultManager];
    if(![manager fileExistsAtPath:self.dirPath isDirectory:&isDir]){
        [manager createDirectoryAtPath:self.dirPath withIntermediateDirectories:NO attributes:nil error:&err];
    }
}

- (NSString *)dirPath {
    if (!_dirPath) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentPath = paths[0];
        _dirPath = [documentPath stringByAppendingPathComponent:@"bspatch"];
    }
    return _dirPath;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
