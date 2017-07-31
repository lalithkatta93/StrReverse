//
//  ViewController.m
//  StrReverse
//
//  Created by Lalith.Katta on 7/31/17.
//  Copyright © 2017 Lalith.Katta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // first retrieve the text of textField1
    NSString *myString = _aTextField.text;
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [myString length];
    while (myString && charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[myString substringWithRange:subStrRange]];
    }
    // reversedString is reversed, or empty if myString was nil
    _aLabel.text = reversedString;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
