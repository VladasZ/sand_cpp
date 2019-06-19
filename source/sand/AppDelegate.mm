//
//  AppDelegate.m
//  obj-ios
//
//  Created by Vladas Zakrevskis on 03/06/2019.
//  Copyright © 2019 vz. All rights reserved.
//

#ifdef IOS_BUILD

#import <UIKit/UIKit.h>

#include "Log.hpp"

@interface Controller : UIViewController @end @implementation Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    Info("rgokl");
    
}

@end

#import "AppDelegate.h"
@interface AppDelegate () @end @implementation AppDelegate
-(void)applicationDidFinishLaunching:(UIApplication *)application {
_w = [UIWindow new]; _w.rootViewController = [Controller new]; [_w makeKeyAndVisible]; }
@end

#endif
