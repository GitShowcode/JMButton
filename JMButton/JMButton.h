//
//  JMButton.h
//  JMButton
//
//  Created by jiapeixin on 15/11/30.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ClickDone ) ();

@interface JMButton : UIButton
@property (nonatomic,copy)ClickDone myblock;

+(JMButton *)getCustomBtn;

-(void)upandDown:(NSString *)atitle andImage:(UIImage *)image andspace:(float)aspace andfontsize:(float)afontsize andbuttonwidth:(float)bwidth andbuttonheight:(float)bheight andblockoff:(BOOL)isoff;

-(void)leftandRight:(NSString *)atitle andImage:(UIImage *)image andspace:(float)aspace andfontsize:(float)afontsize andbuttonwidth:(float)bwidth andbuttonheight:(float)bheight andblockoff:(BOOL)isoff;

@end