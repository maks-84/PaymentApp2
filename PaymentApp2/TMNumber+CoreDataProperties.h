//
//  TMNumber+CoreDataProperties.h
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "TMNumber.h"

NS_ASSUME_NONNULL_BEGIN

@interface TMNumber (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *phoneNumber;
@property (nullable, nonatomic, retain) NSNumber *sum;
@property (nullable, nonatomic, retain) TMCoordinator *coordinator;

@end

NS_ASSUME_NONNULL_END
