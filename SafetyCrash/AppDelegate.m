//
//  AppDelegate.m
//  safetyCrashDemo
//
//  Created by Blavtes on 16/9/22.
//  Copyright © 2016年 Blavtes. All rights reserved.
//

#import "AppDelegate.h"

#import "SafetyCrash.h"
#import "NSArray+SafetyCrash.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //启动防止崩溃功能
    [SafetyCrash becomeEffective];
    
   /*
    *  [SafetyCrash becomeEffective]，是全局生效。若你只需要部分生效，你可以单个进行处理，比如:
    *  [NSArray safetyCrashExchangeMethod];
    *  [NSMutableArray safetyCrashExchangeMethod];
    *  .................
    *  .................
    */
    
    //监听通知:SafetyCrashNotification, 获取SafetyCrash捕获的崩溃日志的详细信息
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dealwithCrashMessage:) name:SafetyCrashNotification object:nil];
    return YES;
}

- (void)dealwithCrashMessage:(NSNotification *)note {
    //不论在哪个线程中导致的crash，这里都是在主线程
    
    //注意:所有的信息都在userInfo中
    //你可以在这里收集相应的崩溃信息进行相应的处理(比如传到自己服务器)
    NSLog(@"\n\n在AppDelegate中 方法:dealwithCrashMessage打印\n\n\n\n\n%@\n\n\n\n",note.userInfo);
}


@end
