//
//  VCThird.m
//  IOSTabbar
//
//  Created by hxdl on 2020/8/25.
//  Copyright © 2020 cyi. All rights reserved.
//

#import "VCThird.h"
#import <React/RCTRootView.h>

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] initWithTitle:@"会议" image:nil tag:101];
//    UIImage* image = [UIImage imageNamed:@"message.png"];
//
//    UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
//    imageView.frame = CGRectMake(225, 10, 20, 20);
    tarBarItem.image =[[UIImage imageNamed:@"meeting"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage =[[UIImage imageNamed:@"selectedMeeting"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.imageInsets = UIEdgeInsetsMake(85, 85, 85, 85);

    self.tabBarItem = tarBarItem;
    
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
        RCTRootView *rootView =
          [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                      moduleName: @"RNHighScores"
                               initialProperties:
                                 @{
                                   @"scores" : @[
                                     @{
                                       @"name" : @"这是会议页",
                                       @"value": @""
                                      }
                                   ]
                                 }
                                   launchOptions: nil];
    //    UIViewController *vc = [[UIViewController alloc] init];
    //    vc.view = rootView;
    //    [self presentViewController:vc animated:YES completion:nil];
        self.view = rootView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
