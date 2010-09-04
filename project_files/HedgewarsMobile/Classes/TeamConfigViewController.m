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
 * File created on 20/04/2010.
 */


#import "TeamConfigViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CommodityFunctions.h"
#import "HogButtonView.h"
#import "SquareButtonView.h"

@implementation TeamConfigViewController
@synthesize listOfTeams, listOfSelectedTeams, cachedContentsOfDir;

#define NUMBERBUTTON_TAG 123456
#define SQUAREBUTTON_TAG 654321
#define LABEL_TAG        456123

#pragma mark -
#pragma mark View lifecycle
-(void) viewDidLoad {
    [super viewDidLoad];

    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    self.view.frame = CGRectMake(0, 0, screenSize.height, screenSize.width - 44);
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        [self.tableView setBackgroundView:nil];
        self.view.backgroundColor = [UIColor clearColor];
        self.tableView.separatorColor = UICOLOR_HW_YELLOW_BODER;
    }
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    NSArray *contentsOfDir = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:TEAMS_DIRECTORY() error:NULL];
    // avoid overwriting selected teams when returning on this view
    if ([cachedContentsOfDir isEqualToArray:contentsOfDir] == NO) {
        // integer representation of various color (defined in SquareButtonView)
        NSUInteger colors[6] = { 4421353, 4100897, 10632635, 16749353, 14483456, 7566195 };
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[contentsOfDir count]];
        for (int i = 0; i < [contentsOfDir count]; i++) {
            NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                         [contentsOfDir objectAtIndex:i],@"team",
                                         [NSNumber numberWithInt:4],@"number",
                                         [NSNumber numberWithInt:colors[i%6]],@"color",nil];
            [array addObject:dict];
            [dict release];
        }
        self.listOfTeams = array;
        [array release];

        NSMutableArray *emptyArray = [[NSMutableArray alloc] initWithObjects:nil];
        self.listOfSelectedTeams = emptyArray;
        [emptyArray release];
        
        cachedContentsOfDir = [[NSArray alloc] initWithArray:contentsOfDir copyItems:YES];
    }
    [self.tableView reloadData];
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return rotationManager(interfaceOrientation);
}


#pragma mark -
#pragma mark Table view data source
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0)
        return [listOfSelectedTeams count] ;
    else
        return [listOfTeams count];
}

// Customize the appearance of table view cells.
-(UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier0 = @"Cell0";
    static NSString *CellIdentifier1 = @"Cell1";
    NSInteger section = [indexPath section];
    UITableViewCell *cell;

    if (section == 0) {
        cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier0];
        if (cell == nil) {
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier0] autorelease];

            UIButton *numberButton = [[HogButtonView alloc] initWithFrame:CGRectMake(12, 5, 88, 32)];
            numberButton.tag = NUMBERBUTTON_TAG;
            [cell addSubview:numberButton];
            [numberButton release];

            SquareButtonView *squareButton = [[SquareButtonView alloc] initWithFrame:CGRectMake(12+88+6, 5, 36, 36)];
            squareButton.tag = SQUAREBUTTON_TAG;
            [cell addSubview:squareButton];
            [squareButton release];

            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(12+88+6+36, 10, 103, 25)];
            label.textAlignment = UITextAlignmentLeft;
            label.minimumFontSize = 11;
            label.adjustsFontSizeToFitWidth = YES;
            label.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
            label.backgroundColor = [UIColor clearColor];
            label.font = [UIFont boldSystemFontOfSize:[UIFont labelFontSize]];
            label.textColor = UICOLOR_HW_YELLOW_TEXT;
            label.tag = LABEL_TAG;
            [cell.contentView addSubview:label];
            [label release];
        }

        NSMutableDictionary *selectedRow = [listOfSelectedTeams objectAtIndex:[indexPath row]];

        UILabel *cellLabel = (UILabel *)[cell viewWithTag:LABEL_TAG];
        cellLabel.text = [[selectedRow objectForKey:@"team"] stringByDeletingPathExtension];

        HogButtonView *numberButton = (HogButtonView *)[cell viewWithTag:NUMBERBUTTON_TAG];
        [numberButton drawManyHogs:[[selectedRow objectForKey:@"number"] intValue]];
        numberButton.ownerDictionary = selectedRow;

        SquareButtonView *squareButton = (SquareButtonView *)[cell viewWithTag:SQUAREBUTTON_TAG];
        [squareButton selectColor:[[selectedRow objectForKey:@"color"] intValue]];
        squareButton.ownerDictionary = selectedRow;
        
        NSString *teamPath = [NSString stringWithFormat:@"%@/%@",TEAMS_DIRECTORY(),[selectedRow objectForKey:@"team"]];
        NSDictionary *firstHog = [[[NSDictionary dictionaryWithContentsOfFile:teamPath] objectForKey:@"hedgehogs"] objectAtIndex:0];
        if ([[firstHog objectForKey:@"level"] intValue]> 0) {
            NSString *filePath = [NSString stringWithFormat:@"%@/cyborg.png",HATS_DIRECTORY()];
            UIImage *sprite = [[UIImage alloc] initWithContentsOfFile:filePath andCutAt:CGRectMake(0, 2, 32, 32)];
            UIImageView *spriteView = [[UIImageView alloc] initWithImage:sprite];
            [sprite release];
            
            cell.accessoryView = spriteView;
            [spriteView release];
        } else
            cell.accessoryView = nil;
    } else {
        cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier1];
        if (cell == nil)
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier1] autorelease];

        cell.textLabel.text = [[[listOfTeams objectAtIndex:[indexPath row]] objectForKey:@"team"] stringByDeletingPathExtension];
        cell.accessoryView = nil;
    }

    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        cell.textLabel.textColor = UICOLOR_HW_YELLOW_TEXT;
        cell.backgroundColor = [UIColor blackColor];
    }
    
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40.0;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *theLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * 80/100, 30)];
    theLabel.backgroundColor = [UIColor blueColor];
    if (section == 0) 
        theLabel.text = NSLocalizedString(@"Playing Teams",@"");
    else
        theLabel.text = NSLocalizedString(@"Available Teams",@"");
    theLabel.center = CGPointMake(self.view.frame.size.width/2, 20);
    theLabel.textColor = UICOLOR_HW_YELLOW_TEXT;
    theLabel.textAlignment = UITextAlignmentCenter;
    theLabel.font = [UIFont boldSystemFontOfSize:[UIFont labelFontSize]*80/100];
    theLabel.backgroundColor = UICOLOR_HW_DARKBLUE;
    
    [theLabel.layer setBorderWidth:1.5f];
    [theLabel.layer setBorderColor:[UICOLOR_HW_YELLOW_BODER CGColor]];
    [theLabel.layer setCornerRadius:8.0f];
    [theLabel.layer setMasksToBounds:YES];

    UIView *theView = [[[UIView alloc] init] autorelease];
    [theView addSubview:theLabel];
    [theLabel release];
    return theView;
}

/*
-(NSString *)tableView:(UITableView *)aTableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0)
        return NSLocalizedString(@"Playing Teams",@"");
    else
        return NSLocalizedString(@"Available Teams",@"");
}
*/

#pragma mark -
#pragma mark Table view delegate
-(void) tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = [indexPath row];
    NSInteger section = [indexPath section];

    if (section == 0) {
        [self.listOfTeams addObject:[self.listOfSelectedTeams objectAtIndex:row]];
        [self.listOfSelectedTeams removeObjectAtIndex:row];
    } else {
        [self.listOfSelectedTeams addObject:[self.listOfTeams objectAtIndex:row]];
        [self.listOfTeams removeObjectAtIndex:row];
    }
    [aTableView reloadData];
}


#pragma mark -
#pragma mark Memory management
-(void) didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    // Relinquish ownership any cached data, images, etc that aren't in use.
    self.cachedContentsOfDir = nil;
}

-(void) viewDidUnload {
    self.listOfTeams = nil;
    self.listOfSelectedTeams = nil;
    self.cachedContentsOfDir = nil;
    MSG_DIDUNLOAD();
    [super viewDidUnload];
}


-(void) dealloc {
    [listOfTeams release];
    [listOfSelectedTeams release];
    [cachedContentsOfDir release];
    [super dealloc];
}


@end
