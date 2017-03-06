//
//  JRBaseServer.m
//  JRAPIManage
//
//  Created by 姚俊任 on 2016/11/1.
//  Copyright © 2016年 yaojunren. All rights reserved.
//

#import "JRBaseServer.h"
@interface JRBaseServer()
@property(nonatomic,weak)NSObject<JRServerProtocol> *child;
@end

@implementation JRBaseServer
#pragma mark - lift cycle
- (instancetype)init{
    self = [super init];
    if(self){
        if(![self conformsToProtocol:@protocol(JRServerProtocol)]){
            NSException *exc = [[NSException alloc]initWithName:@"ClassError" reason:@"子类必须遵守JRServerProtocol协议" userInfo:nil];
            @throw exc;
            return nil;
        }
        self.child = (NSObject<JRServerProtocol> *)self;
    }
    return self;
}

#pragma mark - public method
- (NSString *)baseUrl{
    return self.child.isOnline? self.child.onlineBaseUrl: self.child.offlineBaseUrl;
}
- (NSString *)version{
    return self.child.isOnline? self.child.onlineVersion: self.child.offlineVersion;
}
- (NSString *)getServerUrl{
    return [NSString stringWithFormat:@"%@%@",self.baseUrl,self.version];
}
@end
