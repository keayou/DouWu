//
//  DWMainTabViewController.m
//  DouWu
//
//  Created by fk on 2018/5/25.
//  Copyright © 2018年 fk. All rights reserved.
//

#import "DWMainTabViewController.h"

@interface DWMainTabViewController ()<UITabBarControllerDelegate>
{
    
    
    
}

@end

@implementation DWMainTabViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTabBarVC];
    
}


#pragma mark - setup
- (void)setupTabBarVC {
    DWViewController *_0 = [DWViewController new];
    DWViewController *_1 = [DWViewController new];
    DWViewController *_2 = [DWViewController new];
    self.viewControllers = @[_0, _0, _0];
    
    [self addChildViewController:_0 imageName:@"" selectedImageName:@"" title:@"首页"];
    [self addChildViewController:_1 imageName:@"" selectedImageName:@"" title:@"二"];
    [self addChildViewController:_2 imageName:@"" selectedImageName:@"" title:@"我"];
    
    self.delegate = self;
    [self setSelectedIndex:0];
}


- (void)addChildViewController:(UIViewController *)childController imageName:(NSString *)normalImg selectedImageName:(NSString *)selectImg title:(NSString *)title {
    DWNavigationController *nav = [[DWNavigationController alloc] initWithRootViewController:childController];
    childController.tabBarItem.image = [[UIImage imageNamed:normalImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.title = title;
    
    [self addChildViewController:nav];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
