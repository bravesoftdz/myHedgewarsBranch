//
//  WeaponSettingsViewController.m
//  HedgewarsMobile
//
//  Created by Vittorio on 19/04/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "WeaponSettingsViewController.h"
#import "CommodityFunctions.h"
#import "SingleWeaponViewController.h"

@implementation WeaponSettingsViewController
@synthesize listOfWeapons;

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return rotationManager(interfaceOrientation);
}

#pragma mark -
#pragma mark View lifecycle
-(void) viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Edit",@"from the weapon panel")
                                                                   style:UIBarButtonItemStyleBordered
                                                                  target:self
                                                                  action:@selector(toggleEdit:)];
    self.navigationItem.rightBarButtonItem = editButton;
    [editButton release];
    
}

-(void) viewWillAppear:(BOOL) animated {
    [super viewWillAppear:animated];
    
    NSArray *contentsOfDir = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:WEAPONS_DIRECTORY() error:NULL];
    NSMutableArray *array = [[NSMutableArray alloc] initWithArray:contentsOfDir copyItems:YES];
    self.listOfWeapons = array;
    [array release];
    
    [self.tableView reloadData];
}

// modifies the navigation bar to add the "Add" and "Done" buttons
-(void) toggleEdit:(id) sender {
    BOOL isEditing = self.tableView.editing;
    [self.tableView setEditing:!isEditing animated:YES];
    
    if (isEditing) {
        [self.navigationItem.rightBarButtonItem setTitle:NSLocalizedString(@"Edit",@"from the scheme panel")];
        [self.navigationItem.rightBarButtonItem setStyle: UIBarButtonItemStyleBordered];
        self.navigationItem.leftBarButtonItem = self.navigationItem.backBarButtonItem;
    } else {
        [self.navigationItem.rightBarButtonItem setTitle:NSLocalizedString(@"Done",@"from the scheme panel")];
        [self.navigationItem.rightBarButtonItem setStyle:UIBarButtonItemStyleDone];
        UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Add",@"from the scheme panel")
                                                                      style:UIBarButtonItemStyleBordered
                                                                     target:self
                                                                     action:@selector(addWeapon:)];
        self.navigationItem.leftBarButtonItem = addButton;
        [addButton release];
    }
}

-(void) addWeapon:(id) sender {
    NSString *fileName = [[NSString alloc] initWithFormat:@"Weapon %u.plist", [self.listOfWeapons count]];
    
    createWeaponNamed([fileName stringByDeletingPathExtension]);
    
    [self.listOfWeapons addObject:fileName];
    [fileName release];
    
    // order the array alphabetically, so schemes will keep their position
    [self.listOfWeapons sortUsingSelector:@selector(compare:)];
    
    [self.tableView reloadData];
}

#pragma mark -
#pragma mark Table view data source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listOfWeapons count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    NSUInteger row = [indexPath row]; 
    NSString *rowString = [[self.listOfWeapons objectAtIndex:row] stringByDeletingPathExtension]; 
    cell.textLabel.text = rowString; 
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

// delete the row and the file
-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger row = [indexPath row];
    
    NSString *schemeFile = [[NSString alloc] initWithFormat:@"%@/%@",WEAPONS_DIRECTORY(),[self.listOfWeapons objectAtIndex:row]];
    [[NSFileManager defaultManager] removeItemAtPath:schemeFile error:NULL];
    [schemeFile release];
    
    [self.listOfWeapons removeObjectAtIndex:row];
    [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

-(BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    if (![cell.textLabel.text isEqualToString:@"Default"]) 
        return YES;
    else
        return NO;
}

#pragma mark -
#pragma mark Table view delegate
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (childController == nil) {
        childController = [[SingleWeaponViewController alloc] initWithStyle:UITableViewStyleGrouped];
    }
    
    NSInteger row = [indexPath row];
    NSString *selectedWeaponFile = [self.listOfWeapons objectAtIndex:row];
    
    // this must be set so childController can load the correct plist
    childController.title = [selectedWeaponFile stringByDeletingPathExtension];
    [childController.tableView setContentOffset:CGPointMake(0,0) animated:NO];

    [self.navigationController pushViewController:childController animated:YES];
}


#pragma mark -
#pragma mark Memory management
-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    if (childController.view.superview == nil )
        childController = nil;
}

-(void) viewDidUnload {
    self.listOfWeapons = nil;
    childController = nil;
    [super viewDidUnload];
    MSG_DIDUNLOAD();
}


-(void) dealloc {
    [self.listOfWeapons release];
    [childController release];
    [super dealloc];
}


@end

