//
//  ViewController.m
//  JMButton
//
//  Created by jiapeixin on 15/11/30.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//

#import "ViewController.h"
#import "JMButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //test
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    
    {
        JMButton *btn=[JMButton getCustomBtn];
        btn.frame=CGRectMake(0, 0, 200, 80);
        btn.center=CGPointMake(self.view.center.x, self.view.center.y-60);
        btn.backgroundColor=[UIColor redColor];
        
        [btn leftandRight:@"我是测试文字" andImage:[UIImage imageNamed:@"80x80"] andspace:6 andfontsize:16 andbuttonwidth:btn.frame.size.width andbuttonheight:btn.frame.size.height andblockoff:NO];
        [self.view addSubview:btn];
      __weak  NSString *teststring=btn.currentTitle;
        
        btn.myblock=^(){
          
            UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Test" message:teststring delegate:nil cancelButtonTitle:@"取消" otherButtonTitles: nil];
            [alertView show];
            
        };

        
    }
    
    {
        JMButton *btn=[JMButton getCustomBtn];
        btn.frame=CGRectMake(0, 0, 200, 80);
        btn.center=CGPointMake(self.view.center.x, self.view.center.y+60);
        btn.backgroundColor=[UIColor redColor];
        [btn upandDown:@"我是测试文字" andImage:[UIImage imageNamed:@"80x80"] andspace:6 andfontsize:10 andbuttonwidth:btn.frame.size.width andbuttonheight:btn.frame.size.height andblockoff:NO];
        [self.view addSubview:btn];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
