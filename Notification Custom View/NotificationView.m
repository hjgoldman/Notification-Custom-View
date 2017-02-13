//
//  NotificationView.m
//  Notification Custom View
//
//  Created by Hayden Goldman on 2/10/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "NotificationView.h"

@implementation NotificationView

-(instancetype) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    

    self.notificationView = [[UIView alloc]initWithFrame:CGRectMake(0, -723, 414, 723)];
    self.notificationView.backgroundColor = [UIColor redColor];
    
    [self addSubview:self.notificationView];

    return self;
  
}





/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
