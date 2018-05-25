//
//  DWBaseAppDelegate.h
//  DouWu
//
//  Created by fk on 2018/5/25.
//  Copyright © 2018年 fk. All rights reserved.
//

#import <UIKit/UIKit.h>

#define DWBaseAppDelegateInstance [DWBaseAppDelegate sharedAppDelegate]

@interface DWBaseAppDelegate : UIResponder<UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (instancetype)sharedAppDelegate;

- (UINavigationController *)navigationViewController;

- (UIViewController *)topViewController;

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

- (NSArray *)popToViewController:(UIViewController *)viewController;

- (UIViewController *)popViewController:(BOOL)animated;

- (NSArray *)popToRootViewController;

- (void)presentViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)(void))completion;
- (void)dismissViewController:(UIViewController *)vc animated:(BOOL)animated completion:(void (^)(void))completion;


@end
