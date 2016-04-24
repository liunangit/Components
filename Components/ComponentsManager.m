//
//  ComponentsManager.m
//  Components
//
//  Created by honey.vi on 16/4/24.
//  Copyright (c) 2016年 liunan. All rights reserved.
//

#import "ComponentsManager.h"

@interface ComponentsManager ()

@property (nonatomic) NSMutableDictionary *dic;

@end

@implementation ComponentsManager

+ (instancetype)sharedInstance
{
    static ComponentsManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        sharedManager = [[ComponentsManager alloc] init];
    });
    return sharedManager;
}

- (id)init
{
    self = [super init];
    if (self) {
        _dic = [NSMutableDictionary dictionary];
    }
    return self;
}

- (Class)componentClassWithProtocol:(Protocol *)protocol
{
    return self.dic[NSStringFromProtocol(protocol)];
}

- (void)registerClass:(Class)class withProtocol:(Protocol *)protocol
{
    self.dic[NSStringFromProtocol(protocol)] = class;
}

@end
