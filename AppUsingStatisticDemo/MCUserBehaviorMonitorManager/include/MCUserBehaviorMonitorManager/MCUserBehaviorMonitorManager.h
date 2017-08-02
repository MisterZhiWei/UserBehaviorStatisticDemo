//
//  UserBehaviorMonitorManager.h
//  测试代码创建
//
//  Created by 刘志伟 on 2017/7/26.
//  Copyright © 2017年 micheal. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 日志发送策略
 */
typedef enum _MCLogSendStrategy {
    MCLogSendStrategyAppLaunch = 0,   //每次程序启动时发送（默认策略，推荐使用!）
    MCLogSendStrategyDay = 1,         //每天的程序第一次进入启动
    MCLogSendStrategyCustom = 2,      //根据设定的时间间隔发送
} MCLogSendStrategy;

/**
 慧点MAU移动应用统计接口
 当前版本 1.0.0
 */

@interface MCUserBehaviorMonitorManager : NSObject

/**
 获取统计对象的实例
 @return 一个统计对象实例
 */
+ (instancetype)shareManager;

/**
 初始化统计类及相关信息
 @param configuration 配置文件plis配置统计信息
 */
- (void)setupWithConfiguration:(NSDictionary *)configuration;

/**
 是否启用Crash日志收集
 默认值 YES
 */
@property (nonatomic, assign) BOOL enableExceptionLog;

/*
 是否只在Wifi网络下发送
 默认值 NO
 */
@property (nonatomic, assign) BOOL logSendWifiOnly;

/*
 日志发送时间间隔,单位为小时，有效值为1~24（发送策略为LogSendStrategyCustom时生效）
 默认值 1
 */
@property (nonatomic, assign) int  logSendInterval;

/**
 设置应用进入后台再回到前台为同一次启动的最大间隔时间，有效值范围0～600s
 例如设置值30s，则应用进入后台后，30s内唤醒为同一次启动
 默认值 30s
 */
@property (nonatomic) int sessionResumeInterval;

/**
 设置日志发送策略
 默认值 LogSendStrategyAppLaunch
 */
@property (nonatomic) MCLogSendStrategy logStrategy;




@end
