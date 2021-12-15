//
//  BasicViewController.m
//  iOS15UI
//
//  Created by facilityone on 2021/12/15.
//

#import "BasicViewController.h"

@interface BasicViewController ()

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (@available(iOS 15.0, *)) {
        UINavigationBarAppearance *navBarApperance = [UINavigationBarAppearance new];
       // 颜色
        navBarApperance.backgroundColor = [UIColor redColor];
        NSDictionary *dictM = @{ NSForegroundColorAttributeName:[UIColor blackColor]};
        navBarApperance.titleTextAttributes = dictM;

        //图片
//        navBarApperance.backgroundImage = [UIImage imageNamed:@"bgImage.png"];
//        navBarApperance.backgroundImageContentMode = UIViewContentModeScaleToFill;
        
        self.navigationController.navigationBar.standardAppearance = navBarApperance;
        self.navigationController.navigationBar.scrollEdgeAppearance = navBarApperance;
    }else{
        self.navigationController.navigationBar.barTintColor = [UIColor redColor];
        
//        [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bgImage.png"] forBarMetrics:UIBarMetricsDefault];
    }
    
    self.navigationItem.title = @"ios15 适配";
  
}



@end
