//
//  NotificationViewController.m
//  Notification Custom View
//
//  Created by Hayden Goldman on 2/10/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "NotificationViewController.h"

@interface NotificationViewController ()

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NotificationView *notificationView = [[NotificationView alloc]init];
    [self.view addSubview:notificationView];
    
    notificationView.userInteractionEnabled = YES;


    UISwipeGestureRecognizer *swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDown:)];
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;

    
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeUp:)];
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:swipeDownGestureRecognizer];
    [notificationView addGestureRecognizer:swipeUpGestureRecognizer];
    
    
    
}


-(void) swipeUp: (UISwipeGestureRecognizer *) recognizer{
    
    UIView *notificationView = recognizer.view;
    
    [UIView animateWithDuration:2.0 animations:^{
        notificationView.frame = CGRectMake(0, 0, 414, 723);
    }];
    
}


-(void) swipeDown: (UISwipeGestureRecognizer *) recognizer{
    
    UIView *notificationView = recognizer.view;

    [UIView animateWithDuration:2.0 animations:^{
        notificationView.frame = CGRectMake(0, 723, 414, 723);
    }];
    
}



@end
