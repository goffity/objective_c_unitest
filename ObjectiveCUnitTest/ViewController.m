//
//  ViewController.m
//  ObjectiveCUnitTest
//
//  Created by Narongwate Sangsakul on 1/5/2560 BE.
//  Copyright © 2560 goffity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *) URLEncoding:(NSString *) str {
    NSLog(@"URLEncoding:(NSString *) str ");
    
    NSString *escapedString = [str stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];
    
    return escapedString;
}

-(double) calculatePrice:(double) first second:(double)second{
    NSLog(@"calculatePrice()");
    
    return first + second;
}

@end
