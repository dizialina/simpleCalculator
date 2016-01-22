//
//  ViewController.m
//  ButtonsHomework
//
//  Created by Admin on 28.12.15.
//  Copyright © 2015 Alina Egorova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    NSMutableString* currentNumber;
    NSString* operator;
    NSString* firstNumber;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.jpg"]];
    
    [self.view addSubview:backgroundView];
    
    NSArray* allButtonsArray = [[NSArray alloc] initWithObjects:self.zeroButton, self.oneButton, self.twoButton, self.threeButton, self.fourButton, self.fiveButton, self.sixButton, self.sevenButton, self.eightButton, self.nineButton, self.multipleButton, self.divineButton, self.plusButton, self.minusButton, self.resultButton, self.resetButton, self.dotButton, self.reverseButton, nil];
    
    [self setButtonsAttrinutes:allButtonsArray];
    
    currentNumber = [[NSMutableString alloc] init];
    
    [currentNumber setString:@"0"];
    
    firstNumber = nil;
    
        
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (IBAction) numberButtonAction:(UIButton*) sender {
    
    if (currentNumber.length < 12) {
    
        if ([sender.currentTitle isEqualToString:@"0"]) {
        
            if (![currentNumber isEqualToString:@"0"]) {
            
                [currentNumber appendString:sender.currentTitle];
            
                self.monitorLabel.text = currentNumber;
            
            }
        
        } else {
        
            if ([currentNumber isEqualToString:@"0"]) {
            
                [currentNumber setString:@""];
    
                [currentNumber appendString:sender.currentTitle];
    
                self.monitorLabel.text = currentNumber; }
        
            else {
            
                [currentNumber appendString:sender.currentTitle];
            
                self.monitorLabel.text = currentNumber;
            }
        
        }
    }
    
}

- (IBAction) dotAction:(UIButton *) sender {
    
    [currentNumber appendString:sender.currentTitle];
    
    self.monitorLabel.text = currentNumber;
    
}

- (IBAction)resetButtonAction:(UIButton *)sender {
    
    self.monitorLabel.text = @"0";
    
    [currentNumber setString:@"0"];
    
}

- (void) setButtonsAttrinutes:(NSArray*) arrayButtons {
    
    for (UIButton* button in arrayButtons) {
        
        button.layer.borderColor = [[UIColor whiteColor] CGColor];
        button.layer.borderWidth = 0.8f;
        button.layer.cornerRadius = 38.f;
        
    }
                                 
    
}

- (IBAction) doButtonAction:(UIButton *) sender {
    
    if (firstNumber != nil) {
        
        [self resultAction:sender];
        
    }
    
    operator = sender.currentTitle;
    
    firstNumber = [currentNumber copy];
    
    [currentNumber setString:@""];
    
    
    
}

- (IBAction) resultAction:(UIButton *) sender {
    
    if ([operator isEqualToString:@"+"]) {
        
        [self didTerminateOperator:([firstNumber floatValue] + [currentNumber floatValue])];
        
    }
    
    if ([operator isEqualToString:@"-"]) {
        
        [self didTerminateOperator:([firstNumber floatValue] - [currentNumber floatValue])];
        
    }
    
    if ([operator isEqualToString:@"x"]) {
        
        [self didTerminateOperator:([firstNumber floatValue] * [currentNumber floatValue])];
        
    }
    
    if ([operator isEqualToString:@"÷"]) {
        
        [self didTerminateOperator:([firstNumber floatValue] / [currentNumber floatValue])];
        
    }
    
    firstNumber = nil;
    
}

- (void) didTerminateOperator:(CGFloat) result {
    
    [currentNumber setString:[NSString stringWithFormat:@"%g", result]];
    
    self.monitorLabel.text = currentNumber;
    
}

- (IBAction) reverseAction:(UIButton *) sender {
    
    if (![self.monitorLabel.text isEqualToString:@"0"]) {
    
        float temp = [currentNumber floatValue] * (-1);
    
        NSString* reverseResult = [NSString stringWithFormat:@"%g", temp];
    
        [currentNumber setString:reverseResult];
    
        self.monitorLabel.text = currentNumber;
        
    } else {
        
        self.monitorLabel.text = @"0";
        
    }
    
}


@end
