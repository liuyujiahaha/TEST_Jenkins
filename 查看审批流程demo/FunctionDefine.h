//
//  FunctionDefine.h
//
//
//  Created by maz on 15/11/10.
//  Copyright © 2015年 mzh. All rights reserved.
//  一些inline函数的定义类

#ifndef FunctionDefine_h
#define FunctionDefine_h


/**
 *  NSUserDefaults 存数据
 *
 *  @param value 存数据的值
 *
 *  @param key 存数据的key
 */
CG_INLINE void UDSaveData(NSInteger value ,NSString *key)
{
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/**
 *  NSUserDefaults 取数据
 *
 *  @param key 取数据的key
 */
CG_INLINE NSInteger UDTakeData(NSString *key)
{
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}


#endif /* FunctionDefine_h */
