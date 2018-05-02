//
//  NSDataUtil.m
//  Test
//
//  Created by 阿杰 on 2018/4/4.


//  Copyright © 2018年 阿杰. All rights reserved.
//

#import "NSDataUtil.h"

@implementation NSDataUtil
+ (NSData *)createDataByFile:(NSString *)filePath{
    if (!filePath) {
        return nil;
    }
    NSData * data = [NSData dataWithContentsOfFile:filePath];
    return data;
}
+ (NSData *)createDataByPNG:(UIImage *)image{
    if (!image) {
        return nil;
    }
    NSData * data = UIImagePNGRepresentation(image);
    return data;
}
+ (NSData *)createDataByJPG:(UIImage *)image{
    if (!image) {
        return nil;
    }
    NSData * data = UIImageJPEGRepresentation(image, 1);
    return data;
}
+ (NSData *)createDataByString:(NSString *)string{
    if (!string) {
        return nil;
    }
    NSData * data = [string dataUsingEncoding:NSUTF8StringEncoding];
    return data;
}

+ (NSData *)createDataByInt32:(int32_t)number{
    return [NSData dataWithBytes:&number length:sizeof(number)];
}
+(int32_t)getInt32ByData:(NSData *)data{
    int32_t bytes;
    [data getBytes:&bytes length:sizeof(bytes)];
    return bytes;
}
@end
