//
//  NSString+MD5Hash.m
//  Code
//
//  Created by Jerry on 16/2/23.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "NSString+MD5Hash.h"
//加密算法的头文件
/*
 MD5 SHA224
 */
#import <CommonCrypto/CommonDigest.h>

/*
 加密内容，都是将内容类型进行扩展Category
 NSString *str = @"123";
 */
@implementation NSString (MD5Hash)

- (NSString *)md5 {
    //先判断自己是否为空，或者是否为空串
    if (!self || [self length] == 0) {
        return nil;
    }
    //输入内容
    const char *inputString = [self UTF8String];
    //输出内容         outputBuffer[16]
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    //将输入的字符串进行加密处理，并且把加密处理后的结果放到输出容器中
    //第一个参数 待加密数据， 第二个参数 字符串长度， 第三个参数 目标输出的容器
    CC_MD5(inputString, (unsigned int)strlen(inputString), outputBuffer);
    //将可编辑字符串申请
    NSMutableString *outputString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    //一个循环将解析加密后的内容填充进新的容器
    for (NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count ++) {
        [outputString appendFormat:@"%02X", outputBuffer[count]];
    }
    //返回解析的数据。
    return outputString;
}


#pragma mark - 32位 小写
+(NSString *)MD5ForLower32Bate:(NSString *)str{
    
    //要进行UTF8的转码
    const char* input = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02x", result[i]];
    }
    
    return digest;
}

#pragma mark - 32位 大写
+(NSString *)MD5ForUpper32Bate:(NSString *)str{
    
    //要进行UTF8的转码
    const char* input = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02X", result[i]];
    }
    
    return digest;
}

#pragma mark - 16位 大写
+(NSString *)MD5ForUpper16Bate:(NSString *)str{
    
    NSString *md5Str = [self MD5ForUpper32Bate:str];
    
    NSString *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}


#pragma mark - 16位 小写
+(NSString *)MD5ForLower16Bate:(NSString *)str{
    
    NSString *md5Str = [self MD5ForLower32Bate:str];
    
    NSString *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}



@end



















