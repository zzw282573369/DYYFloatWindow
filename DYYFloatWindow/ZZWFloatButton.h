//
//  ZZWFloatButton.h
//  Demo
//
//  Created by CubeaceMacMini on 2020/9/16.
//  Copyright © 2020 dyy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZZWFloatButton : UIButton

@property (nonatomic,copy) void(^clickBolcks)(NSInteger i);

//重要：所有图片都要是圆形的，程序里并没有自动处理成圆形

////  warning: frame的长宽必须相等
//- (instancetype)initWithFrame:(CGRect)frame mainImageName:(NSString*)name imagesAndTitle:(NSDictionary*)imagesAndTitle bgcolor:(UIColor *)bgcolor;

// 长按雷达辐射效果
- (instancetype)initWithFrame:(CGRect)frame mainImageName:(NSString*)name imagesAndTitle:(NSDictionary*)imagesAndTitle bgcolor:(UIColor *)bgcolor animationColor:animationColor addWindow:(UIWindow *)window;

// 显示（默认）
- (void)showWindow;

// 隐藏
- (void)dissmissWindow;

@end

NS_ASSUME_NONNULL_END
