//
//  ViewController.m
//  LaunchDemo
//
//  Created by wxiao on 15/12/19.
//  Copyright © 2015年 wxiao. All rights reserved.
//

#import "ViewController.h"
#import "LaunchDemo.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView	*tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self setUpView];
}

- (void)setUpView {
	
	_tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
	_tableView.delegate = self;
	_tableView.dataSource = self;
	[self.view addSubview:_tableView];
}

#pragma mark - UItableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *cellID = @"reuseID";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
	if (!cell) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
	}
	cell.textLabel.text = [NSString stringWithFormat:@"Demo-%zd", indexPath.row];
	return cell;
}

#pragma mark - UItableDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	if (indexPath.row == 0) {
		[[LaunchDemo new] loadLaunchImage:@"launch1"
								 iconName:nil
							  appearStyle:JRApperaStyleNone
								  bgImage:@"STARTIMAGE.jpg"
								disappear:JRDisApperaStyleOne
						   descriptionStr:nil];
	} else if (indexPath.row == 1) {
		[[LaunchDemo new] loadLaunchImage:@"launch1"
								 iconName:nil
							  appearStyle:JRApperaStyleOne
								  bgImage:nil
								disappear:JRDisApperaStyleTwo
						   descriptionStr:nil];
	} else if (indexPath.row == 2) {
		[[LaunchDemo new] loadLaunchImage:@"launch1"
								 iconName:nil
							  appearStyle:JRApperaStyleOne
								  bgImage:nil
								disappear:JRDisApperaStyleLeft
						   descriptionStr:nil];
	} else if (indexPath.row == 3) {
		[[LaunchDemo new] loadLaunchImage:@"launch1"
								 iconName:nil
							  appearStyle:JRApperaStyleOne
								  bgImage:nil
								disappear:JRDisApperaStyleBottom
						   descriptionStr:nil];
	} else if (indexPath.row == 4) {
		[[LaunchDemo new] loadLaunchImage:@"launch1"
								 iconName:nil
							  appearStyle:JRApperaStyleOne
								  bgImage:nil
								disappear:JRDisApperaStyleTop
						   descriptionStr:nil];
	} else if (indexPath.row == 5) {
		[[LaunchDemo new] loadLaunchImage:@"launch1"
								 iconName:nil
							  appearStyle:JRApperaStyleOne
								  bgImage:@"def"
								disappear:JRDisApperaStyleLeft
						   descriptionStr:nil];
	}
	
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
	return 0.1;
}

@end
