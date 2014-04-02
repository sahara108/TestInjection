//
//  RTViewController.m
//  TestInjection
//
//  Created by Nguyen Tuan on 4/2/14.
//  Copyright (c) 2014 anhtuanpk2000. All rights reserved.
//

#import "RTViewController.h"
#import "RTDetailViewController.h"


@interface RTViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, assign) enum TestEnum testNum;
- (IBAction)reload:(id)sender;

@end

@implementation RTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.testNum = None;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reload:(id)sender {
    self.testNum ++;
    if (self.testNum > TestEnumTotal) {
        self.testNum = None;
    }
    
//    self.textField.text = [NSString stringWithFormat:@"%d_111111",self.testNum];
    RTDetailViewController *ctl = [[RTDetailViewController alloc] init];
    ctl.testN = self.testNum;
    [self.navigationController pushViewController:ctl animated:YES];
}
@end
