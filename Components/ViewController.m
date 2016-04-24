//
//  ViewController.m
//  Components
//
//  Created by honey.vi on 16/4/24.
//  Copyright (c) 2016年 liunan. All rights reserved.
//

#import "ViewController.h"
#import "ComponentsManager.h"
#import "ModuleAProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Class classA = [[ComponentsManager sharedInstance] componentClassWithProtocol:@protocol(ModuleAProtocol)];
    id<ModuleAProtocol> moduleA = [[classA alloc] init];
    [moduleA funcA:@""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
