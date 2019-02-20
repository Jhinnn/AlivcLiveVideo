//
//  AlivcLiveViewController.m
//  DevAlivcLiveVideo
//
//  Created by Jhinn1n on 18/12/10.
//  Copyright © 2018年 Jhinn1n. All rights reserved.
//


#import "ViewController.h"
#import "AlivcLiveViewController.h"
#import <AlivcLiveVideo/AlivcLiveVideo.h>


@interface ViewController ()
@property(nonatomic, copy) NSString* pushUrl;
@property(nonatomic, copy) NSString* pullUrl;
@property(nonatomic, copy) NSString* recordUrl;


@property (weak, nonatomic) IBOutlet UITextView *urlTextView;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.title = @"请输入推流地址";
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
//    [self startButtonClick:nil];
}



- (IBAction)startButtonClick:(id)sender {
    
    self.pushUrl = self.urlTextView.text;
    
    if (![self.pushUrl containsString:@"rtmp://"]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"推流地址格式错误，无法直播" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    AlivcLiveViewController *live = [[AlivcLiveViewController alloc] initWithNibName:@"AlivcLiveViewController" bundle:nil url:self.pushUrl];
    
    [self presentViewController:live animated:YES completion:nil];
}

@end

