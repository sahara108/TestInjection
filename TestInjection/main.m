//
//  main.m
//  TestInjection
//
//  Created by Nguyen Tuan on 4/2/14.
//  Copyright (c) 2014 anhtuanpk2000. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RTAppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([RTAppDelegate class]));
    }
}

// From here to end of file added by Injection Plugin //

#ifdef DEBUG
static char _inMainFilePath[] = __FILE__;
static const char *_inIPAddresses[] = {"127.0.0.1", "192.168.0.102", NULL};

#define INJECTION_ENABLED
#import "/Users/TuanNguyen/Library/Application Support/Developer/Shared/Xcode/Plug-ins/InjectionPlugin.xcplugin/Contents/Resources/BundleInjection.h"
#endif
