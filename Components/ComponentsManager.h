//
//  ComponentsManager.h
//  Components
//
//  Created by honey.vi on 16/4/24.
//  Copyright (c) 2016年 liunan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModuleAProtocol.h"
#import "ModuleBProtocol.h"

@interface ComponentsManager : NSObject

+ (instancetype)sharedInstance;

- (Class)componentClassWithProtocol:(Protocol *)protocol;
- (void)registerClass:(Class)class withProtocol:(Protocol *)protocol;

@end
