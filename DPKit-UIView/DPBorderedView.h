//
// Created by Dani Postigo on 4/28/14.
//

#import <Foundation/Foundation.h>

@interface DPBorderedView : UIView {

    UIColor *borderColor;
    CGFloat borderWidth;
    UIRectEdge borderOptions;

}

@property(nonatomic) UIRectEdge borderOptions;
@property(nonatomic) CGFloat borderWidth;
@property(nonatomic, retain) UIColor *borderColor;
@end