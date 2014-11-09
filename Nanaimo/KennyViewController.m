//
//  KennyViewController.m
//  Nanaimo
//
//  Created by 박현민 on 2014. 10. 27..
//  Copyright (c) 2014년 KENNYSOFT. All rights reserved.
//

#import "KennyViewController.h"

@interface KennyViewController ()

@end

@implementation KennyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver: self
                           selector: @selector (onStickChanged:)
                               name: @"StickChanged"
                             object: nil];
    
    srand((unsigned)time(NULL));
    
    start = YES;
    
    remainDisplay.hidden = YES;
    
    obstacle1.hidden = YES;
    obstacle2.hidden = YES;
    
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top5.hidden = YES;
    
    Bot1.hidden = YES;
    Bot2.hidden = YES;
    Bot3.hidden = YES;
    Bot4.hidden = YES;
    Bot5.hidden = YES;
    Bot6.hidden = YES;
    
    Boss.hidden = YES;
    
    Bullet1.hidden = YES;
    Bullet2.hidden = YES;
    Bullet3.hidden = YES;
    Bullet4.hidden = YES;
    Bullet5.hidden = YES;
    
    JoyStick.hidden=YES;
    Congratulations.hidden=YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)Collision
{
    if(mode==1)
    {
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), obstacle1.frame) )
        {
            [self EndGame];
        }
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), obstacle2.frame) )
        {
            [self EndGame];
        }
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Top1.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Top2.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Top3.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Top4.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Top5.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Top6.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Bot1.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Bot2.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Bot3.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Bot4.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Bot5.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Bot6.frame) ) [self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20), Bot6.frame) ) [self EndGame];
    }
    if(mode==2)
    {
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20),CGRectMake(Bullet1.center.x,Bullet1.center.y,1,1)))[self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20),CGRectMake(Bullet2.center.x,Bullet2.center.y,1,1)))[self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20),CGRectMake(Bullet3.center.x,Bullet3.center.y,1,1)))[self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20),CGRectMake(Bullet4.center.x,Bullet4.center.y,1,1)))[self EndGame];
        if( CGRectIntersectsRect(CGRectMake(Plane.frame.origin.x+10,Plane.frame.origin.y+10,Plane.frame.size.width-20,Plane.frame.size.height-20),CGRectMake(Bullet5.center.x,Bullet5.center.y,1,1)))[self EndGame];
    }
}

- (void)EndGame
{
    if(mode==3)Plane.hidden = YES;
    [timer invalidate];
    
    [self performSelector:@selector(NewGame) withObject:nil afterDelay:3];
    
}

- (void)NewGame
{
    Bot1.hidden = YES;
    Bot2.hidden = YES;
    Bot3.hidden = YES;
    Bot4.hidden = YES;
    Bot5.hidden = YES;
    Bot6.hidden = YES;
    
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    
    Boss.hidden = YES;
    
    Bullet1.hidden = YES;
    Bullet2.hidden = YES;
    Bullet3.hidden = YES;
    Bullet4.hidden = YES;
    Bullet5.hidden = YES;
    
    obstacle1.hidden = YES;
    obstacle2.hidden = YES;
    
    Intro1.hidden = NO;
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    
    remainDisplay.hidden = YES;
    
    Congratulations.hidden=YES;
    
    Plane.hidden = NO;
    Plane.center = CGPointMake(40, 128);
    Plane.image = [UIImage imageNamed:@"airplane.png"];
    
    start = YES;
    
}

- (void)Move
{
    remainTime--;
    if(mode==1)[remainDisplay setText:[NSString stringWithFormat:@"%.2lf",remainTime/100.0]];
    else [remainDisplay setText:[NSString stringWithFormat:@"%d",remainWave]];
    if(remainTime<0)
    {
        if(mode==1)
        {
            obstacle1.hidden = YES;
            obstacle2.hidden = YES;
            
            Top1.hidden = YES;
            Top2.hidden = YES;
            Top3.hidden = YES;
            Top4.hidden = YES;
            Top5.hidden = YES;
            Top5.hidden = YES;
            
            Bot1.hidden = YES;
            Bot2.hidden = YES;
            Bot3.hidden = YES;
            Bot4.hidden = YES;
            Bot5.hidden = YES;
            Bot6.hidden = YES;
            
            Boss.hidden = NO;
            Boss.image = [UIImage imageNamed:@"nibelung1.png"];
            
            Bullet1.hidden = NO;
            Bullet2.hidden = NO;
            Bullet3.hidden = NO;
            Bullet4.hidden = NO;
            Bullet5.hidden = NO;
            Bullet1.image = [UIImage imageNamed:@"bullet1.png"];
            Bullet2.image = [UIImage imageNamed:@"bullet1.png"];
            Bullet3.image = [UIImage imageNamed:@"bullet1.png"];
            Bullet4.image = [UIImage imageNamed:@"bullet1.png"];
            Bullet5.image = [UIImage imageNamed:@"bullet1.png"];
            
            Bullet1.center=CGPointMake(277+rand()%61-30,80+rand()%61-30);
            Bullet2.center=CGPointMake(244+rand()%61-30,119+rand()%61-30);
            Bullet3.center=CGPointMake(234+rand()%61-30,167+rand()%61-30);
            Bullet4.center=CGPointMake(255+rand()%61-30,209+rand()%61-30);
            Bullet5.center=CGPointMake(285+rand()%61-30,244+rand()%61-30);
            
            remainWave=3;
            
            mode=2;
            
            modeBoss=1;
            
            //remainDisplay.hidden=YES;
        }
        Bullet1.center = CGPointMake(Bullet1.center.x - 1.1*modeBoss - dx, Bullet1.center.y - (0.3 * (1.1*modeBoss+dx))*modeBoss/modeBoss );
        Bullet2.center = CGPointMake(Bullet2.center.x - 1.1*modeBoss - dx, Bullet2.center.y - (0.15 * (1.1*modeBoss+dx))*modeBoss/modeBoss );
        Bullet3.center = CGPointMake(Bullet3.center.x - 1.1*modeBoss - dx, Bullet3.center.y );
        Bullet4.center = CGPointMake(Bullet4.center.x - 1.1*modeBoss - dx, Bullet4.center.y + (0.15 * (1.1*modeBoss+dx))*modeBoss/modeBoss );
        Bullet5.center = CGPointMake(Bullet5.center.x - 1.1*modeBoss - dx, Bullet5.center.y + (0.3 * (1.1*modeBoss+dx))*modeBoss/modeBoss );
        
        if(Bullet1.center.x<-50&&Bullet2.center.x<-50&&Bullet3.center.x<-50&&Bullet4.center.x<-50&&Bullet5.center.x<-50)
        {
            Bullet1.center=CGPointMake(277+rand()%61-30,80+rand()%61-30);
            Bullet2.center=CGPointMake(244+rand()%61-30,119+rand()%61-30);
            Bullet3.center=CGPointMake(234+rand()%61-30,167+rand()%61-30);
            Bullet4.center=CGPointMake(255+rand()%61-30,209+rand()%61-30);
            Bullet5.center=CGPointMake(285+rand()%61-30,244+rand()%61-30);
            remainWave--;
            if(remainWave==0&&modeBoss==1)
            {
                remainWave=5;
                Bullet1.image = [UIImage imageNamed:@"bullet2.png"];
                Bullet2.image = [UIImage imageNamed:@"bullet2.png"];
                Bullet3.image = [UIImage imageNamed:@"bullet2.png"];
                Bullet4.image = [UIImage imageNamed:@"bullet2.png"];
                Bullet5.image = [UIImage imageNamed:@"bullet2.png"];
                Boss.image = [UIImage imageNamed:@"nibelung2.png"];
                modeBoss=2;
            }
            else if(remainWave==0&&modeBoss==2)
            {
                remainWave=10;
                Bullet1.image = [UIImage imageNamed:@"bullet3.png"];
                Bullet2.image = [UIImage imageNamed:@"bullet3.png"];
                Bullet3.image = [UIImage imageNamed:@"bullet3.png"];
                Bullet4.image = [UIImage imageNamed:@"bullet3.png"];
                Bullet5.image = [UIImage imageNamed:@"bullet3.png"];
                Boss.image = [UIImage imageNamed:@"nibelung3.png"];
                modeBoss=3;
            }
            else if(remainWave==0&&modeBoss==3)
            {
                mode=3;
                Boss.hidden = YES;
                
                Bullet1.hidden = YES;
                Bullet2.hidden = YES;
                Bullet3.hidden = YES;
                Bullet4.hidden = YES;
                Bullet5.hidden = YES;
                
                Congratulations.hidden = NO;
                remainDisplay.hidden = YES;
                
                [self EndGame];
            }
        }
    }
    else
    {
        obstacle1.center = CGPointMake(obstacle1.center.x - 1.5 - dx, obstacle1.center.y );
        obstacle2.center = CGPointMake(obstacle2.center.x - 1.2 - dx, obstacle2.center.y );
        
        Top1.center = CGPointMake(Top1.center.x - 0.7 - dx, Top1.center.y );
        Top2.center = CGPointMake(Top2.center.x - 0.7 - dx, Top2.center.y );
        Top3.center = CGPointMake(Top3.center.x - 0.7 - dx, Top3.center.y );
        Top4.center = CGPointMake(Top4.center.x - 0.7 - dx, Top4.center.y );
        Top5.center = CGPointMake(Top5.center.x - 0.7 - dx, Top5.center.y );
        Top6.center = CGPointMake(Top6.center.x - 0.7 - dx, Top6.center.y );
        
        Bot1.center = CGPointMake(Bot1.center.x - 0.7 - dx, Bot1.center.y );
        Bot2.center = CGPointMake(Bot2.center.x - 0.7 - dx, Bot2.center.y );
        Bot3.center = CGPointMake(Bot3.center.x - 0.7 - dx, Bot3.center.y );
        Bot4.center = CGPointMake(Bot4.center.x - 0.7 - dx, Bot4.center.y );
        Bot5.center = CGPointMake(Bot5.center.x - 0.7 - dx, Bot5.center.y );
        Bot6.center = CGPointMake(Bot6.center.x - 0.7 - dx, Bot6.center.y );
        
        if( obstacle1.center.x < 0 ) obstacle1.center = CGPointMake(510, rand()%55 + 120);
        if( obstacle2.center.x < 0 ) obstacle2.center = CGPointMake(510, rand()%55 + 145);
        
        if( Top1.center.x < -50 ) Top1.center = CGPointMake(510, rand()%30-30);
        if( Top2.center.x < -50 ) Top2.center = CGPointMake(510, rand()%30-30);
        if( Top3.center.x < -50 ) Top3.center = CGPointMake(510, rand()%30-30);
        if( Top4.center.x < -50 ) Top4.center = CGPointMake(510, rand()%30-30);
        if( Top5.center.x < -50 ) Top5.center = CGPointMake(510, rand()%30-30);
        if( Top6.center.x < -50 ) Top6.center = CGPointMake(510, rand()%30-30);
        
        if( Bot1.center.x < -50 ) Bot1.center = CGPointMake(510, rand()%30+330);
        if( Bot2.center.x < -50 ) Bot2.center = CGPointMake(510, rand()%30+330);
        if( Bot3.center.x < -50 ) Bot3.center = CGPointMake(510, rand()%30+330);
        if( Bot4.center.x < -50 ) Bot4.center = CGPointMake(510, rand()%30+330);
        if( Bot5.center.x < -50 ) Bot5.center = CGPointMake(510, rand()%30+330);
        if( Bot6.center.x < -50 ) Bot6.center = CGPointMake(510, rand()%30+330);
    }
    
    Plane.center = CGPointMake(Plane.center.x, Plane.center.y + dy );
    
    [self Collision];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if( start == YES )
    {
        if(remainTime==0)remainTime = 18000;
        
        Intro1.hidden = YES;
        Intro2.hidden = YES;
        Intro3.hidden = YES;
        
        remainDisplay.hidden = NO;
        
        obstacle1.hidden = NO;
        obstacle2.hidden = NO;
        
        Top1.hidden = NO;
        Top2.hidden = NO;
        Top3.hidden = NO;
        Top4.hidden = NO;
        Top5.hidden = NO;
        Top5.hidden = NO;
        
        Bot1.hidden = NO;
        Bot2.hidden = NO;
        Bot3.hidden = NO;
        Bot4.hidden = NO;
        Bot5.hidden = NO;
        Bot6.hidden = NO;
        
        remainDisplay.hidden = NO;
        
        if(mode==3)mode=1;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(Move) userInfo:nil repeats:YES];
        start = NO;
        
        Top1.center = CGPointMake(50, rand()%30-30);
        Top2.center = CGPointMake(125, rand()%30-30);
        Top3.center = CGPointMake(211, rand()%30-30);
        Top4.center = CGPointMake(298, rand()%30-30);
        Top5.center = CGPointMake(376, rand()%30-30);
        Top6.center = CGPointMake(430, rand()%30-30);
        
        Bot1.center = CGPointMake(50, rand()%30+330);
        Bot2.center = CGPointMake(135, rand()%30+330);
        Bot3.center = CGPointMake(201, rand()%30+330);
        Bot4.center = CGPointMake(278, rand()%30+330);
        Bot5.center = CGPointMake(346, rand()%30+330);
        Bot6.center = CGPointMake(430, rand()%30+330);
        
        obstacle1.center = CGPointMake(421, rand()%55 + 120);
        obstacle2.center = CGPointMake(421, rand()%50 + 145);
        
        mode=1;
    }
    
    //y = -7;
    //Plane.image = [UIImage imageNamed:@"airplaneup.png"];
    CGPoint position = [[[touches allObjects] objectAtIndex:0] locationInView:self.view];
//    JoyStick.center=CGPointMake(self.view.frame.size.width-position.y,position.x);
    JoyStick.hidden=NO;
    JoyStick.center=position;
//    [super touchesBegan:touches withEvent:event];
    [JoyStick touchesBegan:touches withEvent:event];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [JoyStick touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    //y = 7;
    //Plane.image = [UIImage imageNamed:@"airplane.png"];
    [JoyStick touchesEnded:touches withEvent:event];
    JoyStick.hidden=YES;
    
    
}

- (void)onStickChanged:(id)notification
{
    NSDictionary *dict = [notification userInfo];
    NSValue *vdir = [dict valueForKey:@"dir"];
    CGPoint dir = [vdir CGPointValue];
    
    if(mode==1)
    {
        dx=1.5*dir.x;
        dy=1.5*dir.y;
    }
    else
    {
        dx=dir.x;
        dy=dir.y;
    }
    
    if(dy>0)Plane.image = [UIImage imageNamed:@"airplanedown.png"];
    else if(dy<0)Plane.image = [UIImage imageNamed:@"airplaneup.png"];
    else Plane.image = [UIImage imageNamed:@"airplane.png"];
}

@end
