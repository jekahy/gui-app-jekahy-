//
//  AppDelegate.h
//  gui app
//
//  Created by Жека Г on 2/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    IBOutlet NSTextField *field;
    IBOutlet NSWindow *window;
    //IBOutlet NSView *view;
    IBOutlet NSButton *addbutton;
    IBOutlet NSButton *delbutton;   
    IBOutlet NSButton *clearbutton;
    NSMutableArray *array;
    NSMutableDictionary *dict;
    //NSButton *but;
    int x;
    int xy;
    float yx;
    IBOutlet NSView *view;
}


-(IBAction)add:(id)sender;
-(IBAction)del:(id)sender;
-(IBAction)clear:(id)sender;
-(id)addbutton:(id)sender;    
-(id)delbutton:(id)sender; 
-(IBAction)invisible:(id)sender;
@property (assign) IBOutlet NSWindow *window;



@end
