//
//  ViewController.m
//  Episodio11
//
//  Created by Santiago Gonzalez Causse on 24/09/14.
//  Copyright (c) 2014 Santiago Gonzalez Causse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imagen;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pulsarBotonCamara:(id)sender {
    
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"Elige" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:@"BotonMolestia" otherButtonTitles:@"Cámara", @"Librería", nil];
    [sheet showInView:self.view];
}

- (IBAction)pulsarBotonSalvar:(id)sender {
    UIImageWriteToSavedPhotosAlbum(self.imagen.image, nil, nil, nil);
}

-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==1){
        [self iniciarCamara];
    }else if (buttonIndex==2){
        [self iniciarLibreria];
    }
}

-(void) iniciarLibreria{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    [pickerController setDelegate:self];
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        [pickerController setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    [self presentModalViewController:pickerController animated:YES];
}

-(void) iniciarCamara{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
    [pickerController setDelegate:self];
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        [pickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    [self presentModalViewController:pickerController animated:YES];
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self.imagen setImage:image];
    [self dismissModalViewControllerAnimated:YES];
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    NSLog(@"se ha cancelado el picker");
    [self dismissModalViewControllerAnimated:YES];
}
@end
