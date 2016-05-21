//
//  ZWSGetLaunchView.h
//  Pods
//
//  Created by LOFT.LIFE.ZHENG on 16/5/21.
//
//

#import <Foundation/Foundation.h>

@interface ZWSGetLaunchView : NSObject

+ (UIView *)getFromLaunchImages;

// LaunchScreen.storyboard 需要设置storyboard id为LaunchScreen
// UIImageView只需设置居中就行，aspect fit mode
+ (UIView *)getFromLaunchScreen;

@end
