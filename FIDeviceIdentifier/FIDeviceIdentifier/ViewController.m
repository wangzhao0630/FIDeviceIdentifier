//
//  ViewController.m
//  FIDeviceIdentifier
//
//  Created by flagadmin on 2019/6/17.
//  Copyright © 2019 flagadmin. All rights reserved.
//
#import "MBProgressHUD/MBProgressHUD+Add.h"
#import "FIDeviceIdentifier.h"
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *deviceLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //获取唯一设备标识
    NSString *deviceIdentifier = [FIDeviceIdentifier deviceIdentifier];
    NSLog(@"唯一设备标识:%@",deviceIdentifier);
    self.nameLabel.text = @"当前设备Id";
    self.nameLabel.textAlignment = NSTextAlignmentCenter;
    self.deviceLabel.text = deviceIdentifier;
    self.deviceLabel.textAlignment = NSTextAlignmentCenter;
    self.statusLabel.textAlignment = NSTextAlignmentCenter;
    //判断应用是第一次在这台手机上安装
    BOOL isFirstInstall = [FIDeviceIdentifier isFirstInstall];
    if (isFirstInstall) {
        NSLog(@"本应用是第一次在这台手机上安装");
        self.statusLabel.text = @"本应用是第一次在这台手机上安装";
    }else{
        NSLog(@"本应用不是第一次在这台手机上安装");
        self.statusLabel.text = @"本应用不是第一次在这台手机上安装";
    }
}
- (IBAction)copy:(id)sender {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = self.deviceLabel.text;
    [MBProgressHUD showMessage:@"复制成功,请去粘贴到微信" view:self.view];
}


@end
