//
//  RTDetailViewController.m
//  TestInjection
//
//  Created by Nguyen Tuan on 4/2/14.
//  Copyright (c) 2014 anhtuanpk2000. All rights reserved.
//

#import "RTDetailViewController.h"
#import "GAI.h"

@interface RTDetailViewController ()

@property (nonatomic, strong) UITextField *textField;

@end

@implementation RTDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)loadView
{
    UIView *v = [[UIView alloc] init];
    self.view = v;
    v.backgroundColor = [UIColor whiteColor];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    self.textField = textField;
    [self.view addSubview:textField];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.textField.text = [NSString stringWithFormat:@"%d_++",self.testN];
}

-(void)viewWillLayoutSubviews
{
    self.textField.center = self.view.center;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
