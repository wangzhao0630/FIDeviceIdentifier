//
//  FIDeviceIdentifier.h
//  FIDeviceIdentifier
//
//  Created by flagadmin on 2019/6/17.
//  Copyright © 2019 flagadmin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FIDeviceIdentifier : NSObject

/**
  同步唯一设备标识 (生成并保存唯一设备标识,如已存在则不进行任何处理)
 @return 是否保存成功
 */
+ (BOOL)syncDeviceIdentifier;

/**
 返回唯一设备标识

 @return 设备标识
 */
+ (NSString *)deviceIdentifier;

/**
 是否是第一次安装应用

 @return yes or no
 */
+ (BOOL)isFirstInstall;

@end

NS_ASSUME_NONNULL_END
