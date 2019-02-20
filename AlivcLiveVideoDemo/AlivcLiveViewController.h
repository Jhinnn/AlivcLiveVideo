//
//  AlivcLiveViewController.m
//  DevAlivcLiveVideo
//
//  Created by Jhinn1n on 18/12/10.
//  Copyright © 2018年 Jhinn1n. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface AlivcLiveViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic, assign) BOOL isScreenHorizontal;
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil url:(NSString *)url;

@end
