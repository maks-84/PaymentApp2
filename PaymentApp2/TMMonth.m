//
//  TMMonth.m
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "TMMonth.h"

@implementation TMMonth

+ (void) createNewMonth {
  //  for (int i = 0 ; i < 10; i++) {

    NSManagedObjectContext *context = [[TMDataManager sharedManager] managedObjectContext];
    NSInteger monthCountInStore = [[TMDataManager sharedManager] getMonthCountInPersistentStore];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *newdate = [calendar dateByAddingUnit:NSCalendarUnitMonth value:monthCountInStore - 1 toDate:[NSDate date] options:nil];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MMMM / yyyy"];
    NSString *newMonthNamed = [formatter stringFromDate:newdate];
    
    
    TMMonth *newMonth = [NSEntityDescription insertNewObjectForEntityForName:@"TMMonth" inManagedObjectContext:context];
    newMonth.paymentMonth = newMonthNamed;
    [context save:nil];
  //  }

}

@end
