//
//  AboutMeViewController.m
//  Labb 1 MyApp
//
//  Created by Nicklas Pekkarinen on 2020-01-17.
//  Copyright © 2020 Nicklas Pekkarinen. All rights reserved.
//

#import "AboutMeViewController.h"

@interface AboutMeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *gusumMap;
@property (weak, nonatomic) IBOutlet UILabel *aboutMeText;

@end

@implementation AboutMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self renderTheme];
}

- (void)renderTheme {
    if ([Theme.getCurrentTheme isEqualToString:@"DarkTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed:@"DarkThemeBackground"];
        self.gusumMap.image = [UIImage imageNamed:@"gusum-karta-inverted"];
        self.aboutMeText.textColor = [UIColor colorNamed:@"DarkThemeText"];
    }
    else if ([Theme.getCurrentTheme isEqualToString:@"LightTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed:@"Background"];
        self.gusumMap.image = [UIImage imageNamed:@"gusum-karta"];
        self.aboutMeText.textColor = [UIColor colorNamed:@"Text"];
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
