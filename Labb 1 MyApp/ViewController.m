//
//  ViewController.m
//  Labb 1 MyApp
//
//  Created by Nicklas Pekkarinen on 2020-01-10.
//  Copyright © 2020 Nicklas Pekkarinen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UIButton *aboutMeBtn;
@property (weak, nonatomic) IBOutlet UIButton *cvBtn;
@property (weak, nonatomic) IBOutlet UIButton *gameBtn;
@property (weak, nonatomic) IBOutlet UIButton *settingsBtn;
@property (weak, nonatomic) IBOutlet UIView *topView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self renderTheme];
}

- (void) renderTheme {
    if ([Theme.getCurrentTheme isEqualToString: @"DarkTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed: @"DarkThemeBackground"];
        [self.aboutMeBtn setTitleColor:[UIColor colorNamed: @"DarkThemeTint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        [self.cvBtn setTitleColor:[UIColor colorNamed: @"DarkThemeTint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        [self.gameBtn setTitleColor:[UIColor colorNamed: @"DarkThemeTint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        [self.settingsBtn setTitleColor:[UIColor colorNamed: @"DarkThemeTint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        self.topView.backgroundColor = [UIColor colorNamed: @"DarkThemeBackground"];
    }
    else if ([Theme.getCurrentTheme isEqualToString: @"LightTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed: @"Background"];
        [self.aboutMeBtn setTitleColor:[UIColor colorNamed: @"Tint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        [self.cvBtn setTitleColor:[UIColor colorNamed: @"Tint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        [self.gameBtn setTitleColor:[UIColor colorNamed: @"Tint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        [self.settingsBtn setTitleColor:[UIColor colorNamed: @"Tint"] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
        self.topView.backgroundColor = [UIColor colorNamed: @"Background"];
    }
}


@end
