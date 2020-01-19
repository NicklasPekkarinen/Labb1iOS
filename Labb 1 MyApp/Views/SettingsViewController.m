//
//  SettingsViewController.m
//  Labb 1 MyApp
//
//  Created by Nicklas Pekkarinen on 2020-01-15.
//  Copyright © 2020 Nicklas Pekkarinen. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *darkModeSwitch;
@property (weak, nonatomic) IBOutlet UILabel *darkModeLabel;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self renderTheme];
}

- (IBAction)darkMode:(id)sender {
    if ([sender isOn]) {
        [Theme setCurrentTheme: @"DarkTheme"];
        self.view.backgroundColor = [UIColor colorNamed:@"DarkThemeBackground"];
        self.darkModeLabel.textColor = [UIColor colorNamed: @"DarkThemeText"];
        [self.navigationController.navigationBar setBarTintColor:[UIColor colorNamed:@"DarkThemeBackground"]];
        [self.navigationController.navigationBar setTintColor:[UIColor colorNamed:@"DarkThemeTint"]];
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorNamed:@"DarkThemeTint"]}];
    } else {
        [Theme setCurrentTheme: @"LightTheme"];
        self.view.backgroundColor = [UIColor colorNamed: @"Background"];
        self.darkModeLabel.textColor = [UIColor colorNamed: @"Text"];
        [self.navigationController.navigationBar setBarTintColor:[UIColor colorNamed:@"Background"]];
        [self.navigationController.navigationBar setTintColor:[UIColor colorNamed:@"Tint"]];
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorNamed:@"Text"]}];
    }
}

- (void) renderTheme {
    if ([Theme.getCurrentTheme isEqualToString:@"DarkTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed:@"DarkThemeBackground"];
        self.darkModeLabel.textColor = [UIColor colorNamed: @"DarkThemeText"];
        [self.darkModeSwitch setOn: YES];
    }
    else if ([Theme.getCurrentTheme isEqualToString:@"LightTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed: @"Background"];
        self.darkModeLabel.textColor = [UIColor colorNamed: @"Text"];
    }
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
