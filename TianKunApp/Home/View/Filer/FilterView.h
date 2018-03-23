//
//  FilterView.h
//  TianKunApp
//
//  Created by 天堃 on 2018/3/21.
//  Copyright © 2018年 天堃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterView : UIView
- (void)showFilterView;
- (void)hiddenFilterView;
- (BOOL)isShow;
- (BOOL)isShowWithAction;
- (void)reloadWithKey:(NSString *)key;

@end
