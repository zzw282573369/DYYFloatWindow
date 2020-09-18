//
//  ChildButton.m
//  CubeaceSDK
//
//  Created by CubeaceMacMini on 2020/5/18.
//  Copyright © 2020 Cubeage. All rights reserved.
//

#import "ChildButton.h"

#define kImageBili 0.7

@implementation ChildButton

///////////////////////iOS 自定义控件--纯代码或者xib&storyBoard 系统会调用的方法///////////////////////
////通过xib/storyboard创建自定义控件会调用此方法，是从xib、storyboard里正在解析且视图全部加载完成之前的时候调用，NSCoder是Xib解析器
//- (instancetype)initWithCoder:(NSCoder *)aDecoder {
//
//    NSLog(@"%s", __func__);
//
//    self = [super initWithCoder:aDecoder];
//    if (self) {
//
//    }
//    return self;
//}
//
////也是通过xib/storyboard创建自定义控件时调用，不同的是该方法是当所有控件全部加载完成后才调用
//- (void)awakeFromNib {
//
//    NSLog(@"%s", __func__);
//}
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//
//    NSLog(@"%s", __func__);
//
//}
//////////////////////////////////////////////////////////////////////////////////////////////


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    NSLog(@"%s", __func__);
    
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        //设置按钮文字颜色
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //            //表示的是btn内部包含的控件水平居中摆放
        //            btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        //设置文字显示居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //让图片按照原来的宽高比显示
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        //设置文字显示大小
        self.titleLabel.font = [UIFont systemFontOfSize:14];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置按钮文字颜色
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //            //表示的是btn内部包含的控件水平居中摆放
        //            btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        //设置文字显示居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //让图片按照原来的宽高比显示
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        //设置文字显示大小
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        
//        NSString * path = [[SettingTool bundlePaht] pathForResource:@"LabelBGcolor" ofType:@"png"];
//        UIImage * image = [UIImage imageWithContentsOfFile:path];
//        UIColor *color = [UIColor colorWithPatternImage:image];
//        [self.titleLabel setBackgroundColor:color];
        
        self.titleLabel.layer.shadowColor = [UIColor blackColor].CGColor; //阴影的颜色
        self.titleLabel.layer.shadowOpacity = 1.0f; //阴影的不透明度
        self.titleLabel.layer.shadowOffset = CGSizeMake(1.0f, 1.0f); //阴影的偏移量，这个很重要
        self.titleLabel.layer.shadowRadius = 0.5f; //阴影的扩散半径
        //图片在上层
//        [self bringSubviewToFront:self.imageView];

    }
    return self;
}

- (id)initWithFrame:(CGRect)frame setTitleBG:(BOOL)isSet
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置按钮文字颜色
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //            //表示的是btn内部包含的控件水平居中摆放
        //            btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        //设置文字显示居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //让图片按照原来的宽高比显示
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        //设置文字显示大小
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        
        if (isSet)
        {
            self.titleLabel.layer.backgroundColor = [[UIColor blackColor] CGColor];
            self.titleLabel.layer.borderWidth = 1.0;
            self.titleLabel.layer.borderColor = [[UIColor whiteColor] CGColor];
            self.titleLabel.layer.cornerRadius = 5.0;
        }
        else
        {
            self.titleLabel.font = [UIFont boldSystemFontOfSize:13];
//            //设置文本的阴影色彩和透明度。
//            self.titleLabel.shadowColor = [UIColor colorWithRed:192/255.0 green:14/255.0 blue:235/255.0 alpha:1];
//            //设置阴影的倾斜角度。
//            self.titleLabel.shadowOffset = CGSizeMake(1.0f, 1.0f);
            
            self.titleLabel.layer.shadowColor = [UIColor blackColor].CGColor; //阴影的颜色
            self.titleLabel.layer.shadowOpacity = 1.0f; //阴影的不透明度
            self.titleLabel.layer.shadowOffset = CGSizeMake(1.0f, 1.0f); //阴影的偏移量，这个很重要
            self.titleLabel.layer.shadowRadius = 0.5f; //阴影的扩散半径
        }
        
        //图片在上层
//        [self bringSubviewToFront:self.imageView];

    }
    return self;
}

#pragma mark - 重写UIButton的方法

//控制UIImageView的位置和尺寸
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat iamgeX = 0;
    CGFloat iamgeY = 0;
    CGFloat iamgeWidth = contentRect.size.width;
    CGFloat iamgeHeight = contentRect.size.height * kImageBili;
    
    return CGRectMake(iamgeX, iamgeY, iamgeWidth, iamgeHeight);
}

//控制UILabel的位置和尺寸
//contentRect其实就是按钮的frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleY = contentRect.size.height * kImageBili;
    CGFloat titleWidth = contentRect.size.width;
    CGFloat titleHeight = contentRect.size.height - titleY;
        
    return CGRectMake(titleX, titleY, titleWidth, titleHeight);

}

@end
