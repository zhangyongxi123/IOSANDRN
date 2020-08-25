#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    UIWindowScene *windowScene = (UIWindowScene *)scene;
        self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
        self.window.backgroundColor = [UIColor purpleColor];

        //创建window
    //    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //
    //    //显示window
    //    [self.window makeKeyAndVisible];

        //创建控制器一
        VCFirst* vcFirst = [[VCFirst alloc] init];
        VCSecond* vcSecond = [[VCSecond alloc] init];
        VCThird* vcThird = [[VCThird alloc] init];

    //    vcFirst.title = @"消息";
    //    vcSecond.title = @"搜索";
    //    vcThird.title = @"个人";

        vcFirst.view.backgroundColor = [UIColor blueColor];
        vcSecond.view.backgroundColor = [UIColor yellowColor];
        vcThird.view.backgroundColor = [UIColor redColor];

        //创建分栏控制器
        UITabBarController* tbController = [[UITabBarController alloc] init];
        //设置分栏控制器整体颜色（选中状态）
        tbController.tabBar.tintColor = [UIColor colorWithRed:112.0/255.0 green:100.0/255.0 blue:225.0/255.0 alpha:1.0];
        //创建一个控制器数组对象
        //将所有的要被分栏控制器管理的对象添加到数组中
        NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,
                            vcSecond,
                            vcThird, nil];
        //将分栏视图控制器管理数组赋值
        tbController.viewControllers = arrayVC;

        //将分栏控制器作为根视图控制器
    //    self.window.rootViewController = tbController;

        //设置分栏控制器的透明度
        tbController.tabBar.translucent = NO;
        
    //    UIViewController *VC = [[UIViewController alloc]init];
    //    UINavigationController *NVC = [[UINavigationController alloc]initWithRootViewController:VC];
        [self.window setRootViewController:tbController];
        [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
