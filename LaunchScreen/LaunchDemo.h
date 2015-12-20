//
//  LaunchDemo.h
//  LaunchDemo
//
//  Created by wxiao on 15/12/19.
//  Copyright © 2015年 wxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, JRApperaStyle) {
	JRApperaStyleNone,
	JRApperaStyleOne,
};

typedef NS_ENUM(NSUInteger, JRDisApperaStyle) {
	JRDisApperaStyleNone,
	JRDisApperaStyleOne,
	JRDisApperaStyleTwo,
	JRDisApperaStyleLeft,
	JRDisApperaStyleRight,
	JRDisApperaStyleBottom,
	JRDisApperaStyleTop,
};

@interface LaunchDemo : NSObject

@property (nonatomic, assign) CGRect iconFrame;
@property (nonatomic, strong) UILabel		*desLabel;
@property (nonatomic, assign) CGRect desLabelFreme;

- (void)loadLaunchImage:(NSString *)imageName;

- (void)loadLaunchImage2:(NSString *)imageName iconName:(NSString *)icon;

/**
 *  <#Description#>
 *
 *  @param imgName   <#imgName description#>
 *  @param iconName  <#iconName description#>
 *  @param style     <#style description#>
 *  @param bgName    <#bgName description#>
 *  @param disappear <#disappear description#>
 *  @param des       <#des description#>
 */
- (void)loadLaunchImage:(NSString *)imgName
			   iconName:(NSString*)iconName
			appearStyle:(JRApperaStyle)style
				bgImage:(NSString *)bgName
			  disappear:(JRDisApperaStyle)disappear
		 descriptionStr:(NSString *)des;

@end
