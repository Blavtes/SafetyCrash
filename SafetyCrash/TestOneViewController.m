//
//  TestOneViewController.m
//  safetyCrashDemo
//
//  Created by Blavtes on 2017/3/28.
//  Copyright © 2017年 Blavtes. All rights reserved.
//

#import "TestOneViewController.h"
#import "NSTimer+Safety.h"

@interface TestOneViewController ()
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation TestOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)dealloc
{
   // [_timer invalidate];
    //_timer = nil;
    NSLog(@"dealloc");
}

- (IBAction)beginTimer:(id)sender {
    //_timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(test:) userInfo:@{@"a":@"b"} repeats:YES];
  //  [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    //[_timer fire];
  [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(test:) userInfo:@{@"a":@"b"} repeats:YES];
    //[_timer fire];
    
}

- (void)test:(NSDictionary *)dic
{
   // [_timer invalidate];
    NSLog(@"teset===== %@",dic);
}
- (IBAction)test2:(id)sender {
    _timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(test:) userInfo:@{@"a":@"b"} repeats:YES];
    [_timer fire];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
