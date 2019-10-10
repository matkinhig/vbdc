
//
//  EditProfileView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/8/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "EditProfileView.h"

@interface EditProfileView () <UINavigationControllerDelegate ,UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgAvatar;
@end

@implementation EditProfileView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)ChoosePicture:(id)sender {
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"Edit profile" message:@"Chọn hình ảnh" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
        // Cancel button tappped.
//        [self dismissViewControllerAnimated:YES completion:^{
//        }];
    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Take the Photo" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        // Distructive button tapped.
        [self takePhoto];
    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Choose the Photo" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        // OK button tapped.
        [self choosePhoto];
    }]];
    
    // Present action sheet.
    [self presentViewController:actionSheet animated:YES completion:nil];
}

- (void) takePhoto {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

-(void) choosePhoto {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
       picker.delegate = self;
       picker.allowsEditing = YES;
       picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
       
       [self presentViewController:picker animated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info
{
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imgAvatar.image = chosenImage;
    
    [self dismissViewControllerAnimated:true completion:nil];
}


- (IBAction)dissmissView:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touch");
}


@end
