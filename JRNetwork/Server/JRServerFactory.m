//
//  JRServerFactory.m
//  JRAPIManage
//
//  Created by 姚俊任 on 2016/11/1.
//  Copyright © 2016年 yaojunren. All rights reserved.
//

#import "JRServerFactory.h"
//#import "RWAYuncunServer.h"

NSString * const kYuncunServerIdtifier = @"kRWAYuncunServerIdtifier";
@interface JRServerFactory()
@property(nonatomic,strong)NSCache *serviceStorage;
@end

@implementation JRServerFactory
#pragma mark - lift cycle
+ (instancetype)shareInstance{
    static JRServerFactory *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super alloc]init];
    });
    return instance;
}

#pragma mark - public method
- (JRBaseServer<JRServerProtocol> *)Server:(NSString *)serverIdentifier{
    if ([self.serviceStorage objectForKey:serverIdentifier] != nil) {
        return [self.serviceStorage objectForKey:serverIdentifier];
    }
    JRBaseServer *server = [self newServer:serverIdentifier];
    [self.serviceStorage setObject:server forKey:serverIdentifier];
    return server;
}
#pragma mark - private method
//- (JRBaseServer<JRServerProtocol> *)newServer:(NSString *)identifier{
//    if([kYuncunServerIdtifier isEqualToString:identifier]){
//        RWAYuncunServer *server = [[RWAYuncunServer alloc] init];
//        return server;
//    }
//    return nil;
//}
#pragma mark - getters and setters
- (NSCache *)serviceStorage
{
    if (_serviceStorage == nil) {
        _serviceStorage = [[NSCache alloc] init];
        _serviceStorage.countLimit = 5;
    }
    return _serviceStorage;
}
@end
