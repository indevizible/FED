//
//  AppDelegate.h
//  FED
//
//  Created by Anupong Boonchued on 12/13/2556 BE.
//  Copyright (c) 2556 Anupong Boonchued. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) NSString *transfer1;
@property (nonatomic,readwrite)bool _checkString;
@property(nonatomic,strong) NSString *StringAddFood;
@property(nonatomic,strong) NSString *StringAddNameFood;
@end
