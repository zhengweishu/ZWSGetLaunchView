//
//  ZWSGetLaunchView.m
//  Pods
//
//  Created by LOFT.LIFE.ZHENG on 16/5/21.
//
//

#import "ZWSGetLaunchView.h"

@implementation ZWSGetLaunchView

+ (UIView *)getFromLaunchImages {

    UIView *launchView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIImageView *launchImageView = [[UIImageView alloc] initWithImage:[self getLaunchImage]];
    launchImageView.frame = launchView.bounds;
    [launchView addSubview:launchImageView];
    return launchView;
}


+ (UIView *)getFromLaunchScreen {

    UIViewController *viewController = [[UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil] instantiateViewControllerWithIdentifier:@"LaunchScreen"];
    return viewController.view;
}


+ (UIImage *)getLaunchImage {
    
    NSString *defaultImageName = @"LaunchImage";
    NSInteger osVersion = floor([[[UIDevice currentDevice] systemVersion] floatValue])*100;
    
    NSInteger screenHeight = CGRectGetHeight([UIScreen mainScreen].bounds);
    // 3.5inch
    if (screenHeight < 568) {
        if (osVersion >= 700) {
            defaultImageName = [NSString stringWithFormat:@"%@-700",defaultImageName];
        } else {
            defaultImageName = [NSString stringWithFormat:@"%@",defaultImageName];
        }
    }
    // 4.0inch
    else if(screenHeight < 667){
        if (osVersion >= 700) {
            defaultImageName = [NSString stringWithFormat:@"%@-700-568h",defaultImageName];
        } else {
            defaultImageName = [NSString stringWithFormat:@"%@-568h",defaultImageName];
        }
    }
    // 4,7inch
    else if (screenHeight < 736) {
        defaultImageName = [NSString stringWithFormat:@"%@-800-667h",defaultImageName];
    }
    // 5.5inch
    else{
        NSString *orientation = @"";
        switch ([[UIApplication sharedApplication] statusBarOrientation]) {
            case UIInterfaceOrientationUnknown:
            case UIInterfaceOrientationPortrait:
            case UIInterfaceOrientationPortraitUpsideDown:
                orientation = @"Portrait";
                break;
            case UIInterfaceOrientationLandscapeLeft:
            case UIInterfaceOrientationLandscapeRight:
                orientation = @"Landscape";
                break;
            default:
                break;
        }
        defaultImageName = [NSString stringWithFormat:@"%@-800-%@-736h",defaultImageName,orientation];
    }
    return [UIImage imageNamed:defaultImageName];
}





@end
