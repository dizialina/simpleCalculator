//
//  ViewController.h
//  ButtonsHomework
//
//  Created by Admin on 28.12.15.
//  Copyright © 2015 Alina Egorova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *zeroButton;
@property (weak, nonatomic) IBOutlet UIButton *oneButton;
@property (weak, nonatomic) IBOutlet UIButton *twoButton;
@property (weak, nonatomic) IBOutlet UIButton *threeButton;
@property (weak, nonatomic) IBOutlet UIButton *fourButton;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton;
@property (weak, nonatomic) IBOutlet UIButton *sixButton;
@property (weak, nonatomic) IBOutlet UIButton *sevenButton;
@property (weak, nonatomic) IBOutlet UIButton *eightButton;
@property (weak, nonatomic) IBOutlet UIButton *nineButton;

@property (weak, nonatomic) IBOutlet UIButton *divineButton;
@property (weak, nonatomic) IBOutlet UIButton *multipleButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *resultButton;

@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *dotButton;
@property (weak, nonatomic) IBOutlet UIButton *reverseButton;

@property (weak, nonatomic) IBOutlet UILabel *monitorLabel;

- (IBAction) numberButtonAction:(UIButton*) sender;
- (IBAction) resetButtonAction:(UIButton *) sender;
- (IBAction) doButtonAction:(UIButton *) sender;
- (IBAction) resultAction:(UIButton *) sender;
- (IBAction) reverseAction:(UIButton *) sender;
- (IBAction) dotAction:(UIButton *) sender;


@end

