/*
 * Hedgewars-iOS, a Hedgewars port for iOS devices
 * Copyright (c) 2009-2010 Vittorio Giovara <vittorio.giovara@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *
 * File created on 22/04/2010.
 */


#import <UIKit/UIKit.h>
#import "SDL_net.h"

@protocol MapConfigDelegate <NSObject>

-(void) buttonPressed:(id) sender;

@end


@interface MapConfigViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    id<MapConfigDelegate> delegate;
    
    TCPsocket sd, csd;
    NSInteger oldValue;  //slider
    NSInteger oldPage;   //segmented control
    BOOL busy;

    // objects read (mostly) by parent view
    NSInteger maxHogs;
    NSString *seedCommand;
    NSString *templateFilterCommand;
    NSString *mapGenCommand;
    NSString *mazeSizeCommand;
    NSString *themeCommand;
    NSString *staticMapCommand;

    // various widgets in the view
    UIButton *previewButton;
    UITableView *tableView;
    UILabel *maxLabel;
    UILabel *sizeLabel;
    UISegmentedControl *segmentedControl;
    UISlider *slider;

    // internal objects
    NSIndexPath *lastIndexPath;
    NSArray *themeArray;
    NSArray *mapArray;
}

@property (nonatomic,retain) id<MapConfigDelegate> delegate;

@property (nonatomic) NSInteger maxHogs;
@property (nonatomic) BOOL busy;
@property (nonatomic,retain) NSString *seedCommand;
@property (nonatomic,retain) NSString *templateFilterCommand;
@property (nonatomic,retain) NSString *mapGenCommand;
@property (nonatomic,retain) NSString *mazeSizeCommand;
@property (nonatomic,retain) NSString *themeCommand;
@property (nonatomic,retain) NSString *staticMapCommand;

@property (nonatomic,retain) IBOutlet UIButton *previewButton;
@property (nonatomic,retain) IBOutlet UITableView *tableView;
@property (nonatomic,retain) IBOutlet UILabel *maxLabel;
@property (nonatomic,retain) IBOutlet UILabel *sizeLabel;
@property (nonatomic,retain) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic,retain) IBOutlet UISlider *slider;

@property (nonatomic,retain) NSIndexPath *lastIndexPath;
@property (nonatomic,retain) NSArray *themeArray;
@property (nonatomic,retain) NSArray *mapArray;

-(IBAction) buttonPressed:(id) sender;

-(IBAction) mapButtonPressed;
-(IBAction) sliderChanged:(id) sender;
-(IBAction) sliderEndedChanging:(id) sender;
-(IBAction) segmentedControlChanged:(id) sender;

-(void) turnOnWidgets;
-(void) turnOffWidgets;
-(void) setLabelText:(NSString *)str;
-(void) setButtonImage:(UIImage *)img;
-(void) updatePreview;
-(void) updatePreviewWithMap:(NSInteger) index;

-(const uint8_t *)engineProtocol:(NSInteger) port;

@end