//
//  TMDataManager.h
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface TMDataManager : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+(TMDataManager *)sharedManager;
-(NSUInteger) getMonthCountInPersistentStore;
-(NSArray *) getMonthInPersistentStore;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end
