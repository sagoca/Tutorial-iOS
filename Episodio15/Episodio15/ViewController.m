//
//  ViewController.m
//  Episodio15
//
//  Created by Santiago Gonzalez Causse on 5/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *peliculas;
    NSMutableArray *peliculasSel;
}

@end

@implementation ViewController

@synthesize searchBar, tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    peliculas = [[NSMutableArray alloc] init];
    peliculasSel = [[NSMutableArray alloc] init];
    
    [peliculas addObject:@"Titanic"];
    [peliculas addObject:@"Star Wars I: La Amenaza Fantasma"];
    [peliculas addObject:@"Babe, el cerdito valiente"];
    [peliculas addObject:@"127 horas"];
    [peliculas addObject:@"The Artist"];
    [peliculas addObject:@"Aqui viene Condemor"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.searchBar resignFirstResponder];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [peliculasSel count];
}

-(void) searchBar:(UISearchBar *) searchBar textDidChange:(NSString *)text{
    [peliculasSel removeAllObjects];
    for (int i =0; i<[peliculas count]; i++) {
        NSRange nameRange = [[peliculas objectAtIndex:i] rangeOfString:text options:NSCaseInsensitiveSearch];
        if(nameRange.location != NSNotFound){
            [peliculasSel addObject:[peliculas objectAtIndex:i]];
        }
    }
    [self.tableView reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [peliculasSel objectAtIndex:indexPath.row];
    
    return cell;
}



@end
