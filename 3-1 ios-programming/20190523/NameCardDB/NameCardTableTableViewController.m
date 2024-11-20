//
//  NameCardTableTableViewController.m
//  NameCardDB
//
//  Created by 502-08 on 23/05/2019.
//  Copyright © 2019 502-08. All rights reserved.
//

#import "NameCardTableTableViewController.h"
#import "NameCardViewController.h"
#import "AppDelegate.h"
#import "NCData.h"

@interface NameCardTableTableViewController ()

@end

@implementation NameCardTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *ncDelegate = [[UIApplication sharedApplication] delegate];
    [ncDelegate readNCdataFromDB];
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
    AppDelegate *ncDelegate=[[UIApplication sharedApplication] delegate];
#warning Incomplete implementation, return the number of rows
    return [[ncDelegate dbData] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    AppDelegate *ncDelegate = [[UIApplication sharedApplication] delegate];
    NCData *ncData = [[ncDelegate dbData] objectAtIndex:indexPath.row];
    cell.textLabel.text = ncData.ncName;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"showCard"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        AppDelegate *ncDelegate = [[UIApplication sharedApplication] delegate];
        NCData *ncData=[[ncDelegate dbData] objectAtIndex:indexPath.row];
        [[segue destinationViewController] setName:ncData.ncName];
        [[segue destinationViewController] setNo:ncData.ncNo];
        [[segue destinationViewController] setTel:ncData.ncTel];
    }
}


/*
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
