//
//  AppDelegate.h
//  ObjectiveCUnitTest
//
//  Created by Narongwate Sangsakul on 1/5/2560 BE.
//  Copyright © 2560 goffity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

