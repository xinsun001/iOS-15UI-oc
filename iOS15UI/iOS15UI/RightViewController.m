//
//  RightViewController.m
//  iOS15UI
//
//  Created by facilityone on 2021/12/15.
//

#import "RightViewController.h"

@interface RightViewController ()

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor brownColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor greenColor];
    if (@available(iOS 15.0, *)) {
        UIButtonConfiguration *conf = [UIButtonConfiguration tintedButtonConfiguration];
        conf.cornerStyle = UIButtonConfigurationCornerStyleMedium;
        [conf setImagePadding:5];
        [conf setTitle:@"大标题"];
        [conf setSubtitle:@"副标题"];
        [conf setImage:[UIImage imageNamed:@"btnImage.png"]];
        conf.imagePlacement = NSDirectionalRectEdgeLeading;
        button.configuration = conf;
    } else {
        // Fallback on earlier versions
    }
    
    [button addTarget:self action:@selector(btnAction) forControlEvents: UIControlEventTouchUpInside];
    
    button.frame = CGRectMake(80, 200, 220, 160);
    [self.view addSubview:button];

}


-(void)btnAction{
    
    UIImage *modeImg = [UIImage imageNamed:@"bgImage.png"];
    NSLog(@"图片原尺寸%@",NSStringFromCGSize(modeImg.size));
    
    if (@available(iOS 15.0, *)) {
        modeImg = [modeImg imageByPreparingThumbnailOfSize:CGSizeMake(220, 100)];
        NSLog(@"**111111**变换后图片原尺寸%@",NSStringFromCGSize(modeImg.size));

        [modeImg prepareThumbnailOfSize:CGSizeMake(220, 100) completionHandler:^(UIImage * _Nullable) {
            NSLog(@"###222###变换后图片原尺寸%@",NSStringFromCGSize(modeImg.size));
        }];
    } else {
        // Fallback on earlier versions
    };
    
    
}

@end
