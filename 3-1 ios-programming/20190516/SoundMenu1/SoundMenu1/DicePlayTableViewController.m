//
//  DicePlayTableViewController.m
//  SoundMenu1
//
//  Created by 502-08 on 16/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import "DicePlayTableViewController.h"
#import "DicePlayViewController.h"

@interface DicePlayTableViewController ()

@end

@implementation DicePlayTableViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"DicePlaySegue"]) {
        DicePlayViewController *dicePlayController = segue.destinationViewController;
        UITableViewCell *selectedCell = (UITableViewCell *)sender;
        [dicePlayController setText:[[selectedCell textLabel] text]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 6;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DiceCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if(indexPath.row == 0){
        [[cell textLabel] setText:[NSString stringWithFormat:@"Boing"]];
    }
    if(indexPath.row == 1){
        [[cell textLabel] setText:[NSString stringWithFormat:@"Indigo"]];
    }
    if(indexPath.row == 2){
        [[cell textLabel] setText:[NSString stringWithFormat:@"Laugh"]];
    }if(indexPath.row == 3){
        [[cell textLabel] setText:[NSString stringWithFormat:@"Monkey"]];
    }if(indexPath.row == 4){
        [[cell textLabel] setText:[NSString stringWithFormat:@"Single Click"]];
    }if(indexPath.row == 5){
        [[cell textLabel] setText:[NSString stringWithFormat:@"Uh oh"]];
    }
    return cell;
}
/*
 
 
 -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 static NSString *CellIdentifier = @"DiceCell";
 UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
 if(indexPath.row == 0){
 [[cell textLabel] setText:[NSString stringWithFormat:@"Boing"]];
 }
 if(indexPath.row == 1){
 [[cell textLabel] setText:[NSString stringWithFormat:@"Indigo"]];
 }
 if(indexPath.row == 2){
 [[cell textLabel] setText:[NSString stringWithFormat:@"Laugh"]];
 }if(indexPath.row == 3){
 [[cell textLabel] setText:[NSString stringWithFormat:@"Monkey"]];
 }if(indexPath.row == 4){
 [[cell textLabel] setText:[NSString stringWithFormat:@"Single Click"]];
 }if(indexPath.row == 5){
 [[cell textLabel] setText:[NSString stringWithFormat:@"Uh Oh"]];
 }
 return cell;
 }
 NSURL *path;
 path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Boing" ofType:@"aiff"]];
 AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Boing);
 path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Indigo" ofType:@"aiff"]];
 AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Indigo);
 path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Laugh" ofType:@"aiff"]];
 AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Laugh);
 path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Monkey" ofType:@"aiff"]];
 AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Monkey);
 path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Single Click" ofType:@"aiff"]];
 AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&single);
 path = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Uh oh" ofType:@"aiff"]];
 AudioServicesCreateSystemSoundID((__bridge CFURLRef)path,&Uh);
 
 
 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
