//
//  MainTabbarViewController.m
//  iOS15UI
//
//  Created by facilityone on 2021/12/15.
//

#import "MainTabbarViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@interface MainTabbarViewController ()

@end

@implementation MainTabbarViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //初始化两个视图控制器
    LeftViewController *oneVc = [[LeftViewController alloc]init];
    RightViewController *twoVc = [[RightViewController alloc]init];
    
    
    
    //为两个视图控制器添加导航栏控制器
    UINavigationController *navOne = [[UINavigationController alloc]initWithRootViewController:oneVc];
    UINavigationController *navTwo = [[UINavigationController alloc]initWithRootViewController:twoVc];
    
    //设置控制器文字
    navOne.title = @"主页";
    navTwo.title = @"我的";
    
    NSArray *vcArry = [NSArray arrayWithObjects:navOne,navTwo,nil];
    
    self.selectedIndex=0;

    //将数组传给UITabBarController
    self.viewControllers = vcArry;
  
    //颜色
    [[UITabBar appearance] setBarTintColor:[UIColor greenColor]];
    
    //图片
//    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"bgImage.png"]];
    
    

}


@end
