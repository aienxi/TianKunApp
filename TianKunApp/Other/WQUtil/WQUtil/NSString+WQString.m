//
//  NSString+WQString.m
//  WQUtil
//
//  Created by seekmac002 on 2017/8/12.
//  Copyright © 2017年 swq. All rights reserved.
//

#import "NSString+WQString.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (WQString)
+ (NSString *) stringFromeDouble:(double)doubleValue decimalPlacesCount:(NSInteger) count {
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    NSString *positiveFormat = [NSString stringWithFormat:@"%@",@"#####0."];
    for (NSInteger i = 0; i<count; i++) {
        positiveFormat = [positiveFormat stringByAppendingString:@"0"];
    }
    [numberFormatter setPositiveFormat:positiveFormat];
    return [numberFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}
+ (NSString *) stringFromeFloat:(CGFloat)tfloat decimalPlacesCount:(NSInteger) count {
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    NSString *positiveFormat = [NSString stringWithFormat:@"%@",@"#####0."];
    for (NSInteger i = 0; i<count; i++) {
        positiveFormat = [positiveFormat stringByAppendingString:@"0"];
    }
    [numberFormatter setPositiveFormat:positiveFormat];
    return [numberFormatter stringFromNumber:[NSNumber numberWithFloat:tfloat]];
}

-(NSString *)stringToMD5{
    //1.首先将字符串转换成UTF-8编码, 因为MD5加密是基于C语言的,所以要先把字符串转化成C语言的字符串
    const char *fooData = [self UTF8String];
    
    //2.然后创建一个字符串数组,接收MD5的值
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    //3.计算MD5的值, 这是官方封装好的加密方法:把我们输入的字符串转换成16进制的32位数,然后存储到result中
    CC_MD5(fooData, (CC_LONG)strlen(fooData), result);
    /**
     第一个参数:要加密的字符串
     第二个参数: 获取要加密字符串的长度
     第三个参数: 接收结果的数组
     */
    
    //4.创建一个字符串保存加密结果
    NSMutableString *saveResult = [NSMutableString string];
    
    //5.从result 数组中获取加密结果并放到 saveResult中
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [saveResult appendFormat:@"%02x", result[i]];
    }
    /*
     x表示十六进制，%02X  意思是不足两位将用0补齐，如果多余两位则不影响
     NSLog("%02X", 0x888);  //888
     NSLog("%02X", 0x4); //04
     */
    return saveResult;
    
    
}
-(CGSize)boundingRectWithFont:(UIFont *)font maxSize:(CGSize)maxSize{
    
    
    NSDictionary *attributes = @{NSFontAttributeName:font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    
}
/**
 替换空指针为空字符串
 @return @""
 */
-(NSString *)stringReplaceNull{
    
    
    if (self == nil||[self isKindOfClass:[NSNull class]] ) {
        return @"";
    }else{
        
        return self;
    }
}

- (BOOL) isMobileNum {
    //    电信号段:133/149/153/173/177/180/181/189
    //    联通号段:130/131/132/145/155/156/171/175/176/185/186
    //    移动号段:134/135/136/137/138/139/147/150/151/152/157/158/159/178/182/183/184/187/188
    //    虚拟运营商:170
    
    NSString *phoneRegex = @"^((13[0-9])|(14[5|7])|(15[^4,\\D])|(18[0,0-9])|(17[0|6|7|8]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    
    return [phoneTest evaluateWithObject:self];
    
    
}
// 判断邮箱格式是否正确
-(BOOL)isAvailableEmail{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

/**
 *  计算富文本字体高度
 *
 *  @param lineSpeace 行高
 *  @param font       字体
 *  @param width      字体所占宽度
 *
 *  @return 富文本高度
 */
-(CGFloat)attriStrHeightwithSpeace:(CGFloat)lineSpeace withFont:(UIFont*)font withWidth:(CGFloat)width {
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    //    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    /** 行高 */
    paraStyle.lineSpacing = lineSpeace;
    // NSKernAttributeName字体间距
    NSDictionary *dic = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:@1.5f
                          };
    CGSize size = [self boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size.height;
}
-(NSMutableAttributedString *)attriStrRightWithimage:(UIImage *)image imageFrame:(CGRect)frame{

    NSMutableAttributedString * attriStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSTextAttachment *attchImage = [[NSTextAttachment alloc] init];
    // 表情图片
    attchImage.image = image;
    // 设置图片大小
    attchImage.bounds = frame;
    NSAttributedString *stringImage = [NSAttributedString attributedStringWithAttachment:attchImage];
    [attriStr insertAttributedString:stringImage atIndex:self.length];
    
    
    return attriStr;
    
}
/**
 返回一个左边带图片的富文本
 @return NSMutableAttributedString
 */

-(NSMutableAttributedString *)attriStrLeftWithimage:(UIImage *)image imageFrame:(CGRect)frame{
    NSMutableAttributedString * attriStr = [[NSMutableAttributedString alloc] initWithString:self];
    NSTextAttachment *attchImage = [[NSTextAttachment alloc] init];
    // 表情图片
    attchImage.image = image;
    // 设置图片大小
    attchImage.bounds = frame;
    NSAttributedString *stringImage = [NSAttributedString attributedStringWithAttachment:attchImage];
    [attriStr insertAttributedString:stringImage atIndex:0];
    
    
    return attriStr;
    
}
/**
 空字符串代替
 
 @return NSString
 */
-(NSString *)stringDeleteBlank{
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

/**
 去除掉首尾的空白字符和换行字

 @return <#return value description#>
 */
-(NSString *)stringTackOutBlankLine{
    NSString *str = self;
    
    str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; //去除掉首尾的空白字符和换行字符
    str = [str stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"\n" withString:@""];


    return str;
    
}
-(NSString *)stringTackOutBlank{
    NSString *str = self;
    
    str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; //去除掉首尾的空白字符和换行字符
    
    return str;
    
}




/**
 将后台传的秒数转换为日期格式
 
 
 @param num 后台返回的秒
 @return NSString
 */
+ (NSString *)timeReturnDate:(NSNumber *)num{
    
    NSString *str1=[NSString stringWithFormat:@"%@",num];
    
    int x=[[str1 substringToIndex:10] intValue];
    
    NSDate  *date1 = [NSDate dateWithTimeIntervalSince1970:x];
    
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
    
    [dateformatter setDateFormat:@"yyyy-MM-dd hh:mm"];
    
    return [dateformatter stringFromDate:date1];
    
}

@end