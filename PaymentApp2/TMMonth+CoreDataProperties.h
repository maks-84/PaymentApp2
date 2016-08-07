//
//  TMMonth+CoreDataProperties.h
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "TMMonth.h"

NS_ASSUME_NONNULL_BEGIN

@interface TMMonth (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *paymentMonth;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *coordinators;

@end

@interface TMMonth (CoreDataGeneratedAccessors)

- (void)addCoordinatorsObject:(NSManagedObject *)value;
- (void)removeCoordinatorsObject:(NSManagedObject *)value;
- (void)addCoordinators:(NSSet<NSManagedObject *> *)values;
- (void)removeCoordinators:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
