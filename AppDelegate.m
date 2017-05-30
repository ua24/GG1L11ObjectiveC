//
//  AppDelegate.m
//  GG1L11ObjectiveC
//
//  Created by Ivan Vasilevich on 5/29/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

#import "AppDelegate.h"



@interface AppDelegate () <UITabBarDelegate>

@property (strong, nonatomic) NSString *atom;

@end

@implementation AppDelegate

@synthesize atom = _atom;

//getter
- (NSString *)atom {
  return _atom;
}

- (void)setAtom:(NSString *)atom {
  _atom = atom;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//  NSMutableArray *objects = [[NSMutableArray alloc] init];
  NSMutableArray <NSString *>*objects = [NSMutableArray new];
  [objects addObject:@""];
//  wraper
  int a = 5;
  
  if (a) {
    NSLog(@"");
  }
  
  id cell = [UITableViewCell new];
//  int(cell)
  ((NSString *)cell).length;
  int b = (int)3.14;
  
  NSNumber *aNumber = [NSNumber numberWithInt:a];
  [objects addObject:@[@"1", @"2", aNumber, @256, @(a)]];
  [objects addObject:@{@"key": @"val"}];
  
  NSLog(@"%@", objects);
  [objects insertObject:@YES atIndex:2];
  NSLog(@"arr = %@, last = %@", objects, objects.lastObject);
  [objects addObject:@9];
  NSString *atom = @"a";
  self.atom = atom;
  [objects addObject:self.atom];
  [objects addObject:_atom];
  
  if ([[objects lastObject] isKindOfClass:[NSNumber class]]) {
    NSNumber *lastNubmer = objects.lastObject;
    NSLog(@"%@", lastNubmer);
  }
  
  for (id<UITableViewDelegate> str in objects) {
//    NSLog(@"%@", [str objeat]);
  }
  
  void (^blockName)(int, float) = ^(int a, float b) {
    NSLog(@"%d, %.2f", a, b);
  };
  blockName(5, 3.1345);
  
  NSString *de = @"de";
  de = [de stringByAppendingString:@"sol"];
  de = [de stringByAppendingFormat:@"%@", objects];
  [NSString stringWithFormat:@"%@ ", @"sddkajslkdhasjlhsd"];
  [@"" stringByAppendingFormat:@""];
  dispatch_async(dispatch_get_main_queue(), ^{
    
  });
  
  
  // Override point for customization after application launch.
  return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
