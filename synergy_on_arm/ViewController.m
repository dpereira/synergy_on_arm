//
//  ViewController.m
//  synergy_on_arm
//
//  Created by Diego Pereira on 11/21/15.
//  Copyright © 2015 Conflux. All rights reserved.
//

#import "ViewController.h"
#import <arch/Arch.h>
#import <base/EventQueue.h>
#import <base/Log.h>
#import <synergy/ServerApp.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Arch *a = new Arch();
    Log *l = new Log();
    
    NSLog(@"SYNERGY INIT START");
    EventQueue *e = new EventQueue();
    NSLog(@"QUEUE CREATED");
    ServerApp *app = new ServerApp(e, NULL);

    NSLog(@"SYNERGY INIT DONE");
    
    char* param = "synergy";
    char* argv[] =  { param };
    app->standardStartup(1, argv);
    
    NSLog(@"SYNERGY CLEAN EXIT");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
