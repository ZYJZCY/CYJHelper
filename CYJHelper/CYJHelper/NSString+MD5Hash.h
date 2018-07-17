//
//  NSString+MD5Hash.h
//  Code
//
//  Created by Jerry on 16/2/23.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5Hash)
/**
 MD5加密
 */
- (NSString *)md5;
/**
 32位小写字母MD5加密
 */
+(NSString *)MD5ForLower32Bate:(NSString *)str;
/**
 32位大写字母MD5加密
 */
+(NSString *)MD5ForUpper32Bate:(NSString *)str;
/**
 16位大写字母MD5加密
 */
+(NSString *)MD5ForUpper16Bate:(NSString *)str;
/**
 16位小写字母MD5加密
 */
+(NSString *)MD5ForLower16Bate:(NSString *)str;

@end






