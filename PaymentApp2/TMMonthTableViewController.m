//
//  TMMonthTableViewController.m
//  PaymentApp2
//
//  Created by Mac on 07.08.16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "TMMonthTableViewController.h"

@interface TMMonthTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation TMMonthTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.calendar = [NSCalendar currentCalendar];
    
    self.mainTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetMaxX(self.view.bounds), CGRectGetMaxY(self.view.bounds)) style:UITableViewStylePlain];
    self.mainTable.delegate = self;
    self.mainTable.dataSource = self;
    
    [self.view addSubview:self.mainTable];
    
    self.navigationItem.title = @"Month";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSArray *) monthInPersistentStore {
    return [[TMDataManager sharedManager] getMonthInPersistentStore];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.monthInPersistentStore count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"cell"];
    }
    TMMonth *month = [self.monthInPersistentStore objectAtIndex:indexPath.row];
    cell.textLabel.text = month.paymentMonth;
    cell.detailTextLabel.text = @"detail text";
    return cell;
}

@end

