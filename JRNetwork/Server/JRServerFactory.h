//
//  JRServerFactory.h
//  JRAPIManage
//
//  Created by 姚俊任 on 2016/11/1.
//  Copyright © 2016年 yaojunren. All rights reserved.
//

#import <Foundation/Foundation.h>
@class JRBaseServer;
@interface JRServerFactory : NSObject
+ (instancetype)shareInstance;

- (JRBaseServer<JRServerProtocol> *)Server:(NSString *)serverIdentifier;
@end
