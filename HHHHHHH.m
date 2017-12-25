//
//  HHHHHHH.m
//  xxxxx
//
//  Created by yuanjiang on 2017/11/29.
//  Copyright © 2017年 YuanJiang. All rights reserved.
//

#import "HHHHHHH.h"
#import "myCell.h"
@interface HHHHHHH ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property(nonatomic,strong) NSMutableArray *array;
@end

static NSString *cellID = @"mycellid";

@implementation HHHHHHH

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableview registerNib:[UINib nibWithNibName:@"myCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:cellID];
    
}
-(NSMutableArray *)array
{
    if (!_array) {
        _array = [NSMutableArray arrayWithObjects:@"1",@"3",@"1",@"4", nil];
    }
    return _array;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    myCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
//    cell = [[myCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
//    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击了cell");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
