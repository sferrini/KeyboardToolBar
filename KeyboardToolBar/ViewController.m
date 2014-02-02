//
//  ViewController.m
//  KeyboardToolBar
//
//  Created by Simone Ferrini on 02/02/14.
//  Copyright (c) 2014 Simone Ferrini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

//Switch
int sw = 0;

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //TextField1 FirstResponder
    [self.textField1 becomeFirstResponder];
}

- (void)viewWillAppear:(BOOL)animated
{
    // Set delegates
    self.textField1.delegate = self;
    self.textField2.delegate = self;
    self.textField3.delegate = self;
    self.textField4.delegate = self;
    self.textField5.delegate = self;
    
    
    //Set accessory view
    self.textField1.inputAccessoryView = self.keyboardToolbar;
    self.textField2.inputAccessoryView = self.keyboardToolbar;
    self.textField3.inputAccessoryView = self.keyboardToolbar;
    self.textField4.inputAccessoryView = self.keyboardToolbar;
    self.textField5.inputAccessoryView = self.keyboardToolbar;
}

#pragma mark - ToolBar
- (IBAction)Ok:(id)sender
{
    [self hideKeyboard];
}

- (IBAction)Up:(id)sender
{
    [self textFieldUp];
}

- (IBAction)Down:(id)sender
{
    [self textFieldDown];
}

#pragma mark - TextField
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.textField5) {
        [self hideKeyboard];
    }else {
        [self textFieldDown];
        
    }
    return YES;
}

- (void)howIs
{
    sw = 0;
    
    if (self.textField1.isEditing) {
        sw = 1;
    }
    if (self.textField2.isEditing) {
        sw = 2;
    }
    if (self.textField3.isEditing) {
        sw = 3;
    }
    if (self.textField4.isEditing) {
        sw = 4;
    }
    if (self.textField5.isEditing) {
        sw = 5;
    }
}

- (void)hideKeyboard
{
    [self.textField1 resignFirstResponder];
    [self.textField2 resignFirstResponder];
    [self.textField3 resignFirstResponder];
    [self.textField4 resignFirstResponder];
    [self.textField5 resignFirstResponder];
}

- (void)textFieldUp
{
    [self howIs];
    
    switch (sw) {
        case 1:
            break;
            
        case 2:
            [self.textField1 becomeFirstResponder];
            break;
            
        case 3:
            [self.textField2 becomeFirstResponder];
            break;
            
        case 4:
            [self.textField3 becomeFirstResponder];
            break;
            
        case 5:
            [self.textField4 becomeFirstResponder];
            break;
            
        default:
            break;
    }
    
    
}

- (void)textFieldDown
{
    [self howIs];
    
    switch (sw) {
        case 1:
            [self.textField2 becomeFirstResponder];
            break;
            
        case 2:
            [self.textField3 becomeFirstResponder];
            break;
            
        case 3:
            [self.textField4 becomeFirstResponder];
            break;
            
        case 4:
            [self.textField5 becomeFirstResponder];
            break;
            
        case 5:
            break;
            
        default:
            break;
    }
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self hideKeyboard];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
