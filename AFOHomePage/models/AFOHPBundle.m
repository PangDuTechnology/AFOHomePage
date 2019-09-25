//
//  AFOHPBundle.m
//  AFOHomePage
//
//  Created by piccolo on 2019/9/25.
//  Copyright © 2019 AFO. All rights reserved.
//

#import "AFOHPBundle.h"
#import <AFOFoundation/NSBundle+AFOCategory.h>
@implementation AFOHPBundle
+ (NSString *)bundleName:(NSString *)bundleName
                 podName:(NSString *)podName
                resource:(NSString *)resource
                    type:(NSString *)type{
    NSBundle *home = [NSBundle bundleWithBundleName:bundleName podName:podName];
    NSString *path = [home pathForResource:resource ofType:type];
    return path;
}
@end
