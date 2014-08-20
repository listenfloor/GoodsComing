//
//  HomeViewController.h
//  GoodsComing
//
//  Created by zhouzhi on 14/8/18.
//  Copyright (c) 2014年 efreight. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *buttonLogin;//登录按钮
@property (strong, nonatomic) IBOutlet UIButton *buttonInfo;//详细信息按钮
@property (strong, nonatomic) IBOutlet UIImageView *imageViewLogo;//logo图片
@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIView *view3;
@property (strong, nonatomic) IBOutlet UIButton *button1;//48小时到按钮
@property (strong, nonatomic) IBOutlet UIButton *button2;//48小时下按钮
@property (strong, nonatomic) IBOutlet UIButton *button3;//进口货按钮

@end
