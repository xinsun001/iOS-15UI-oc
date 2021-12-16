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
    [UITabBar appearance].translucent=NO;//去掉tabbar的透明度
    
    if (@available(iOS 15.0, *)) {
        UITabBarAppearance *tabBarAppearanc = [UITabBarAppearance new];
        
        //颜色
        tabBarAppearanc.backgroundColor = [UIColor greenColor];
        NSDictionary *dictM = @{ NSForegroundColorAttributeName:[UIColor redColor]};
        tabBarAppearanc.stackedLayoutAppearance.selected.titleTextAttributes = dictM;
//        tabBarAppearanc.stackedLayoutAppearance.normal.titleTextAttributes = .....
        
//        //图片
//        tabBarAppearanc.backgroundImage = [UIImage imageNamed:@"bgImage.png"];
//        tabBarAppearanc.backgroundImageContentMode = UIViewContentModeScaleToFill;
//
        self.tabBar.scrollEdgeAppearance = tabBarAppearanc;
        self.tabBar.standardAppearance = tabBarAppearanc;
    } else {
        // Fallback on earlier versions
        
        [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateNormal];
        [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
        
        //颜色
        [[UITabBar appearance] setBarTintColor:[UIColor greenColor]];

        //图片
    //    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"bgImage.png"]];
    }
    
  
    
    
    

}


@end
