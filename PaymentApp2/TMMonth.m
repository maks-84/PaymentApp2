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
    NSManagedObjectContext *context = [[TMDataManager sharedManager] managedObjectContext];
    
    for (int i = 0; i <10;i++) {
    
    TMMonth *newMonth = [NSEntityDescription insertNewObjectForEntityForName:@"TMMonth" inManagedObjectContext:context];
    newMonth.paymentMonth = @"hhhhh";
    [context save:nil];
    }
}

@end
