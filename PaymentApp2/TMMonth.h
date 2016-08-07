//
//  TMMonth.h
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "TMDataManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface TMMonth : NSManagedObject

+ (void) createNewMonth;
+ (void) deleteLastMonthFromPercistentStore;

@end

NS_ASSUME_NONNULL_END

#import "TMMonth+CoreDataProperties.h"
