//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by wangyuqing on 2021/3/31.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//和用户交互前需要完成的初始化工作都要在此方法内实现。
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1. 创建UIWindow对象
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame: winFrame];
    self.window = theWindow;
    
    //2. 设置UIWindow实例的背景颜色，并放上屏幕
    self.window.backgroundColor = [UIColor yellowColor];
    [self.window makeKeyAndVisible];
    
    //将window的rootViewController设置为新的ViewController
    self.window.rootViewController = ViewController.new;
    
    return YES;
}






@end
