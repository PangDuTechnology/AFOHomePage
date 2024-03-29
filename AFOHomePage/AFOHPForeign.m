//
//  AFOHPPublicController.m
//  AFOHomePage
//
//  Created by xueguang xian on 2017/12/13.
//  Copyright © 2017年 AFO. All rights reserved.
//

#import "AFOHPForeign.h"
#import "AFOHPMainController.h"
#import "AFOHPNavigationController.h"
@interface AFOHPForeign ()
@property (nonatomic, strong) AFOHPNavigationController *navigationController;
@property (nonatomic, strong) AFOHPMainController       *mainController;
@end

@implementation AFOHPForeign
#pragma mark ------ viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
#pragma mark ------ AFOHPMainController
- (UIViewController *)returnController{
    return self.navigationController.visibleViewController;
}
- (UINavigationController *)returnNavigationController{
    return self.navigationController;
}
#pragma mark ------ didReceiveMemoryWarning
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark ------------ property
- (AFOHPMainController *)mainController{
    if (!_mainController) {
        _mainController = [[AFOHPMainController alloc]init];
    }
    return _mainController;
}
- (AFOHPNavigationController *)navigationController{
    if (!_navigationController) {
        _navigationController = [[AFOHPNavigationController alloc]initWithRootViewController:self.mainController];
    }
    return _navigationController;
}
@end
