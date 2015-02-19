//
//  echoKiller01ViewController.h
//  echoKiller01
//
//  Created by Claudia Oliva on 20/03/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MessageUI/MessageUi.h>

@interface echoKiller01ViewController : UIViewController{
    
    IBOutlet UIScrollView *scroll;
}

-(IBAction)SonidoBlue:(id)sender;
-(IBAction)SonidoOrange:(id)sender;
-(IBAction)SonidoCyan:(id)sender;
-(IBAction)SonidoGreen:(id)sender;
-(IBAction)SonidoPink:(id)sender;
-(IBAction)SonidoRed:(id)sender;
-(IBAction)SonidoSky:(id)sender;
-(IBAction)SonidoYellow:(id)sender;



@end
