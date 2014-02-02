//
//  ViewController.h
//  KeyboardToolBar
//
//  Created by Simone Ferrini on 02/02/14.
//  Copyright (c) 2014 Simone Ferrini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>


//TextField
@property (strong, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UITextField *textField2;
@property (strong, nonatomic) IBOutlet UITextField *textField3;
@property (strong, nonatomic) IBOutlet UITextField *textField4;
@property (strong, nonatomic) IBOutlet UITextField *textField5;


//ToolBar
@property (strong, nonatomic) IBOutlet UIToolbar *keyboardToolbar;


//BarButton
@property (strong, nonatomic) IBOutlet UIBarButtonItem *Up;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *Down;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *Ok;


@end
