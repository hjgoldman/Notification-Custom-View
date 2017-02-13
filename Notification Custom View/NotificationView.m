//
//  NotificationView.m
//  Notification Custom View
//
//  Created by Hayden Goldman on 2/10/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "NotificationView.h"

@implementation NotificationView
/*
-(instancetype) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    
    UIView *notificationView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 414, 723)];
    notificationView.backgroundColor = [UIColor greenColor];
    
    [self addSubview:notificationView];
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    [notificationView addGestureRecognizer: swipeUp];


    return self;
  
}

-(void) swipeUp: (UISwipeGestureRecognizer *) recognizer{
    
    UIView *notificationView = recognizer.view;
    
    [UIView animateWithDuration:2.0 animations:^{
        notificationView.frame = CGRectMake(0, -723, 414, 723);
    }];
    
}
*/



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
