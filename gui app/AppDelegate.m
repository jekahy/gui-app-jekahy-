//
//  AppDelegate.m
//  gui app
//
//  Created by Жека Г on 2/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate{
    //NSMutableDictionary *dict;
}




@synthesize window = _window;

- (void)dealloc
{
    [super dealloc];
    

}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    addbutton.identifier=@"add";
    delbutton.identifier=@"del";  
    dict=[[NSMutableDictionary alloc]init];    
    [addbutton setTag:1000];
    [delbutton setTag:1001];
    [clearbutton setTag:999];
    [field setTag:1002];
    xy=1;
    yx=1;

}

-(IBAction)add:(id)sender{
    if([[view subviews] count]<24){
        
    
    if(xy>30){
        yx+=3;
        xy=1;
    }
    if(yx>25){
        yx=1.5;
        
    }
    NSRect frame=NSMakeRect(10*xy, 10*yx, 90, 40);
    
    NSButton *but=[[NSButton alloc]initWithFrame:frame]; 
    but.bezelStyle=NSRoundedBezelStyle;    
    NSString *title=[field stringValue]; 
    [view addSubview:but];        
    but.target=self;
    but.title=[NSString stringWithString:title];
    
            
    NSString *name=[[NSNumber numberWithInt:x]stringValue];
    but.identifier=name;
    [but setTag:x];
    
    [dict setValue:name forKey:title];
   
    NSLog(@"but identifier:%@",[dict valueForKey:title]);
    NSLog(@"add button with sender %@", [sender identifier]);
   
    x++;
    xy+=10;
    } else {
        NSAlert *alert=[[NSAlert alloc]init];
        [alert setMessageText:@"Too much buttons!"];
        [alert runModal];
    }

}

-(IBAction)del:(id)sender{
    
    NSString *name=[field stringValue];
    
    int tag=[[dict objectForKey:name] intValue];
    [[view viewWithTag:tag]setHidden:YES];
    NSButton *new=(NSButton*) [view viewWithTag:tag];    
    [new setHidden:YES];
    
    
    NSLog(@"del button with sender %@", sender);
    NSLog(@"but identifier:%@",[dict valueForKey:name]);
    


}

-(IBAction)clear:(id)sender{
    
    
    for(int i=0;i<[view subviews].count;i++){
        [[[view subviews]objectAtIndex:i]removeFromSuperview];
    }
    for(int i=0;i<[view subviews].count;i++){
        [[[view subviews]objectAtIndex:i]removeFromSuperview];
    }
    for(int i=0;i<[view subviews].count;i++){
        [[[view subviews]objectAtIndex:i]removeFromSuperview];
    }
   
}

@end
