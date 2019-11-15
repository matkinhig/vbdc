//
//  ProfileView.m
//  1_iOSVietBank
//
//  Created by Lực Nguyễn  on 10/9/19.
//  Copyright © 2019 Lực Nguyễn . All rights reserved.
//

#import "ProfileView.h"
#import "EditPictureView.h"

@interface ProfileView ()
{
    EditPictureView * editView;
}
@property (weak, nonatomic) IBOutlet UILabel *lbAddress;


@end

@implementation ProfileView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   editView = [self.storyboard instantiateViewControllerWithIdentifier:@"EditPictureView"];
}

- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSArray * arrayWithStrings = [self.lbAddress.text componentsSeparatedByString:@","];
    NSLog(@"%@", self.lbAddress.text);
    NSLog(@"%i", arrayWithStrings.count);
    
}
- (IBAction)changeProfile:(id)sender {
    editView.tmpAddress = self.lbAddress.text;
    [self presentViewController:editView animated:true completion:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.lbAddress.text = editView.enteredText;
}


@end
