//
//  RepYearView.m
//  RealmDemo
//
//  Created by lottak_mac2 on 16/7/20.
//  Copyright © 2016年 com.luohaifang. All rights reserved.
//

#import "RepYearView.h"

@interface RepYearView ()

@property (weak, nonatomic) IBOutlet UITextField *monthTextField;
@property (weak, nonatomic) IBOutlet UITextField *dayTextField;

@end

@implementation RepYearView

- (void)resetUI {
    [self endEditing:YES];
    self.monthTextField.text = @"1";
    self.dayTextField.text = @"1";
}
- (EKRecurrenceRule*)eKRecurrenceRule {
    NSInteger interval = self.monthTextField.text.integerValue;
    NSArray *days = @[@(self.dayTextField.text.integerValue)];
    EKRecurrenceRule *rule = [[EKRecurrenceRule alloc] initRecurrenceWithFrequency:EKRecurrenceFrequencyYearly interval:1 daysOfTheWeek:nil daysOfTheMonth:days monthsOfTheYear:@[@(interval)] weeksOfTheYear:nil daysOfTheYear:nil setPositions:nil end:nil];
    return rule;
}
@end
