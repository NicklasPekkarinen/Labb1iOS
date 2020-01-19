//
//  GameViewController.m
//  Labb 1 MyApp
//
//  Created by Nicklas Pekkarinen on 2020-01-13.
//  Copyright © 2020 Nicklas Pekkarinen. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *guessNumber;
@property (weak, nonatomic) IBOutlet UISlider *guessSlider;
@property (weak, nonatomic) IBOutlet UILabel *secretNumberLabel;
@property (weak, nonatomic) IBOutlet UIButton *guessBtn;
@property (nonatomic) int guessedNumber;
@property (nonatomic) int rand;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.guessedNumber = 50;
    self.rand = arc4random_uniform(100) + 1;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: YES];
    [self renderTheme];
}

- (IBAction)guessSliderChange:(id)sender {
    self.guessNumber.text = [NSString stringWithFormat:@"%d", (int)self.guessSlider.value];
    self.guessedNumber = (int)self.guessSlider.value;
}

- (IBAction)guess:(id)sender {
        
    if (self.guessedNumber == self.rand) {
        [self.secretNumberLabel setText:@"Correct! 🏆"];
    } else if (self.guessedNumber < self.rand) {
        [self.secretNumberLabel setText:@"Your guess was too low!"];
    } else if (self.guessedNumber > self.rand) {
        [self.secretNumberLabel setText:@"Your guess was too high!"];
    }
}

- (void) renderTheme {
    if ([Theme.getCurrentTheme isEqualToString: @"DarkTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed: @"DarkThemeBackground"];
        self.guessNumber.textColor = [UIColor colorNamed: @"DarkThemeText"];
        self.secretNumberLabel.textColor = [UIColor colorNamed: @"DarkThemeText"];
        self.guessSlider.tintColor = [UIColor colorNamed: @"DarkThemeDarkTint"];
        [self.guessBtn setTitleColor:[UIColor colorNamed: @"DarkThemeTint"] forState:UIControlStateNormal & UIControlStateSelected & UIControlStateHighlighted];
    }
    else if ([Theme.getCurrentTheme isEqualToString: @"LightTheme"]) {
        self.view.backgroundColor = [UIColor colorNamed: @"Background"];
        self.guessNumber.textColor = [UIColor colorNamed: @"Text"];
        self.secretNumberLabel.textColor = [UIColor colorNamed: @"Text"];
        self.guessSlider.tintColor = [UIColor colorNamed: @"DarkTint"];
        [self.guessBtn setTitleColor:[UIColor colorNamed: @"Tint"] forState:UIControlStateNormal & UIControlStateSelected & UIControlStateHighlighted];
    }
}

@end
