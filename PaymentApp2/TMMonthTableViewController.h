//
//  TMMonthTableViewController.h
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMDataManager.h"
#import "TMMonth.h"

@interface TMMonthTableViewController : UITableViewController

@property (strong, nonatomic) UITableView *mainTable;
@property (strong, nonatomic) NSCalendar *calendar;
@property (strong, nonatomic) NSArray *monthInPersistentStore;

@end
