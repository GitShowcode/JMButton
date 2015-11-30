//
//  JMButton.m
//  JMButton
//
//  Created by jiapeixin on 15/11/30.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//


#import "JMButton.h"

@implementation JMButton
+(JMButton *)getCustomBtn{
    
    JMButton *jmBTN=[JMButton buttonWithType:UIButtonTypeCustom];
    jmBTN.adjustsImageWhenHighlighted=NO;
    
    return jmBTN;
    
    
}
-(void)clickmethod{
    if (self.myblock) {
        self.myblock();
        
    }
}
-(void)upandDown:(NSString *)atitle andImage:(UIImage *)image andspace:(float)aspace andfontsize:(float)afontsize andbuttonwidth:(float)bwidth andbuttonheight:(float)bheight andblockoff:(BOOL)isoff{
    NSString *teststring=atitle;
    float fontsize=afontsize;
    float space=aspace;
    UIImage *btnIMG=image;
    float imgw=btnIMG.size.width;
    float imgh=btnIMG.size.height;
    [self setImage:image forState:UIControlStateNormal];
    self.titleLabel.font=[UIFont systemFontOfSize:afontsize];
    [self setTitle:teststring forState:UIControlStateNormal];
    self.contentVerticalAlignment=UIControlContentVerticalAlignmentTop;
    self.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    self.imageEdgeInsets=UIEdgeInsetsMake((bheight-(imgh+space+fontsize))/2.0, bwidth/2.0-imgw/2.0, 0, 0);
    float ww=[self getWW:teststring andfontsize:fontsize];
    ww=ceilf(ww);
    self.titleEdgeInsets=UIEdgeInsetsMake((bheight-(imgh+space+fontsize))/2.0+space+imgh,(bwidth-imgw*2-ww)/2.0, 0, 0);
    if (isoff==YES) {
        //关闭block
    }
    else{
        [self addTarget:self action:@selector(clickmethod) forControlEvents:UIControlEventTouchDragInside];
        
    }
    
}

-(void)leftandRight:(NSString *)atitle andImage:(UIImage *)image andspace:(float)aspace andfontsize:(float)afontsize andbuttonwidth:(float)bwidth andbuttonheight:(float)bheight andblockoff:(BOOL)isoff{
    
    float fontsize=afontsize;
    NSString *teststring=atitle;
    float ww=[self getWW:teststring andfontsize:fontsize];
    ww=ceilf(ww);
    
    
    float space=aspace;
    UIImage *btnIMG=image;
    float imgw=btnIMG.size.width;
    float imgh=btnIMG.size.height;
    [self setImage:image forState:UIControlStateNormal];
    self.titleLabel.font=[UIFont systemFontOfSize:afontsize];
    [self setTitle:teststring forState:UIControlStateNormal];
    self.contentVerticalAlignment=UIControlContentVerticalAlignmentTop;
    self.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    self.imageEdgeInsets=UIEdgeInsetsMake((bheight-imgh)/2.0, (bwidth-imgw-aspace-ww)/2.0, 0, 0);
    
    self.titleEdgeInsets=UIEdgeInsetsMake((bheight-fontsize)/2.0,(bwidth-imgw-aspace-ww-2*imgw)/2.0+imgw+space, 0, 0);
    
    if (isoff==YES) {
        //关闭block
    }
    else{
        [self addTarget:self action:@selector(clickmethod) forControlEvents:UIControlEventTouchDragInside];
        
    }
    
    
}


-(float)getWW:(NSString *)text andfontsize:(float)newsize{
    NSDictionary* attrs =@{NSFontAttributeName:[UIFont systemFontOfSize:newsize]};
    NSAttributedString *newatt=[[NSAttributedString alloc] initWithString:text attributes:attrs];
    CGRect rect=[newatt boundingRectWithSize:CGSizeMake(MAXFLOAT, newsize+1) options:NSStringDrawingTruncatesLastVisibleLine context:nil];
    CGSize titleSize=rect.size;
    return titleSize.width;
    
}
@end

