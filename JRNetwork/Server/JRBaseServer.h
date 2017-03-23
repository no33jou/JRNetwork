//
//  JRBaseServer.h
//  JRAPIManage
//
//  Created by 姚俊任 on 2016/11/1.
//  Copyright © 2016年 yaojunren. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol JRServerProtocol<NSObject>
//是否上线
@property(nonatomic,assign,readonly)BOOL isOnline;

@property (nonatomic, readonly) NSString *offlineBaseUrl;
@property (nonatomic, readonly) NSString *onlineBaseUrl;

@property (nonatomic, readonly) NSString *offlineVersion;
@property (nonatomic, readonly) NSString *onlineVersion;

@end

@interface JRBaseServer : NSObject

@property(nonatomic,assign)BOOL Online;
@property(nonatomic,copy,readonly)NSString *baseUrl;
@property(nonatomic,copy,readonly)NSString *version;

- (NSString *)getServerUrl;
@end
