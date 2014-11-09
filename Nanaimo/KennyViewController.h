//
//  KennyViewController.h
//  Nanaimo
//
//  Created by 박현민 on 2014. 10. 27..
//  Copyright (c) 2014년 KENNYSOFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JoyStickView.h"

@interface KennyViewController : UIViewController
{
    IBOutlet UILabel *Intro1;
    IBOutlet UILabel *Intro2;
    IBOutlet UILabel *Intro3;
    
    IBOutlet UILabel *remainDisplay;
    
    IBOutlet UIImageView *Plane;
    
    NSTimer *timer;
    
    IBOutlet UIImageView *obstacle1;
    IBOutlet UIImageView *obstacle2;
    
    IBOutlet UIImageView *Top1;
    IBOutlet UIImageView *Top2;
    IBOutlet UIImageView *Top3;
    IBOutlet UIImageView *Top4;
    IBOutlet UIImageView *Top5;
    IBOutlet UIImageView *Top6;
    
    IBOutlet UIImageView *Bot1;
    IBOutlet UIImageView *Bot2;
    IBOutlet UIImageView *Bot3;
    IBOutlet UIImageView *Bot4;
    IBOutlet UIImageView *Bot5;
    IBOutlet UIImageView *Bot6;
    
    IBOutlet UIImageView *Boss;
    
    IBOutlet UIImageView *Bullet1;
    IBOutlet UIImageView *Bullet2;
    IBOutlet UIImageView *Bullet3;
    IBOutlet UIImageView *Bullet4;
    IBOutlet UIImageView *Bullet5;
    
    IBOutlet JoyStickView *JoyStick;
    
    IBOutlet UIImageView *Congratulations;
    
    double dx, dy;
    int pos, remainTime, mode, remainWave, modeBoss;
    BOOL start;
}

-(void)Move;
-(void)EndGame;
-(void)NewGame;
-(void)Collision;

@end
