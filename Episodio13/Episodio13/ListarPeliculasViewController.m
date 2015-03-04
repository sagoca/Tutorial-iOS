//
//  ListarPeliculasViewController.m
//  Episodio13
//
//  Created by Santiago Gonzalez Causse on 4/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import "ListarPeliculasViewController.h"
#import "AppDelegate.h"
#import <sqlite3.h>

@interface ListarPeliculasViewController (){
    NSMutableArray *peliculas;
}

@end

@implementation ListarPeliculasViewController
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    peliculas = [[NSMutableArray alloc] init];
    [self cargarPeliculas];
    [self.tableView reloadData];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [peliculas count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Cell";
    
    NSDictionary *dic = [peliculas objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [dic objectForKey:@"nombre"];
    
    return cell;
}

-(void) cargarPeliculas{
    AppDelegate *appDelegate = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    sqlite3 *database;
    sqlite3_stmt *sentencia;
    
    if(sqlite3_open([appDelegate.dataBasePath UTF8String], &database)==SQLITE_OK){
        NSString *sentenciaSQL = [NSString stringWithFormat:@"select * from peliculas"];
        if(sqlite3_prepare_v2(database, [sentenciaSQL UTF8String], -1, &sentencia, NULL) == SQLITE_OK){
            while(sqlite3_step(sentencia) == SQLITE_ROW){
                NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                NSString *nombre = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sentencia, 0)];
                [dic setValue:nombre forKey:@"nombre"];
                [peliculas addObject:dic];
            }
        }
        sqlite3_finalize(sentencia);
    }
    sqlite3_close(database);
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
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
