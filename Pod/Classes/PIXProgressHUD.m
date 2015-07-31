//
//  PIXProgressHUD.m
//  PIXProgressHUD
//
//  Created by Dolphin Su on 7/30/15.
//  Copyright (c) 2015 dolphin su. All rights reserved.
//

#import "PIXProgressHUD.h"
#import "PIXBubbleDiffuseView.h"
@interface PIXProgressHUD()
@property (nonatomic, strong) PIXBubbleDiffuseView *bubbleDiffuseView;
@property (nonatomic, strong) UIVisualEffectView *visualEffectView;
@end

@implementation PIXProgressHUD
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:[UIApplication sharedApplication].keyWindow.bounds];
    if (self) {
        self.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;

        UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        self.visualEffectView = [[UIVisualEffectView alloc] initWithEffect:effect];
        self.visualEffectView.frame = CGRectMake(0, 0, 120, 120);
        self.visualEffectView.layer.cornerRadius = 5;
        self.visualEffectView.clipsToBounds = YES;
        self.visualEffectView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _visualEffectView.center = self.center;
        self.visualEffectView.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:self.visualEffectView];

        self.bubbleDiffuseView = [[PIXBubbleDiffuseView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        self.bubbleDiffuseView.center = CGPointMake(66, 56);
        [self.visualEffectView addSubview:self.bubbleDiffuseView];
    }

    return self;
}
+(id)sharedInstance{
    static PIXProgressHUD *progressHUD = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        progressHUD = [[self alloc] initWithFrame:CGRectZero];
    });
    return progressHUD;
}
+(void)show{
    PIXProgressHUD *hud = [PIXProgressHUD sharedInstance];
    UIWindow *mainWindow = [UIApplication sharedApplication].keyWindow;
    hud.alpha = 1;
    [mainWindow addSubview:hud];
    [hud.bubbleDiffuseView addUntitled1Animation];
}
+(void)dismiss{
    PIXProgressHUD *hud = [PIXProgressHUD sharedInstance];
    [hud.bubbleDiffuseView removeAllAnimations];
    [UIView animateWithDuration:0.5 animations:^{
        hud.alpha = 0;
    } completion:^(BOOL finished) {
        if (finished) {
            [hud removeFromSuperview];
        }
    }];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
