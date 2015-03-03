//
//  AgregarTareaViewController.m
//  Ejercicio1
//
//  Created by Santiago Gonzalez Causse on 2/3/15.
//  Copyright (c) 2015 Santiago Gonzalez Causse. All rights reserved.
//

#import "AgregarTareaViewController.h"

@interface AgregarTareaViewController ()

@end

@implementation AgregarTareaViewController

@synthesize textNombre, textLugar, textDescripcion, padre;

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

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}

- (IBAction)pulsarBotonAceptar:(id)sender {
    if (![self.textNombre.text isEqualToString:@""] && ![self.textLugar.text isEqualToString:@""] && ![self.textDescripcion.text isEqualToString:@""]){
        NSDictionary *dic = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:self.textNombre.text, self.textLugar.text, self.textDescripcion.text, nil] forKeys:[NSArray arrayWithObjects:@"nombre", @"lugar", @"descripcion", nil]];
        [padre.tareas addObject:dic];
        [padre.tableView reloadData];
        [self dismissModalViewControllerAnimated:YES];
        
    }
}

- (IBAction)pulsarBotonCancelar:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
