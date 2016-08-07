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
    
    UIBarButtonItem *addMonthButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addMonthAction:)];
    self.navigationItem.rightBarButtonItem = addMonthButton;
}

-(void) addMonthAction: (UIBarButtonItem *) barButton {

    [TMMonth createNewMonth];
    [self.mainTable reloadData];
    
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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    TMMonth *month = [self.monthInPersistentStore objectAtIndex:indexPath.row];
    cell.textLabel.text = month.paymentMonth;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%li coordinators", [month.coordinators count]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == [[TMDataManager sharedManager] getMonthCountInPersistentStore]-1)
    return UITableViewCellEditingStyleDelete;
    else return UITableViewCellEditingStyleNone;
}

@end

