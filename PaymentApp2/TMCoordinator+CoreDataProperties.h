//
//  TMCoordinator+CoreDataProperties.h
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "TMCoordinator.h"

NS_ASSUME_NONNULL_BEGIN

@interface TMCoordinator (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *paymentAccepted;
@property (nullable, nonatomic, retain) NSString *phoneNumber;
@property (nullable, nonatomic, retain) TMMonth *paymentMonth;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *numbers;

@end

@interface TMCoordinator (CoreDataGeneratedAccessors)

- (void)addNumbersObject:(NSManagedObject *)value;
- (void)removeNumbersObject:(NSManagedObject *)value;
- (void)addNumbers:(NSSet<NSManagedObject *> *)values;
- (void)removeNumbers:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
