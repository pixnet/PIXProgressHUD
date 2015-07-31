//
//  PIXBubbleDiffuseView.m
//
//  Code generated using QuartzCode 1.33.3 on 7/3/15.
//  www.quartzcodeapp.com
//

#import "PIXBubbleDiffuseView.h"
#import "QCMethod.h"

@interface PIXBubbleDiffuseView ()

@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, strong) NSMutableDictionary * layers;


@end

@implementation PIXBubbleDiffuseView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupProperties];
        [self setupLayers];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupProperties];
        [self setupLayers];
    }
    return self;
}



- (void)setupProperties{
    self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
    self.layers = [NSMutableDictionary dictionary];

}

- (void)setupLayers{
    self.backgroundColor = [UIColor colorWithRed:1 green: 1 blue:1 alpha:0];

    CAShapeLayer * pixnetballoonFill = [CAShapeLayer layer];
    pixnetballoonFill.frame = CGRectMake(62.5, 75.11, 61, 64.6);
    pixnetballoonFill.path = [self pixnetballoonFillPath].CGPath;
    [self.layer addSublayer:pixnetballoonFill];
    self.layers[@"pixnetballoonFill"] = pixnetballoonFill;

    CAShapeLayer * pixnetballoonBorder = [CAShapeLayer layer];
    pixnetballoonBorder.frame = CGRectMake(62.5, 75.11, 61, 64.6);
    pixnetballoonBorder.path = [self pixnetballoonBorderPath].CGPath;
    [self.layer addSublayer:pixnetballoonBorder];
    self.layers[@"pixnetballoonBorder"] = pixnetballoonBorder;
    [self resetLayerPropertiesForLayerIdentifiers:nil];
}

- (void)resetLayerPropertiesForLayerIdentifiers:(NSArray *)layerIds{
    [CATransaction begin];
    [CATransaction setDisableActions:YES];

    if(!layerIds || [layerIds containsObject:@"pixnetballoonFill"]){
        CAShapeLayer * pixnetballoonFill = self.layers[@"pixnetballoonFill"];
        pixnetballoonFill.opacity   = 0;
        pixnetballoonFill.fillColor = [UIColor colorWithRed:0 green: 0.216 blue:0.549 alpha:1].CGColor;
        pixnetballoonFill.lineWidth = 0;
    }
    if(!layerIds || [layerIds containsObject:@"pixnetballoonBorder"]){
        CAShapeLayer * pixnetballoonBorder = self.layers[@"pixnetballoonBorder"];
        pixnetballoonBorder.opacity     = 0;
        pixnetballoonBorder.fillColor   = nil;
        pixnetballoonBorder.strokeColor = [UIColor colorWithRed:0 green: 0.216 blue:0.549 alpha:1].CGColor;
    }

    [CATransaction commit];
}

#pragma mark - Animation Setup

- (void)addUntitled1Animation{
    NSString * fillMode = kCAFillModeForwards;

    ////An infinity animation

    ////PixnetballoonFill animation
    CAKeyframeAnimation * pixnetballoonFillTransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    pixnetballoonFillTransformAnim.values = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 0.1)],
            [NSValue valueWithCATransform3D:CATransform3DIdentity],
            [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 0.1)]];
    pixnetballoonFillTransformAnim.keyTimes = @[@0, @0.267, @1];
    pixnetballoonFillTransformAnim.duration = 1.5;
    pixnetballoonFillTransformAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];

    CAKeyframeAnimation * pixnetballoonFillOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    pixnetballoonFillOpacityAnim.values   = @[@0, @1, @0];
    pixnetballoonFillOpacityAnim.keyTimes = @[@0, @0.267, @1];
    pixnetballoonFillOpacityAnim.duration = 1.5;
    pixnetballoonFillOpacityAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];

    CAAnimationGroup * pixnetballoonFillUntitled1Anim = [QCMethod groupAnimations:@[pixnetballoonFillTransformAnim, pixnetballoonFillOpacityAnim] fillMode:fillMode];
    pixnetballoonFillUntitled1Anim.repeatCount = INFINITY;
    [self.layers[@"pixnetballoonFill"] addAnimation:pixnetballoonFillUntitled1Anim forKey:@"pixnetballoonFillUntitled1Anim"];

    ////PixnetballoonBorder animation
    CAKeyframeAnimation * pixnetballoonBorderOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    pixnetballoonBorderOpacityAnim.values = @[@1, @0];
    pixnetballoonBorderOpacityAnim.keyTimes = @[@0, @1];
    pixnetballoonBorderOpacityAnim.duration = 0.96;
    pixnetballoonBorderOpacityAnim.beginTime = 0.54;
    pixnetballoonBorderOpacityAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];

    CAKeyframeAnimation * pixnetballoonBorderTransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    pixnetballoonBorderTransformAnim.values = @[[NSValue valueWithCATransform3D:CATransform3DIdentity],
            [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.2)]];
    pixnetballoonBorderTransformAnim.keyTimes = @[@0, @1];
    pixnetballoonBorderTransformAnim.duration = 0.96;
    pixnetballoonBorderTransformAnim.beginTime = 0.54;
    pixnetballoonBorderTransformAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];

    CAKeyframeAnimation * pixnetballoonBorderLineWidthAnim = [CAKeyframeAnimation animationWithKeyPath:@"lineWidth"];
    pixnetballoonBorderLineWidthAnim.values = @[@1, @0];
    pixnetballoonBorderLineWidthAnim.keyTimes = @[@0, @1];
    pixnetballoonBorderLineWidthAnim.duration = 0.96;
    pixnetballoonBorderLineWidthAnim.beginTime = 0.54;
    pixnetballoonBorderLineWidthAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];

    CAAnimationGroup * pixnetballoonBorderUntitled1Anim = [QCMethod groupAnimations:@[pixnetballoonBorderOpacityAnim, pixnetballoonBorderTransformAnim, pixnetballoonBorderLineWidthAnim] fillMode:fillMode];
    pixnetballoonBorderUntitled1Anim.repeatCount = INFINITY;
    [self.layers[@"pixnetballoonBorder"] addAnimation:pixnetballoonBorderUntitled1Anim forKey:@"pixnetballoonBorderUntitled1Anim"];
}

#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
    if (completionBlock){
        [self.completionBlocks removeObjectForKey:anim];
        if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
            [self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
            [self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
        }
        completionBlock(flag);
    }
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
    if([identifier isEqualToString:@"Untitled1"]){
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"pixnetballoonFill"] animationForKey:@"pixnetballoonFillUntitled1Anim"] theLayer:self.layers[@"pixnetballoonFill"]];
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"pixnetballoonBorder"] animationForKey:@"pixnetballoonBorderUntitled1Anim"] theLayer:self.layers[@"pixnetballoonBorder"]];
    }
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
    if([identifier isEqualToString:@"Untitled1"]){
        [self.layers[@"pixnetballoonFill"] removeAnimationForKey:@"pixnetballoonFillUntitled1Anim"];
        [self.layers[@"pixnetballoonBorder"] removeAnimationForKey:@"pixnetballoonBorderUntitled1Anim"];
    }
}

- (void)removeAllAnimations{
    [self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
        [layer removeAllAnimations];
    }];
}

#pragma mark - Bezier Path

- (UIBezierPath*)pixnetballoonFillPath{
    UIBezierPath *pixnetballoonFillPath = [UIBezierPath bezierPath];
    [pixnetballoonFillPath moveToPoint:CGPointMake(57.299, 9.996)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(15.949, 0) controlPoint1:CGPointMake(43.79, 4.197) controlPoint2:CGPointMake(30.589, 1)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(9.874, 3.001) controlPoint1:CGPointMake(12.68, 0) controlPoint2:CGPointMake(10.736, 1.033)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(0, 44.441) controlPoint1:CGPointMake(3.766, 16.511) controlPoint2:CGPointMake(0.651, 29.622)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(2.692, 48.833) controlPoint1:CGPointMake(0, 46.799) controlPoint2:CGPointMake(0.927, 47.694)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(19.609, 54.933) controlPoint1:CGPointMake(8.345, 51.273) controlPoint2:CGPointMake(13.941, 53.306)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(14.99, 62.741) controlPoint1:CGPointMake(19.3, 56.641) controlPoint2:CGPointMake(18.284, 60.057)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(14.599, 63.798) controlPoint1:CGPointMake(14.469, 63.066) controlPoint2:CGPointMake(14.388, 63.31)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(14.827, 64.205) controlPoint1:CGPointMake(14.681, 63.961) controlPoint2:CGPointMake(14.746, 64.042)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(16.112, 64.449) controlPoint1:CGPointMake(15.014, 64.53) controlPoint2:CGPointMake(15.478, 64.766)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(26.555, 56.641) controlPoint1:CGPointMake(20.179, 62.822) controlPoint2:CGPointMake(23.603, 60.545)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(46.344, 59.325) controlPoint1:CGPointMake(32.948, 58.023) controlPoint2:CGPointMake(39.487, 58.918)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(51.256, 56.071) controlPoint1:CGPointMake(48.816, 59.406) controlPoint2:CGPointMake(49.987, 58.186)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(61, 15.128) controlPoint1:CGPointMake(57.251, 42.733) controlPoint2:CGPointMake(60.317, 29.752)];
    [pixnetballoonFillPath addCurveToPoint:CGPointMake(57.299, 9.996) controlPoint1:CGPointMake(60.919, 12.948) controlPoint2:CGPointMake(60.17, 11.663)];

    return pixnetballoonFillPath;
}

- (UIBezierPath*)pixnetballoonBorderPath{
    UIBezierPath *pixnetballoonBorderPath = [UIBezierPath bezierPath];
    [pixnetballoonBorderPath moveToPoint:CGPointMake(57.299, 9.996)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(15.949, 0) controlPoint1:CGPointMake(43.79, 4.197) controlPoint2:CGPointMake(30.589, 1)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(9.874, 3.001) controlPoint1:CGPointMake(12.68, 0) controlPoint2:CGPointMake(10.736, 1.033)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(0, 44.441) controlPoint1:CGPointMake(3.766, 16.511) controlPoint2:CGPointMake(0.651, 29.622)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(2.692, 48.833) controlPoint1:CGPointMake(0, 46.799) controlPoint2:CGPointMake(0.927, 47.694)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(19.609, 54.933) controlPoint1:CGPointMake(8.345, 51.273) controlPoint2:CGPointMake(13.941, 53.306)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(14.99, 62.741) controlPoint1:CGPointMake(19.3, 56.641) controlPoint2:CGPointMake(18.284, 60.057)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(14.599, 63.798) controlPoint1:CGPointMake(14.469, 63.066) controlPoint2:CGPointMake(14.388, 63.31)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(14.827, 64.205) controlPoint1:CGPointMake(14.681, 63.961) controlPoint2:CGPointMake(14.746, 64.042)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(16.112, 64.449) controlPoint1:CGPointMake(15.014, 64.53) controlPoint2:CGPointMake(15.478, 64.766)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(26.555, 56.641) controlPoint1:CGPointMake(20.179, 62.822) controlPoint2:CGPointMake(23.603, 60.545)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(46.344, 59.325) controlPoint1:CGPointMake(32.948, 58.023) controlPoint2:CGPointMake(39.487, 58.918)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(51.256, 56.071) controlPoint1:CGPointMake(48.816, 59.406) controlPoint2:CGPointMake(49.987, 58.186)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(61, 15.128) controlPoint1:CGPointMake(57.251, 42.733) controlPoint2:CGPointMake(60.317, 29.752)];
    [pixnetballoonBorderPath addCurveToPoint:CGPointMake(57.299, 9.996) controlPoint1:CGPointMake(60.919, 12.948) controlPoint2:CGPointMake(60.17, 11.663)];

    return pixnetballoonBorderPath;
}


@end