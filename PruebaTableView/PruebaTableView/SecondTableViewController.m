//
//  SecondTableViewController.m
//  PruebaTableView
//
//  Created by Santiago Gonzalez Causse on 19/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController{
    NSArray *dogs;
    NSArray *cats;
    NSArray *frogs;
    NSArray *gnats;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    dogs = [NSArray arrayWithObjects:@"Golden Retriever",@"Lab",@"Pit Bull",@"Boxer",@"Yorkie",nil];
    cats = [NSArray arrayWithObjects:@"Scrub 1",@"Scrub 2",@"Meani",@"Sir Licksalot",nil];
    frogs = [NSArray arrayWithObjects:@"Slime 1",@"Slime 2",@"Slime 3",nil];
    gnats = [NSArray arrayWithObjects:@"Fly",@"Buzz",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSInteger res;
    if ([_animalName isEqualToString:@"Dogs"]) {
        res= [dogs count];
    } else if([_animalName isEqualToString:@"Cats"]){
        res= [cats count];
    } else if([_animalName isEqualToString:@"Frogs"]){
        res= [frogs count];
    } else if ([_animalName isEqualToString:@"Gnats"]){
        res= [gnats count];
    }
    return res;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Animal2Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    if ([_animalName isEqualToString:@"Dogs"]) {
        cell.textLabel.text = [dogs objectAtIndex:indexPath.row];
    } else if([_animalName isEqualToString:@"Cats"]){
        cell.textLabel.text = [cats objectAtIndex:indexPath.row];
    } else if([_animalName isEqualToString:@"Frogs"]){
        cell.textLabel.text = [frogs objectAtIndex:indexPath.row];
    } else if ([_animalName isEqualToString:@"Gnats"]){
        cell.textLabel.text = [gnats objectAtIndex:indexPath.row];
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
