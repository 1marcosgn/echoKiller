//
//  echoKiller01ViewController.m
//  echoKiller01
//
//  Created by Claudia Oliva on 20/03/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "echoKiller01ViewController.h"

@interface echoKiller01ViewController ()

@end

@implementation echoKiller01ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"back.png"]];
    
    [super viewDidLoad];
	
    
    //Scroll_Principal
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake(50, 450)];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

/*
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
 {
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
 } else {
 return YES;
 }
 }
 */

#pragma mark - Metodos Sonido
-(IBAction)SonidoBlue:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"button-2", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
}
-(IBAction)SonidoOrange:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"alarma", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}
-(IBAction)SonidoCyan:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"93269^CARBRAKE", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}
-(IBAction)SonidoGreen:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"metalGun", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}
-(IBAction)SonidoPink:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"brake", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}
-(IBAction)SonidoRed:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"cellPhone", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}
-(IBAction)SonidoSky:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"laserGun", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}
-(IBAction)SonidoYellow:(id)sender{
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef;
    
    soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"police", CFSTR ("mp3"),NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
}

#pragma eMail - Envio de Correo

-(IBAction)mailIt {MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"echoKiller"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"correo@hotmail.com", nil];
    [picker setToRecipients:aReceptores];
    
    
    UIImage *roboPic = [UIImage imageNamed:@"butkiller.png"];
    NSData *imageData = UIImageJPEGRepresentation(roboPic, 1);
    [picker addAttachmentData:imageData mimeType:@"image/png" fileName:@"butkiller.png"];
    
    NSString *emailBody = @"...";
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}

-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}

@end
