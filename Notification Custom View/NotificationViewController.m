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
/*
    NotificationView *notificationView = [[NotificationView alloc]initWithFrame:CGRectMake(0, -723, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:notificationView];
    
    notificationView.userInteractionEnabled = YES;


    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
 
    [notificationView addGestureRecognizer: swipeUp];
*/
    
    self.notificationView  = [[NotificationView alloc] initWithFrame:CGRectMake(0,-self.view.frame.size.height, self.view.frame.size.width,self.view.frame.size.height)];
    
    self.notificationView.backgroundColor = [UIColor redColor];
    [self.view addSubview: self.notificationView];
 
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer: swipeDown];;
    
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:swipeUp];
    
    
}
/*
-(void) swipeUp: (UISwipeGestureRecognizer *) recognizer{
    
    UIView *notificationView = recognizer.view;
    
    [UIView animateWithDuration:2.0 animations:^{
        notificationView.frame = CGRectMake(0, -723, 414, 723);
    }];
    
}

*/




- (void) swipeDown:(UIGestureRecognizer *)recognizer {
    [UIView animateWithDuration: 1.0 animations:^{
        self.notificationView.center=self.view.center;
    }];
}

- (void) swipeUp:(UIGestureRecognizer * )recognizer {
    [UIView animateWithDuration: 1.0 animations:^{
        self.notificationView.frame = CGRectMake(0,-self.view.frame.size.height, self.view.frame.size.width,self.view.frame.size.height);
        
    }];
    
}



@end
