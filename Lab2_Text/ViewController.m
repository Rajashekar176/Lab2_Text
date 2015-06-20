//
//  ViewController.m
//  Lab2_Text
//
//  Created by Vamshi Reddy on 6/19/15.
//  Copyright (c) 2015 Vamshi. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)tappedOnSubmit:(id)sender {
    
    NSString *text=_textField.text;
    
    AVSpeechSynthesizer *synth = [[AVSpeechSynthesizer alloc] init];
    
    
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:text];
    
    [synth speakUtterance:utterance];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
