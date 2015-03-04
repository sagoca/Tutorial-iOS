//
//  AgregarViewController.m
//  Episodio13
//
//  Created by Santiago Gonzalez Causse on 4/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import "AgregarViewController.h"
#import <sqlite3.h>
#import "AppDelegate.h"

@interface AgregarViewController ()

@end

@implementation AgregarViewController
@synthesize textFieldNombre, textFieldDescripcion, textFieldPuntos;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)pulsarBotonInsertar:(id)sender {
    
    //la base de datos "nueva" se guarda en Macintosh HD/Usuarios/sangoncau/Librería/Developer/CoreSimulator/Devices/AC3EB357-733F-4034-9753-DD09C8CE2D0B/data/Containers/Data/Application/35386BF5-FEA5-4B17-B5A6-81A2F719E303/Library
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    sqlite3 *database;
    sqlite3_stmt *sentencia;
    
    if(sqlite3_open([appDelegate.dataBasePath UTF8String], &database) == SQLITE_OK){
        NSString *sql = [NSString stringWithFormat:@"insert into peliculas (\"nombre\", \"descripcion\", \"puntuacion\") VALUES (\"%@\", \"%@\", \"%i\")", self.textFieldNombre.text, self.textFieldDescripcion.text, [self.textFieldPuntos.text intValue]];
        if(sqlite3_prepare_v2(database, [sql UTF8String], -1, &sentencia, NULL) == SQLITE_OK){
            while(sqlite3_step(sentencia)==SQLITE_OK){
            }
        }else{
            NSLog(@"Error en la creación del insert");
        }
        sqlite3_finalize(sentencia);
    }else{
        NSLog(@"No se ha podido abrir la BD");
    }
    sqlite3_close(database);
}
@end
